package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.response.EnrollmentResponse;
import com.sakuralearn.sakuralearn_backend.entity.Enrollment;
import java.util.List;
import java.util.UUID;

public interface EnrollmentService {
    EnrollmentResponse enrollInCourse(UUID userId, UUID courseId);
    List<EnrollmentResponse> getMyEnrollments(UUID userId);
    boolean isEnrolled(UUID userId, UUID courseId);
    EnrollmentResponse getEnrollmentStatus(UUID userId, UUID courseId);
    void unenroll(UUID userId, UUID courseId);
}
