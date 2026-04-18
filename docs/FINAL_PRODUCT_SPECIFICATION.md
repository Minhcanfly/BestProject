# 🌸 SAKURALEARN – FINAL PRODUCT SPECIFICATION
**Phiên bản:** 1.0 Final (Hoàn chỉnh & Khả thi)

## 🎯 Mục tiêu dự án
SakuraLearn là nền tảng học tiếng Nhật JLPT N5–N1 dành cho người Việt, kết hợp:
- 📚 Hệ thống khóa học có cấu trúc (LMS)
- 📖 Kho kiến thức tra cứu chuyên sâu (Dictionary)
- 🧠 Spaced Repetition System (SRS – ghi nhớ dài hạn)
- 🎮 Gamification (tăng retention)
- 💳 Monetization (bán khóa học)

## I. Tổng quan hệ thống
### 1. Mô hình hệ thống
- LMS (Course-based Learning)
- Knowledge Base (Dictionary-style)
- Spaced Repetition System (SRS)
- Gamification System

### 2. Đối tượng người dùng
- Người Việt học JLPT từ N5 đến N1
- Mục tiêu: học hiệu quả + duy trì thói quen dài hạn

### 3. Ngôn ngữ hỗ trợ
- Tiếng Việt (mặc định – UI + giải thích)
- Tiếng Nhật (nội dung học)
- Tiếng Anh (hỗ trợ)

### 4. Phân quyền (RBAC)
- **STUDENT**: Học, làm quiz, lưu từ, mua khóa học
- **TEACHER**: Tạo course, lesson, quản lý nội dung
- **ADMIN**: Quản trị toàn hệ thống

### 5. Kiến trúc hệ thống
- **Frontend**: React.js (Role-based layout)
- **Backend**: Spring Boot (REST API + JWT + RBAC)
- **Database**: PostgreSQL (UUID-based schema)
- **Cache**: Redis (optional – tối ưu performance)
- **Realtime**: WebSocket / Polling (optional)

## II. 8 MODULE CHÍNH

### 🔐 MODULE 1: Authentication & User Management
- **Quản lý Profile**: Avatar, Full name, Preferred language (vi/ja/en)
- **Trạng thái tài khoản**: `is_active`, `email_verified`, soft delete
- **Phân quyền RBAC**: STUDENT, TEACHER, ADMIN
- **Audit tracking**: `created_by`, `updated_by`

### 📚 MODULE 2: Course & Lesson Management
1. **Course Management**
   - CRUD khóa học (title/desc đa ngôn ngữ)
   - JLPT level (N5–N1)
   - Giá (free / paid)
   - Thumbnail, Publish / Unpublish
2. **Lesson Management**
   - CRUD bài học, Sắp xếp thứ tự (`order_index`)
   - Nội dung: Text, Video URL, Audio URL
   - **lesson_type**: VIDEO, READING, QUIZ

### 🎓 MODULE 3: Learning Experience & Progress
- Video player, Content reader
- Mark as completed, Tự động cập nhật tiến độ (%)
- Theo dõi: `progress_percentage`, `last_accessed`
- Quiz cơ bản: Multiple choice, Fill in blank, Matching, Listening

### 📖 MODULE 4: Knowledge Base (Dictionary)
- **Kanji**: Character, Level, Radical, Onyomi/Kunyomi, Stroke count, Stroke order image, Example sentences, audio
- **Vocabulary**: Word (JP), Reading, Meaning (vi/en), Part of speech, audio, Example
- **Grammar**: Pattern, Explanation, Example
- **Notebook**: Lưu vào “My Notebook”

### 🧠 MODULE 5: Review & Practice (SRS)
- **Thuật toán SM-2**:
  - Tính toán: `due_date`, `interval_days`, `ease_factor`, `reps`
- Review Flashcard hàng ngày (Flip card, đánh giá 1-4)

### 💳 MODULE 6: Monetization & Notification
- Tích hợp **VNPay** (Transaction, Redirect, IPN/Webhook)
- **Notification**: Payment success, Lesson complete, Reminder, Achievement

### 🛠 MODULE 7: Administration & Analytics
- Quản lý user & role, course, payment (duyệt nội dung)
- **Audit log**: INSERT / UPDATE / DELETE
- **Báo cáo**: Doanh thu, User activity, Course phổ biến

### 🎮 MODULE 8: Gamification & Enhancement
- **XP system**, **Streak** (current/longest), **Badge system**
- Comment system (Course, Lesson, Kanji/Vocab/Grammar)
- Dark mode, Redis cache

## III. Mapping DB ↔ Feature
| Module | Tính năng | Bảng DB |
| :--- | :--- | :--- |
| 1 | Auth & Profile | users, roles, user_roles |
| 2 | Course & Lesson | courses, lessons, enrollments |
| 3 | Progress & Quiz | enrollments, lesson_progress, quizzes |
| 4 | Knowledge Base | kanji, vocabulary, grammar_points |
| 5 | SRS | user_notebook, flashcards |
| 6 | Payment & Notif | payments, notifications |
| 7 | Admin | audit_log |
| 8 | Gamification | users, badges, user_badges, comments |

## IV. Phạm vi MVP - Phase 1 chưa làm (Phase 2)
- Quiz attempt history nâng cao
- Real-time Quiz full session
- JLPT Mock Exam full
- Weak Point Analysis
- AI recommendation, Articles (đọc báo Nhật), Leaderboard
- Elasticsearch nâng cao
- Kanji handwriting recognition

## V. Kết luận
Bản thiết kế này đạt được sự cân bằng giữa tính khả thi và giá trị sản phẩm. Sẵn sàng cho việc triển khai Backend & Frontend MVP.
