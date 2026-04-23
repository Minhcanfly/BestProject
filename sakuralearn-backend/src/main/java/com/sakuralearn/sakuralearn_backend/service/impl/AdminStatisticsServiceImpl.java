package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.response.AdminDashboardResponse;
import com.sakuralearn.sakuralearn_backend.repository.CourseRepository;
import com.sakuralearn.sakuralearn_backend.repository.EnrollmentRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.service.AdminStatisticsService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
@RequiredArgsConstructor
public class AdminStatisticsServiceImpl implements AdminStatisticsService {

    private final UserRepository userRepository;
    private final CourseRepository courseRepository;
    private final EnrollmentRepository enrollmentRepository;

    @Override
    public AdminDashboardResponse getSummaryStatistics() {
        return AdminDashboardResponse.builder()
                .totalUsers(userRepository.count())
                .activeUsers(userRepository.countByIsActiveTrue())
                .totalCourses(courseRepository.count())
                .totalEnrollments(enrollmentRepository.count())
                .totalRevenue(BigDecimal.ZERO) // Module 6 not yet implemented
                .pendingReviews(0) // Module 5 not yet implemented
                .build();
    }
}
