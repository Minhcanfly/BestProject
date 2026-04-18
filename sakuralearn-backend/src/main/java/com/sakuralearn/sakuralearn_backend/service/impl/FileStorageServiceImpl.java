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
                // Setting bucket policy to public readable is usually needed here, 
                // but omitted for simplicity. We assume bucket is already configured.
            }

            String objectName = (folder != null && !folder.isEmpty()) ? folder + "/" + fileName : fileName;

            minioClient.putObject(PutObjectArgs.builder()
                    .bucket(bucketName)
                    .object(objectName)
                    .stream(inputStream, size, -1)
                    .contentType(contentType)
                    .build());

            return minioUrl + "/" + bucketName + "/" + objectName;
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
}
