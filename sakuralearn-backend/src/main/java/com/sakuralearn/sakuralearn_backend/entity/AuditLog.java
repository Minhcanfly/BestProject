package com.sakuralearn.sakuralearn_backend.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import java.time.ZonedDateTime;
import java.util.UUID;

@Entity
@Table(name = "audit_log")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AuditLog {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "table_name", nullable = false, length = 100)
    private String tableName;

    @Column(name = "record_id", nullable = false)
    private UUID recordId;

    @Column(name = "action_type", nullable = false, length = 10)
    private String actionType;

    @Column(name = "old_values")
    @JdbcTypeCode(SqlTypes.JSON)
    private java.util.Map<String, Object> oldValues;

    @Column(name = "new_values")
    @JdbcTypeCode(SqlTypes.JSON)
    private java.util.Map<String, Object> newValues;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "changed_by")
    private User changedBy;

    @Column(name = "changed_at")
    @Builder.Default
    private ZonedDateTime changedAt = ZonedDateTime.now();

    @Column(name = "ip_address", length = 45)
    private String ipAddress;

    @Column(name = "user_agent")
    private String userAgent;
}
