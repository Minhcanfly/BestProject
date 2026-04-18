package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonRequest;
import com.sakuralearn.sakuralearn_backend.service.LessonService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/courses/{courseId}/lessons")
@RequiredArgsConstructor
public class LessonController {

    private final LessonService lessonService;

    @GetMapping
    public ResponseEntity<?> getLessonsByCourse(@PathVariable UUID courseId) {
        return ResponseEntity.ok(lessonService.getLessonsByCourse(courseId));
    }

    @PostMapping
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> createLesson(
            @PathVariable UUID courseId,
            @ModelAttribute LessonRequest request,
            @RequestPart(value = "video", required = false) MultipartFile video) {
        return ResponseEntity.ok(lessonService.createLesson(courseId, request, video));
    }
}
