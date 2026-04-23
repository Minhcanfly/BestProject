-- V2__Phase_2_Enhancements_SRS_Payment.sql
-- SakuraLearn - Phase 2 - Advanced & Enhancement Features

-- =============================================
-- 1. ENUM TYPES
-- =============================================
CREATE TYPE item_type AS ENUM ('KANJI', 'VOCAB', 'GRAMMAR');
CREATE TYPE payment_status AS ENUM ('PENDING', 'SUCCESS', 'FAILED', 'REFUNDED');
CREATE TYPE notification_type AS ENUM ('LESSON_COMPLETE', 'PAYMENT_SUCCESS', 'REMINDER', 'STREAK', 'ACHIEVEMENT', 'ADMIN_ALERT');

-- =============================================
-- 2. SRS & REVIEW (Module 5)
-- =============================================
CREATE TABLE user_notebook (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    item_type item_type NOT NULL,
    item_id UUID NOT NULL,
    note TEXT,
    added_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(user_id, item_type, item_id)
);

CREATE TABLE flashcards (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    item_type item_type NOT NULL,
    item_id UUID NOT NULL,
    due_date TIMESTAMPTZ,
    interval_days INT DEFAULT 1,
    ease_factor DOUBLE PRECISION DEFAULT 2.5,
    reps INT DEFAULT 0,
    last_reviewed_at TIMESTAMPTZ,
    UNIQUE(user_id, item_type, item_id)
);

CREATE TABLE flashcard_reviews (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    flashcard_id UUID REFERENCES flashcards(id) ON DELETE CASCADE,
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    reviewed_at TIMESTAMPTZ DEFAULT NOW(),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    interval_before INT,
    ease_factor_before DOUBLE PRECISION,
    new_interval INT,
    new_ease_factor DOUBLE PRECISION
);

-- =============================================
-- 3. PAYMENT & NOTIFICATION (Module 6)
-- =============================================
CREATE TABLE payments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    course_id UUID REFERENCES courses(id),
    amount DECIMAL(10,2) NOT NULL,
    vnpay_transaction_id VARCHAR(100),
    status payment_status DEFAULT 'PENDING',
    paid_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE notifications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    type notification_type NOT NULL,
    title TEXT,
    message TEXT,
    data JSONB,
    is_read BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- =============================================
-- 4. GAMIFICATION (Module 8)
-- =============================================
CREATE TABLE badges (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name_vi TEXT NOT NULL,
    name_ja TEXT,
    name_en TEXT,
    description_vi TEXT,
    icon_url TEXT,
    condition TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE user_badges (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    badge_id UUID REFERENCES badges(id),
    earned_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(user_id, badge_id)
);

CREATE TABLE xp_transactions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    amount INT NOT NULL,
    reason VARCHAR(50) NOT NULL,
    reference_id UUID,
    reference_type VARCHAR(30),
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    target_type VARCHAR(20) NOT NULL CHECK (target_type IN ('COURSE','LESSON','KANJI','VOCAB','GRAMMAR')),
    target_id UUID NOT NULL,
    parent_id UUID REFERENCES comments(id),
    content TEXT NOT NULL,
    likes_count INT DEFAULT 0,
    is_deleted BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- =============================================
-- 5. ADVANCED FEATURES (From V1.1)
-- =============================================
-- Mock Exam
CREATE TABLE mock_exams (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title_vi TEXT NOT NULL,
    title_ja TEXT,
    jlpt_level VARCHAR(5),
    time_limit_minutes INT,
    total_questions INT,
    is_published BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE mock_exam_attempts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    mock_exam_id UUID REFERENCES mock_exams(id),
    score DECIMAL(5,2),
    correct_count INT,
    time_taken_minutes INT,
    completed_at TIMESTAMPTZ DEFAULT NOW()
);

-- Weak Point & AI Recommendation
CREATE TABLE user_weak_points (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    item_type item_type NOT NULL,
    item_id UUID NOT NULL,
    weakness_score DECIMAL(5,2) DEFAULT 0,
    last_updated TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(user_id, item_type, item_id)
);

CREATE TABLE ai_recommendations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    recommendation_type VARCHAR(30),
    target_item_type item_type,
    target_item_id UUID,
    reason TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Articles
CREATE TABLE articles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title_vi TEXT,
    title_ja TEXT NOT NULL,
    content_ja TEXT,
    content_vi TEXT,
    jlpt_level VARCHAR(5),
    source_url TEXT,
    published_at TIMESTAMPTZ,
    is_published BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Leaderboard Snapshot
CREATE TABLE leaderboard_snapshots (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    snapshot_date DATE NOT NULL,
    user_id UUID REFERENCES users(id),
    xp_total BIGINT,
    streak INT,
    rank INT,
    UNIQUE(snapshot_date, user_id)
);

-- Handwriting Attempts
CREATE TABLE handwriting_attempts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id),
    kanji_id UUID REFERENCES kanji(id),
    stroke_data JSONB,
    accuracy_score DECIMAL(5,2),
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- =============================================
-- INDEXES for Phase 2
-- =============================================
CREATE INDEX idx_flashcards_due_user ON flashcards(user_id, due_date);
CREATE INDEX idx_notifications_user_read ON notifications(user_id, is_read);
CREATE INDEX idx_comments_target ON comments(target_type, target_id);
CREATE INDEX idx_xp_transactions_user ON xp_transactions(user_id);
CREATE INDEX idx_user_weak_points_user ON user_weak_points(user_id);
CREATE INDEX idx_articles_jlpt ON articles(jlpt_level);

-- =============================================
-- TRIGGERS for Phase 2
-- =============================================
CREATE TRIGGER trg_payments_update BEFORE UPDATE ON payments FOR EACH ROW EXECUTE FUNCTION update_timestamp();
CREATE TRIGGER trg_comments_update BEFORE UPDATE ON comments FOR EACH ROW EXECUTE FUNCTION update_timestamp();
