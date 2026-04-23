package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockProgressRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonBlockProgressResponse;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonProgressResponse;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.ProgressService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/progress")
@RequiredArgsConstructor
public class ProgressController {

    private final ProgressService progressService;

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

    // New API for Module 3
    @PatchMapping("/blocks/{blockId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<LessonBlockProgressResponse> updateBlockProgress(
            @PathVariable UUID blockId,
            @RequestBody LessonBlockProgressRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(progressService.updateBlockProgress(userDetails.getId(), blockId, request));
    }

    @GetMapping("/lessons/{lessonId}/blocks")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<List<LessonBlockProgressResponse>> getLessonBlocksProgress(
            @PathVariable UUID lessonId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(progressService.getLessonBlocksProgress(userDetails.getId(), lessonId));
    }

    @PostMapping("/lessons/{lessonId}/complete")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> completeLesson(
            @PathVariable UUID lessonId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        progressService.completeLesson(userDetails.getId(), lessonId);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/course/{courseId}/completed-lessons")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<List<UUID>> getCompletedLessonIds(
            @PathVariable UUID courseId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(progressService.getCompletedLessonIds(userDetails.getId(), courseId));
    }
}
