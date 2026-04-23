package com.sakuralearn.sakuralearn_backend.service;

import io.minio.StatObjectResponse;
import org.springframework.web.multipart.MultipartFile;
import java.io.InputStream;

public interface FileStorageService {
    String uploadFile(MultipartFile file, String folder);
    String uploadFile(InputStream inputStream, String fileName, String contentType, long size, String folder);
    void deleteFile(String fileUrl);
    InputStream getFileStream(String objectName);
    InputStream getFileStream(String objectName, long offset, long length);
    StatObjectResponse getFileStat(String objectName);
}
