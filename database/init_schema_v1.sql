-- DB Schema Version 1.1 cho Dự án SakuraLearn
-- Đã tinh chỉnh và bổ sung: lesson_type, audio_url, points theo tiêu chuẩn E-Learning.

-- ==========================================
-- 1. Users & Roles
-- ==========================================
CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) UNIQUE NOT NULL,  -- STUDENT, TEACHER, ADMIN
    description TEXT
);

CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100),
    avatar_url TEXT,
    preferred_language VARCHAR(10) DEFAULT 'vi',  -- vi, ja, en
    is_active BOOLEAN DEFAULT true,
    email_verified BOOLEAN DEFAULT false,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id)
);

CREATE TABLE user_roles (
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    role_id INT REFERENCES roles(id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, role_id)
);

-- ==========================================
-- 2. Course & Lesson
-- ==========================================
CREATE TABLE courses (
    id BIGSERIAL PRIMARY KEY,
    title_vi TEXT NOT NULL,
    title_ja TEXT,
    title_en TEXT,
    description_vi TEXT,
    description_ja TEXT,
    description_en TEXT,
    jlpt_level VARCHAR(5) CHECK (jlpt_level IN ('N5','N4','N3','N2','N1')),
    price DECIMAL(10,2) DEFAULT 0.00,  -- 0 = miễn phí
    duration_minutes INT,
    teacher_id BIGINT REFERENCES users(id),
    is_published BOOLEAN DEFAULT false,
    thumbnail_url TEXT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id)
);

CREATE TABLE lessons (
    id BIGSERIAL PRIMARY KEY,
    course_id BIGINT REFERENCES courses(id) ON DELETE CASCADE,
    title_vi TEXT NOT NULL,
    title_ja TEXT,
    title_en TEXT,
    order_index INT NOT NULL,  -- thứ tự bài học trong course
    
    -- [Bổ sung]: Phân loại kiểu bài học để UI render đúng icon và component
    lesson_type VARCHAR(20) DEFAULT 'VIDEO', -- VIDEO, READING, QUIZ
    
    content_vi TEXT,           -- text giải thích tiếng Việt
    content_ja TEXT,
    content_en TEXT,
    video_url TEXT,
    audio_url TEXT,
    duration_minutes INT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id)
);

-- ==========================================
-- 3. Enrollment & Progress
-- ==========================================
CREATE TABLE enrollments (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    course_id BIGINT REFERENCES courses(id) ON DELETE CASCADE,
    enrolled_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP WITH TIME ZONE,
    progress_percentage DECIMAL(5,2) DEFAULT 0.00,  -- 0-100
    last_accessed_at TIMESTAMP WITH TIME ZONE,
    UNIQUE(user_id, course_id)
);

CREATE TABLE lesson_progress (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    lesson_id BIGINT REFERENCES lessons(id) ON DELETE CASCADE,
    is_completed BOOLEAN DEFAULT false,
    completed_at TIMESTAMP WITH TIME ZONE,
    last_accessed_at TIMESTAMP WITH TIME ZONE,
    score DECIMAL(5,2),                    -- nếu có quiz trong lesson
    UNIQUE(user_id, lesson_id)
);

-- ==========================================
-- 4. Knowledge Base (Kiến thức Tra cứu)
-- ==========================================
CREATE TABLE kanji (
    id BIGSERIAL PRIMARY KEY,
    character VARCHAR(10) UNIQUE NOT NULL,   -- kanji chính
    jlpt_level VARCHAR(5),
    meaning_vi TEXT,
    meaning_en TEXT,
    onyomi TEXT[],                           -- array cho nhiều reading
    kunyomi TEXT[],
    stroke_count INT,
    radical TEXT,
    audio_url TEXT,                          -- [Bổ sung]: Nghe phát âm thanh
    stroke_order_image_url TEXT,             -- hoặc lưu data SVG
    example_sentences JSONB,                 -- [{"jp": "...", "vi": "..."}]
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id)
);

