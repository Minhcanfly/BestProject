package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.Builder;
import lombok.Data;

import java.time.ZonedDateTime;
import java.util.Map;
import java.util.UUID;

@Data
@Builder
public class AuditLogResponse {
    private UUID id;
    private String tableName;
    private UUID recordId;
    private String actionType;
    private Map<String, Object> oldValues;
    private Map<String, Object> newValues;
    private UUID changedById;
    private String changedByEmail;
    private String changedByName;
    private ZonedDateTime changedAt;
    private String ipAddress;
    private String userAgent;
}
