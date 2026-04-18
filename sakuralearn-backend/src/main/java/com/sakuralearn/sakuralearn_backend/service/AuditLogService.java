package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.entity.AuditLog;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.AuditLogRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Async;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZonedDateTime;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuditLogService {

    private final AuditLogRepository auditLogRepository;
    private final UserRepository userRepository;

    @Async
    @Transactional
    public void log(String tableName, UUID recordId, String actionType, String oldValues, String newValues, String ipAddress, String userAgent) {
        try {
            User currentUser = getCurrentUser();
            
            java.util.Map<String, Object> oldValuesMap = oldValues != null ? java.util.Map.of("message", oldValues) : null;
            java.util.Map<String, Object> newValuesMap = newValues != null ? java.util.Map.of("message", newValues) : null;

            AuditLog auditLog = AuditLog.builder()
                    .tableName(tableName)
                    .recordId(recordId)
                    .actionType(actionType)
                    .oldValues(oldValuesMap)
                    .newValues(newValuesMap)
                    .changedBy(currentUser)
                    .changedAt(ZonedDateTime.now())
                    .ipAddress(ipAddress)
                    .userAgent(userAgent)
                    .build();

            auditLogRepository.save(auditLog);
        } catch (Exception e) {
            log.error("Failed to save audit log: {}", e.getMessage());
        }
    }

    private User getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.isAuthenticated() && authentication.getPrincipal() instanceof UserDetailsImpl userDetails) {
            return userRepository.findById(userDetails.getId()).orElse(null);
        }
        return null;
    }
}