CREATE TABLE vocabulary (
    id BIGSERIAL PRIMARY KEY,
    word_ja TEXT NOT NULL,
    reading TEXT,
    jlpt_level VARCHAR(5),
    meaning_vi TEXT NOT NULL,
    meaning_en TEXT,
    part_of_speech VARCHAR(50),
    audio_url TEXT,                          -- [Bổ sung]: Audio từ vựng
    example_sentences JSONB,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id)
);

CREATE TABLE grammar_points (
    id BIGSERIAL PRIMARY KEY,
    pattern_ja TEXT NOT NULL,                -- ví dụ: ～てみる
    jlpt_level VARCHAR(5),
    explanation_vi TEXT,
    explanation_en TEXT,
    example_sentences JSONB,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by BIGINT REFERENCES users(id),
    updated_by BIGINT REFERENCES users(id)
);

-- ==========================================
-- 5. Review & Flashcard (SRS)
-- ==========================================
CREATE TABLE user_notebook (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    item_type VARCHAR(20) NOT NULL,          -- 'KANJI', 'VOCAB', 'GRAMMAR'
    item_id BIGINT NOT NULL,                 -- reference đến bảng tương ứng
    added_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, item_type, item_id)
);

CREATE TABLE flashcards (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    item_type VARCHAR(20) NOT NULL,
    item_id BIGINT NOT NULL,
    front_text TEXT,
    back_text TEXT,
    due_date TIMESTAMP WITH TIME ZONE,       -- ngày cần ôn tiếp theo
    interval INT DEFAULT 1,                  -- SRS interval (ngày)
    ease_factor DECIMAL(5,2) DEFAULT 2.5,    -- SM-2 style
    reps INT DEFAULT 0,                      -- số lần ôn
    last_reviewed_at TIMESTAMP WITH TIME ZONE,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================
-- 6. Quiz & Real-time
-- ==========================================
CREATE TABLE quizzes (
    id BIGSERIAL PRIMARY KEY,
    lesson_id BIGINT REFERENCES lessons(id) ON DELETE SET NULL,
    title TEXT,
    type VARCHAR(30),                        -- 'MULTIPLE_CHOICE', 'FILL_IN', 'REAL_TIME'...
    time_limit_seconds INT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by BIGINT REFERENCES users(id)
);

CREATE TABLE quiz_questions (
    id BIGSERIAL PRIMARY KEY,
    quiz_id BIGINT REFERENCES quizzes(id) ON DELETE CASCADE,
    question_text TEXT NOT NULL,
    options JSONB,                           -- array các lựa chọn (Dùng JSON để dễ sửa đổi)
    correct_answer TEXT,
    explanation TEXT,
    points INT DEFAULT 1                     -- [Bổ sung]: Hệ số điểm (câu khó nhiều điểm hơn)
);

-- ==========================================
-- 7. Payment & Notification
-- ==========================================
CREATE TABLE payments (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id),
    course_id BIGINT REFERENCES courses(id),
    amount DECIMAL(10,2) NOT NULL,
    vnpay_transaction_id VARCHAR(100),
    status VARCHAR(20) DEFAULT 'PENDING',    -- PENDING, SUCCESS, FAILED
    paid_at TIMESTAMP WITH TIME ZONE,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notifications (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users(id) ON DELETE CASCADE,
    type VARCHAR(50),                        -- LESSON_COMPLETE, PAYMENT_SUCCESS, REMINDER...
    title TEXT,
    message TEXT,
    is_read BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================
-- 8. Audit Trail (Bảng chung)
-- ==========================================
CREATE TABLE audit_log (
    id BIGSERIAL PRIMARY KEY,
    table_name VARCHAR(100) NOT NULL,
    record_id BIGINT NOT NULL,
    action_type VARCHAR(10) NOT NULL,        -- INSERT, UPDATE, DELETE
    old_values JSONB,                        -- dữ liệu trước thay đổi (cho UPDATE/DELETE)
    new_values JSONB,                        -- dữ liệu sau thay đổi (cho INSERT/UPDATE)
    changed_by BIGINT REFERENCES users(id),
    changed_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    ip_address INET,
    user_agent TEXT
);

-- Index để query nhanh
CREATE INDEX idx_audit_log_table_record ON audit_log(table_name, record_id);
CREATE INDEX idx_audit_log_changed_at ON audit_log(changed_at);
