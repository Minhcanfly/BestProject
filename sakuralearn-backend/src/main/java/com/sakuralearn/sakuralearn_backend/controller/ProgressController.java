package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.response.LessonProgressResponse;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.ProgressService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/v1/progress")
@RequiredArgsConstructor
public class ProgressController {

    private final ProgressService progressService;

    @PatchMapping("/lessons/{lessonId}/complete")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<LessonProgressResponse> completeLesson(
            @PathVariable UUID lessonId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(progressService.completeLesson(userDetails.getId(), lessonId));
    }

    @PatchMapping("/lessons/{lessonId}/access")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> updateAccess(
            @PathVariable UUID lessonId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        progressService.updateLastAccessed(userDetails.getId(), lessonId);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/course/{courseId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<Double> getCourseProgress(
            @PathVariable UUID courseId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(progressService.getCourseProgress(userDetails.getId(), courseId));
    }
}
