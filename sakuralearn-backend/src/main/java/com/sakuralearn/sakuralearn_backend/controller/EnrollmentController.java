package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.response.EnrollmentResponse;
import com.sakuralearn.sakuralearn_backend.entity.Enrollment;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.EnrollmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/enrollments")
@RequiredArgsConstructor
public class EnrollmentController {

    private final EnrollmentService enrollmentService;

    @PostMapping("/course/{courseId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<EnrollmentResponse> enrollInCourse(
            @PathVariable UUID courseId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(enrollmentService.enrollInCourse(userDetails.getId(), courseId));
    }

    @GetMapping("/my")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<List<EnrollmentResponse>> getMyEnrollments(
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(enrollmentService.getMyEnrollments(userDetails.getId()));
    }

    @GetMapping("/check/{courseId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<Boolean> checkEnrollment(
            @PathVariable UUID courseId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(enrollmentService.isEnrolled(userDetails.getId(), courseId));
    }
}
