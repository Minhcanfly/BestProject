package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.service.FileStorageService;
import io.minio.StatObjectResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.ResourceRegion;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.HandlerMapping;
import java.io.IOException;
import java.io.InputStream;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/media")
@RequiredArgsConstructor
public class MediaController {

    private final FileStorageService fileStorageService;

    @GetMapping("/**")
    public ResponseEntity<?> streamVideo(
            HttpServletRequest request,
            @RequestHeader HttpHeaders headers) throws IOException {

        String path = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        String objectName = path.replace("/api/v1/media/", "");
        
        StatObjectResponse stat = fileStorageService.getFileStat(objectName);
        if (stat == null) return ResponseEntity.notFound().build();

        long contentLength = stat.size();
        String contentType = stat.contentType();

        if (headers.getRange().isEmpty()) {
            return ResponseEntity.ok()
                    .contentType(MediaType.parseMediaType(contentType))
                    .contentLength(contentLength)
                    .body(new InputStreamResource(fileStorageService.getFileStream(objectName)));
        }

        HttpRange range = headers.getRange().get(0);
        long start = range.getRangeStart(contentLength);
        long end = range.getRangeEnd(contentLength);
        long rangeLength = end - start + 1;
        
        // Limit range length to avoid memory issues (e.g., 5MB per chunk)
        long chunkSize = Math.min(rangeLength, 1024 * 1024 * 5); 
        long actualEnd = start + chunkSize - 1;

        InputStream stream = fileStorageService.getFileStream(objectName, start, chunkSize);
        
        return ResponseEntity.status(HttpStatus.PARTIAL_CONTENT)
                .contentType(MediaType.parseMediaType(contentType))
                .header(HttpHeaders.CONTENT_RANGE, "bytes " + start + "-" + actualEnd + "/" + contentLength)
                .contentLength(chunkSize)
                .body(new InputStreamResource(stream));
    }
}
