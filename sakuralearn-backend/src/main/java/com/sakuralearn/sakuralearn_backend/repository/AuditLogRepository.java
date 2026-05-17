package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.AuditLog;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface AuditLogRepository extends JpaRepository<AuditLog, UUID> {
    @EntityGraph(attributePaths = "changedBy")
    Page<AuditLog> findAllByOrderByChangedAtDesc(Pageable pageable);

    @EntityGraph(attributePaths = "changedBy")
    Page<AuditLog> findByTableNameContainingIgnoreCaseOrderByChangedAtDesc(String tableName, Pageable pageable);

    @EntityGraph(attributePaths = "changedBy")
    Page<AuditLog> findByActionTypeIgnoreCaseOrderByChangedAtDesc(String actionType, Pageable pageable);

    @EntityGraph(attributePaths = "changedBy")
    Page<AuditLog> findByTableNameContainingIgnoreCaseAndActionTypeIgnoreCaseOrderByChangedAtDesc(
            String tableName,
            String actionType,
            Pageable pageable
    );
}
