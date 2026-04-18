-- V1.0__Create_Base_Tables.sql
-- SakuraLearn - Phase 1 MVP - Full Base Schema (UUID Edition)

CREATE EXTENSION IF NOT EXISTS "pgcrypto";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";

-- =============================================
-- 1. ENUM TYPES
-- =============================================
CREATE TYPE item_type AS ENUM ('KANJI', 'VOCAB', 'GRAMMAR');
CREATE TYPE quiz_type AS ENUM ('MULTIPLE_CHOICE', 'FILL_IN_BLANK', 'MATCHING', 'LISTENING', 'REAL_TIME');
CREATE TYPE payment_status AS ENUM ('PENDING', 'SUCCESS', 'FAILED', 'REFUNDED');
CREATE TYPE notification_type AS ENUM ('LESSON_COMPLETE', 'PAYMENT_SUCCESS', 'REMINDER', 'STREAK', 'ACHIEVEMENT', 'ADMIN_ALERT');
CREATE TYPE lesson_block_type AS ENUM ('TEXT', 'VIDEO', 'AUDIO', 'IMAGE', 'QUIZ', 'PRACTICE');

-- =============================================
-- 2. ROLES & USERS (Module 1)
-- =============================================
CREATE TABLE roles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(20) UNIQUE NOT NULL CHECK (name IN ('STUDENT', 'TEACHER', 'ADMIN')),
    description TEXT
);

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100),
    avatar_url TEXT,
    preferred_language VARCHAR(10) DEFAULT 'vi' CHECK (preferred_language IN ('vi','ja','en')),
    is_active BOOLEAN DEFAULT true,
    email_verified BOOLEAN DEFAULT false,
    is_deleted BOOLEAN DEFAULT false,
    xp BIGINT DEFAULT 0,
    current_streak INT DEFAULT 0,
    longest_streak INT DEFAULT 0,
    last_activity_date DATE,
    daily_goal INT DEFAULT 20,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by UUID REFERENCES users(id),
    updated_by UUID REFERENCES users(id)
);

CREATE TABLE user_roles (
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    role_id UUID REFERENCES roles(id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, role_id)
);

-- Auth tokens
CREATE TABLE refresh_tokens (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    token VARCHAR(255) NOT NULL UNIQUE,
    expiry_date TIMESTAMPTZ NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE verification_tokens (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    token VARCHAR(255) NOT NULL UNIQUE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    expiry_date TIMESTAMPTZ NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE password_reset_tokens (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    token VARCHAR(255) NOT NULL UNIQUE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    expiry_date TIMESTAMPTZ NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- =============================================
-- 3. COURSE & LESSON (Module 2)
-- =============================================
CREATE TABLE courses (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title_vi TEXT NOT NULL,
    title_ja TEXT,
    title_en TEXT,
    description_vi TEXT,
    description_ja TEXT,
    description_en TEXT,
    jlpt_level VARCHAR(5) CHECK (jlpt_level IN ('N5','N4','N3','N2','N1')),
    price DECIMAL(10,2) DEFAULT 0.00,
    duration_minutes INT,
    teacher_id UUID REFERENCES users(id),
    is_published BOOLEAN DEFAULT false,
    thumbnail_url TEXT,
    is_deleted BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by UUID REFERENCES users(id),
    updated_by UUID REFERENCES users(id)
);

CREATE TABLE lessons (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    course_id UUID REFERENCES courses(id) ON DELETE CASCADE,
    title_vi TEXT NOT NULL,
    title_ja TEXT,
    title_en TEXT,
    lesson_type lesson_block_type NOT NULL DEFAULT 'TEXT',
    order_index INT NOT NULL,
    duration_minutes INT,
    is_published BOOLEAN DEFAULT false,
    is_deleted BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by UUID REFERENCES users(id),
    updated_by UUID REFERENCES users(id)
);

CREATE TABLE lesson_blocks (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    lesson_id UUID REFERENCES lessons(id) ON DELETE CASCADE,
    block_type lesson_block_type NOT NULL,
    order_index INT NOT NULL,
    content_vi TEXT,
    content_ja TEXT,
    content_en TEXT,
    video_url TEXT,
    audio_url TEXT,
    image_url TEXT,
    metadata JSONB,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- =============================================
-- 4. ENROLLMENT & PROGRESS (Module 3)
-- =============================================
CREATE TABLE enrollments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    course_id UUID REFERENCES courses(id) ON DELETE CASCADE,
    enrolled_at TIMESTAMPTZ DEFAULT NOW(),
    completed_at TIMESTAMPTZ,
    progress_percentage DECIMAL(5,2) DEFAULT 0 CHECK (progress_percentage BETWEEN 0 AND 100),
    last_accessed_at TIMESTAMPTZ,
    UNIQUE(user_id, course_id)
);

CREATE TABLE lesson_progress (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    lesson_id UUID REFERENCES lessons(id) ON DELETE CASCADE,
    is_completed BOOLEAN DEFAULT false,
    completed_at TIMESTAMPTZ,
    last_accessed_at TIMESTAMPTZ,
    score DECIMAL(5,2),
    UNIQUE(user_id, lesson_id)
);

-- =============================================
-- 5. KNOWLEDGE BASE (Module 4)
-- =============================================
CREATE TABLE radicals (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    character VARCHAR(10) UNIQUE NOT NULL,
    meaning_vi TEXT,
    meaning_en TEXT,
    stroke_count INT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE kanji (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    character VARCHAR(10) UNIQUE NOT NULL,
    jlpt_level VARCHAR(5),
    meaning_vi TEXT,
    meaning_en TEXT,
    onyomi TEXT[],
    kunyomi TEXT[],
    stroke_count INT,
    radical_id UUID REFERENCES radicals(id),
    stroke_order_image_url TEXT,
    audio_url TEXT,
    example_sentences JSONB,
    is_deleted BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by UUID REFERENCES users(id),
    updated_by UUID REFERENCES users(id)
);

CREATE TABLE vocabulary (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    word_ja TEXT NOT NULL,
    reading TEXT NOT NULL,
    jlpt_level VARCHAR(5),
    meaning_vi TEXT NOT NULL,
    meaning_en TEXT,
    part_of_speech VARCHAR(50),
    audio_url TEXT,
    example_sentences JSONB,
    is_deleted BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by UUID REFERENCES users(id),
    updated_by UUID REFERENCES users(id)
);

CREATE TABLE grammar_points (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pattern_ja TEXT NOT NULL,
    jlpt_level VARCHAR(5),
    explanation_vi TEXT,
    explanation_en TEXT,
    example_sentences JSONB,
    is_deleted BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by UUID REFERENCES users(id),
    updated_by UUID REFERENCES users(id)
);

-- =============================================
-- 6. SRS & REVIEW (Module 5)
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
    ease_factor DECIMAL(5,2) DEFAULT 2.5,
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
    ease_factor_before DECIMAL(5,2),
    new_interval INT,
    new_ease_factor DECIMAL(5,2)
);

-- =============================================
-- 7. QUIZ (Module 3)
-- =============================================
CREATE TABLE quizzes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    lesson_id UUID REFERENCES lessons(id) ON DELETE SET NULL,
    title TEXT NOT NULL,
    type quiz_type NOT NULL,
    time_limit_seconds INT,
    is_deleted BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by UUID REFERENCES users(id)
);

CREATE TABLE quiz_questions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    quiz_id UUID REFERENCES quizzes(id) ON DELETE CASCADE,
    question_text TEXT NOT NULL,
    options JSONB,
    correct_answer TEXT,
    explanation TEXT,
    points INT DEFAULT 1
);

CREATE TABLE quiz_attempts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    quiz_id UUID REFERENCES quizzes(id) ON DELETE SET NULL,
    score DECIMAL(5,2),
    time_taken_seconds INT,
    completed_at TIMESTAMPTZ DEFAULT NOW(),
    is_completed BOOLEAN DEFAULT true
);

