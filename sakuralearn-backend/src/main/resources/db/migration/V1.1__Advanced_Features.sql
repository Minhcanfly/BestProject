-- V1.1__Advanced_Features.sql
-- SakuraLearn - Phase 2 - Advanced Features

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

-- Indexes for Phase 2
CREATE INDEX idx_user_weak_points_user ON user_weak_points(user_id);
CREATE INDEX idx_articles_jlpt ON articles(jlpt_level);
