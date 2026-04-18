-- V1.2__Scale_Analytics.sql
-- SakuraLearn - Phase 3 - Scale & Analytics

-- Event Log (Kafka support)
CREATE TABLE event_log (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    event_type VARCHAR(100) NOT NULL,
    payload JSONB,
    status VARCHAR(20) DEFAULT 'PENDING',
    processed_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Daily Stats
CREATE TABLE daily_user_stats (
    date DATE PRIMARY KEY,
    active_users INT DEFAULT 0,
    new_users INT DEFAULT 0,
    total_lessons_completed INT DEFAULT 0,
    total_srs_reviews INT DEFAULT 0,
    retention_rate DECIMAL(5,2)
);

CREATE INDEX idx_event_log_type ON event_log(event_type, created_at);
