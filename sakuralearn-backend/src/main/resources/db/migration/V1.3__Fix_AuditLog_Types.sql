-- V1.3__Fix_AuditLog_Types.sql
-- Change ip_address from inet to VARCHAR to support Hibernate mapping easily

ALTER TABLE audit_log ALTER COLUMN ip_address TYPE VARCHAR(45);