CREATE TABLE user_answers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    attempt_id UUID REFERENCES quiz_attempts(id) ON DELETE CASCADE,
    question_id UUID REFERENCES quiz_questions(id) ON DELETE CASCADE,
    user_answer TEXT,
    is_correct BOOLEAN,
    points_earned INT DEFAULT 0
);

-- =============================================
-- 8. PAYMENT & NOTIFICATION (Module 6)
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
-- 9. GAMIFICATION (Module 8)
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
-- 10. AUDIT LOG
-- =============================================
CREATE TABLE audit_log (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    table_name VARCHAR(100) NOT NULL,
    record_id UUID NOT NULL,
    action_type VARCHAR(10) NOT NULL CHECK (action_type IN ('INSERT','UPDATE','DELETE')),
    old_values JSONB,
    new_values JSONB,
    changed_by UUID REFERENCES users(id),
    changed_at TIMESTAMPTZ DEFAULT NOW(),
    ip_address INET,
    user_agent TEXT
);

-- =============================================
-- INDEXES
-- =============================================
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_courses_jlpt_level ON courses(jlpt_level);
CREATE INDEX idx_kanji_jlpt_level ON kanji(jlpt_level);
CREATE INDEX idx_vocabulary_jlpt_level ON vocabulary(jlpt_level);
CREATE INDEX idx_flashcards_due_user ON flashcards(user_id, due_date);
CREATE INDEX idx_notifications_user_read ON notifications(user_id, is_read);
CREATE INDEX idx_comments_target ON comments(target_type, target_id);
CREATE INDEX idx_kanji_onyomi ON kanji USING GIN (onyomi);
CREATE INDEX idx_kanji_kunyomi ON kanji USING GIN (kunyomi);
CREATE INDEX idx_xp_transactions_user ON xp_transactions(user_id);

-- =============================================
-- TRIGGER: Auto update updated_at
-- =============================================
CREATE OR REPLACE FUNCTION update_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_users_update BEFORE UPDATE ON users FOR EACH ROW EXECUTE FUNCTION update_timestamp();
CREATE TRIGGER trg_courses_update BEFORE UPDATE ON courses FOR EACH ROW EXECUTE FUNCTION update_timestamp();
CREATE TRIGGER trg_lessons_update BEFORE UPDATE ON lessons FOR EACH ROW EXECUTE FUNCTION update_timestamp();
CREATE TRIGGER trg_kanji_update BEFORE UPDATE ON kanji FOR EACH ROW EXECUTE FUNCTION update_timestamp();
CREATE TRIGGER trg_vocab_update BEFORE UPDATE ON vocabulary FOR EACH ROW EXECUTE FUNCTION update_timestamp();
CREATE TRIGGER trg_grammar_update BEFORE UPDATE ON grammar_points FOR EACH ROW EXECUTE FUNCTION update_timestamp();
CREATE TRIGGER trg_comments_update BEFORE UPDATE ON comments FOR EACH ROW EXECUTE FUNCTION update_timestamp();

-- =============================================
-- SEED DATA: Default Roles
-- =============================================
INSERT INTO roles (name, description)
VALUES
    ('STUDENT', 'Người học'),
    ('TEACHER', 'Giảng viên tạo nội dung'),
    ('ADMIN', 'Quản trị viên hệ thống')
ON CONFLICT (name) DO NOTHING;
