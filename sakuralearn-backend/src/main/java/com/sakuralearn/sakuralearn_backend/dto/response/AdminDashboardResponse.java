package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AdminDashboardResponse {
    private long totalUsers;
    private long activeUsers;
    private long totalCourses;
    private long totalEnrollments;
    private BigDecimal totalRevenue;
    private long pendingReviews;
}
