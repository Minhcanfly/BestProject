package com.sakuralearn.sakuralearn_backend.service;

import org.springframework.web.multipart.MultipartFile;
import java.io.InputStream;

public interface FileStorageService {
    String uploadFile(MultipartFile file, String folder);
    String uploadFile(InputStream inputStream, String fileName, String contentType, long size, String folder);
    void deleteFile(String fileUrl);
}
