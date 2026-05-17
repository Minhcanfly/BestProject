package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.response.AuditLogResponse;
import com.sakuralearn.sakuralearn_backend.entity.AuditLog;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.AuditLogRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class AdminAuditLogServiceImplTest {

    @Mock
    private AuditLogRepository auditLogRepository;

    @InjectMocks
    private AdminAuditLogServiceImpl adminAuditLogService;

    @Test
    void getAuditLogsMapsAuditEntityToResponse() {
        PageRequest pageable = PageRequest.of(0, 20);
        User actor = User.builder()
                .id(UUID.randomUUID())
                .email("admin@sakuralearn.com")
                .fullName("Admin")
                .build();
        AuditLog auditLog = AuditLog.builder()
                .id(UUID.randomUUID())
                .tableName("users")
                .recordId(UUID.randomUUID())
                .actionType("UPDATE")
                .oldValues(Map.of("message", "before"))
                .newValues(Map.of("message", "after"))
                .changedBy(actor)
                .changedAt(ZonedDateTime.parse("2026-05-17T10:00:00+07:00"))
                .ipAddress("127.0.0.1")
                .userAgent("JUnit")
                .build();
        when(auditLogRepository.findAllByOrderByChangedAtDesc(pageable))
                .thenReturn(new PageImpl<>(List.of(auditLog), pageable, 1));

        AuditLogResponse response = adminAuditLogService.getAuditLogs(null, null, pageable).getContent().getFirst();

        assertThat(response.getTableName()).isEqualTo("users");
        assertThat(response.getActionType()).isEqualTo("UPDATE");
        assertThat(response.getChangedByEmail()).isEqualTo("admin@sakuralearn.com");
        assertThat(response.getNewValues()).containsEntry("message", "after");
    }

    @Test
    void getAuditLogsUsesCombinedFilterWhenTableAndActionAreProvided() {
        PageRequest pageable = PageRequest.of(0, 20);
        when(auditLogRepository.findByTableNameContainingIgnoreCaseAndActionTypeIgnoreCaseOrderByChangedAtDesc(
                "users",
                "UPDATE",
                pageable
        )).thenReturn(new PageImpl<>(List.of(), pageable, 0));

        adminAuditLogService.getAuditLogs(" users ", " UPDATE ", pageable);

        verify(auditLogRepository).findByTableNameContainingIgnoreCaseAndActionTypeIgnoreCaseOrderByChangedAtDesc(
                "users",
                "UPDATE",
                pageable
        );
    }
}
