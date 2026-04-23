package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.service.FileStorageService;
import io.minio.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.UUID;

@Slf4j
@Service
@RequiredArgsConstructor
public class FileStorageServiceImpl implements FileStorageService {

    private final MinioClient minioClient;

    @Value("${app.minio.bucket-name}")
    private String bucketName;

    @Value("${app.minio.url}")
    private String minioUrl;

    @Override
    public String uploadFile(MultipartFile file, String folder) {
        try {
            String originalFilename = file.getOriginalFilename();
            String extension = originalFilename != null && originalFilename.contains(".")
                    ? originalFilename.substring(originalFilename.lastIndexOf("."))
                    : "";
            String fileName = UUID.randomUUID() + extension;
            
            return uploadFile(file.getInputStream(), fileName, file.getContentType(), file.getSize(), folder);
        } catch (Exception e) {
            log.error("Error occurred while uploading file to MinIO", e);
            throw new RuntimeException("Failed to upload file");
        }
    }

    @Override
    public String uploadFile(InputStream inputStream, String fileName, String contentType, long size, String folder) {
        try {
            boolean isExist = minioClient.bucketExists(BucketExistsArgs.builder().bucket(bucketName).build());
            if (!isExist) {
                minioClient.makeBucket(MakeBucketArgs.builder().bucket(bucketName).build());
            }

            // Always ensure bucket policy is set to public readable for avatars and course media
            String config = "{\n" +
                    "  \"Version\": \"2012-10-17\",\n" +
                    "  \"Statement\": [\n" +
                    "    {\n" +
                    "      \"Effect\": \"Allow\",\n" +
                    "      \"Principal\": \"*\",\n" +
                    "      \"Action\": \"s3:GetObject\",\n" +
                    "      \"Resource\": \"arn:aws:s3:::" + bucketName + "/*\"\n" +
                    "    }\n" +
                    "  ]\n" +
                    "}";
            minioClient.setBucketPolicy(SetBucketPolicyArgs.builder().bucket(bucketName).config(config).build());

            String objectName = (folder != null && !folder.isEmpty()) ? folder + "/" + fileName : fileName;

            minioClient.putObject(PutObjectArgs.builder()
                    .bucket(bucketName)
                    .object(objectName)
                    .stream(inputStream, size, -1)
                    .contentType(contentType)
                    .build());

            return "http://localhost:8080/api/v1/media/" + objectName;
        } catch (Exception e) {
            log.error("Error uploading to MinIO", e);
            throw new RuntimeException("Error uploading file: " + e.getMessage());
        }
    }

    @Override
    public void deleteFile(String fileUrl) {
        if (fileUrl == null || !fileUrl.startsWith(minioUrl + "/" + bucketName + "/")) {
            return; // Not a managed URL
        }
        
        try {
            String objectName = fileUrl.replace(minioUrl + "/" + bucketName + "/", "");
            minioClient.removeObject(RemoveObjectArgs.builder()
                    .bucket(bucketName)
                    .object(objectName)
                    .build());
        } catch (Exception e) {
            log.error("Error deleting file from MinIO", e);
        }
    }

    @Override
    public InputStream getFileStream(String objectName) {
        try {
            return minioClient.getObject(GetObjectArgs.builder()
                    .bucket(bucketName)
                    .object(objectName)
                    .build());
        } catch (Exception e) {
            log.error("Error getting file stream from MinIO", e);
            return null;
        }
    }

    @Override
    public InputStream getFileStream(String objectName, long offset, long length) {
        try {
            return minioClient.getObject(GetObjectArgs.builder()
                    .bucket(bucketName)
                    .object(objectName)
                    .offset(offset)
                    .length(length)
                    .build());
        } catch (Exception e) {
            log.error("Error getting file range stream from MinIO", e);
            return null;
        }
    }

    @Override
    public StatObjectResponse getFileStat(String objectName) {
        try {
            return minioClient.statObject(StatObjectArgs.builder()
                    .bucket(bucketName)
                    .object(objectName)
                    .build());
        } catch (Exception e) {
            log.error("Error getting file stat from MinIO", e);
            return null;
        }
    }
}
