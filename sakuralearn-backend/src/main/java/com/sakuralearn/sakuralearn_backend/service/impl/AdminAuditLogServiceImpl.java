package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.response.AuditLogResponse;
import com.sakuralearn.sakuralearn_backend.entity.AuditLog;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.AuditLogRepository;
import com.sakuralearn.sakuralearn_backend.service.AdminAuditLogService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class AdminAuditLogServiceImpl implements AdminAuditLogService {

    private final AuditLogRepository auditLogRepository;

    @Override
    @Transactional(readOnly = true)
    public Page<AuditLogResponse> getAuditLogs(String tableName, String actionType, Pageable pageable) {
        String normalizedTableName = normalize(tableName);
        String normalizedActionType = normalize(actionType);

        Page<AuditLog> logs;
        if (normalizedTableName != null && normalizedActionType != null) {
            logs = auditLogRepository.findByTableNameContainingIgnoreCaseAndActionTypeIgnoreCaseOrderByChangedAtDesc(
                    normalizedTableName,
                    normalizedActionType,
                    pageable
            );
        } else if (normalizedTableName != null) {
            logs = auditLogRepository.findByTableNameContainingIgnoreCaseOrderByChangedAtDesc(normalizedTableName, pageable);
        } else if (normalizedActionType != null) {
            logs = auditLogRepository.findByActionTypeIgnoreCaseOrderByChangedAtDesc(normalizedActionType, pageable);
        } else {
            logs = auditLogRepository.findAllByOrderByChangedAtDesc(pageable);
        }

        return logs.map(this::mapToResponse);
    }

    private AuditLogResponse mapToResponse(AuditLog auditLog) {
        User changedBy = auditLog.getChangedBy();
        return AuditLogResponse.builder()
                .id(auditLog.getId())
                .tableName(auditLog.getTableName())
                .recordId(auditLog.getRecordId())
                .actionType(auditLog.getActionType())
                .oldValues(auditLog.getOldValues())
                .newValues(auditLog.getNewValues())
                .changedById(changedBy != null ? changedBy.getId() : null)
                .changedByEmail(changedBy != null ? changedBy.getEmail() : null)
                .changedByName(changedBy != null ? changedBy.getFullName() : null)
                .changedAt(auditLog.getChangedAt())
                .ipAddress(auditLog.getIpAddress())
                .userAgent(auditLog.getUserAgent())
                .build();
    }

    private String normalize(String value) {
        if (value == null || value.isBlank()) {
            return null;
        }
        return value.trim();
    }
}
