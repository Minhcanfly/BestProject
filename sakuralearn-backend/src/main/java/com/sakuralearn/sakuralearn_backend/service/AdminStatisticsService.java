package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.response.AdminDashboardResponse;

public interface AdminStatisticsService {
    AdminDashboardResponse getSummaryStatistics();
}
