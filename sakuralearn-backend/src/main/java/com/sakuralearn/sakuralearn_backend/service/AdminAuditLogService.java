package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.response.AuditLogResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface AdminAuditLogService {
    Page<AuditLogResponse> getAuditLogs(String tableName, String actionType, Pageable pageable);
}
