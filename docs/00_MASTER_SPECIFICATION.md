# 🌸 SAKURALEARN – MASTER SPECIFICATION & ELITE ROADMAP (V3.0)

> **Lưu ý:** Tài liệu này là bản đặc tả cốt lõi (Master Spec), được tổng hợp chuẩn xác và đầy đủ từ 3 tài liệu: *FINAL_PRODUCT_SPECIFICATION*, *SAKURALEARN_MASTER_LOGIC_SPEC*, và *JD_GAP_ANALYSIS_AND_ROADMAP*. Nó định hình toàn bộ tầm nhìn, logic của 8 Module, phạm vi MVP, kiến trúc hệ thống và lộ trình phát triển cấp doanh nghiệp.

---

## 🎯 I. TẦM NHÌN & TỔNG QUAN HỆ THỐNG

### 1. Mục tiêu dự án
SakuraLearn là nền tảng học tiếng Nhật JLPT N5–N1 dành riêng cho người Việt, là sự kết hợp hoàn hảo của 5 yếu tố:
- 📚 **Hệ thống khóa học có cấu trúc (LMS):** Quản lý lộ trình học rõ ràng từ cơ bản đến nâng cao.
- 📖 **Kho kiến thức tra cứu chuyên sâu (Dictionary-style):** Hệ sinh thái từ vựng, Kanji, ngữ pháp chi tiết.
- 🧠 **Spaced Repetition System (SRS):** Hệ thống lặp lại ngắt quãng giúp ghi nhớ dài hạn.
- 🎮 **Gamification:** Biến việc học thành trò chơi để tăng cường duy trì thói quen học tập (Retention).
- 💳 **Monetization:** Hệ thống thanh toán mua bán khóa học an toàn, mượt mà.

### 2. Đối tượng người dùng & Ngôn ngữ hỗ trợ
- **Đối tượng:** Người Việt học tiếng Nhật (JLPT N5 – N1). Mục tiêu giúp học hiệu quả và duy trì thói quen dài hạn.
- **Ngôn ngữ hỗ trợ:**
  - Tiếng Việt (Mặc định cho UI và giải thích nghĩa/ngữ pháp).
  - Tiếng Nhật (Ngôn ngữ chính trong nội dung học).
  - Tiếng Anh (Ngôn ngữ hỗ trợ phụ trợ).

### 3. Phân quyền người dùng (RBAC)
- **STUDENT:** Có quyền học bài, làm quiz, tra cứu từ điển, lưu từ vựng và mua khóa học.
- **TEACHER:** Có quyền tạo Course, Lesson, quản lý nội dung bài học.
- **ADMIN:** Quản trị toàn hệ thống (User, Role, Course, Payment, Phân quyền).

### 4. Kiến trúc hệ thống tổng quan
- **Frontend:** React.js (Thiết kế layout theo Role-based).
- **Backend:** Spring Boot (Cung cấp REST API + JWT + RBAC).
- **Database:** PostgreSQL (Schema thiết kế dựa trên UUID).
- **Cache:** Redis (Tùy chọn ở MVP, giúp tối ưu hiệu năng).
- **Realtime:** WebSocket / Polling (Tùy chọn cho các tính năng realtime).

---

## 🏗️ II. CHI TIẾT 8 MODULE & LUỒNG NGHIỆP VỤ LÕI

### 🔐 MODULE 1: Authentication & User Management
- **Trạng thái:** Đã hoàn thiện (Demo-ready) ✅
- **Chức năng chính:** 
  - Đăng ký / Đăng nhập qua Email + Password.
  - Double Opt-in (Xác thực qua email).
  - Sử dụng JWT Access Token + Refresh Token (kèm cơ chế rotation & revoke session).
  - Quản lý Profile (Đổi Avatar, Full name, Preferred language).
  - Phân quyền RBAC (STUDENT / TEACHER / ADMIN).
  - Cơ chế Soft delete & Audit tracking (Ghi nhật ký thay đổi).
- **Luồng nghiệp vụ:** Đăng ký → Xác thực email → Đăng nhập → Quản lý profile → Logout / Revoke sessions.
- **Gợi ý nâng cấp (Phase 2):** 
  - **Social login:** Tích hợp Google, Facebook để giảm ma sát đăng ký.
  - **Forgot password:** Luồng reset hoàn chỉnh qua mã OTP hoặc Link.

### 📚 MODULE 2: Course & Lesson Management
- **Trạng thái:** Đã hoàn thiện (Demo-ready) ✅
- **Chức năng chính:**
  - **Course:** CRUD khóa học, hỗ trợ title/desc đa ngôn ngữ, JLPT level, giá (free/paid), thumbnail, trạng thái Draft/Published.
  - **Lesson:** CRUD bài học, sắp xếp theo `order_index`.
  - **LessonBlock:** Đơn vị nội dung linh hoạt nhất (Video, Text, Audio, Quiz…) với `order_index`.
  - Lọc và tìm kiếm khóa học (theo Level, Giá).
  - Mở khóa nội dung trả phí sau khi bản ghi Enrollment được xác nhận thành công.
- **Luồng nghiệp vụ:** Teacher tạo Course → Thêm Lessons & Blocks → Publish → Student Filter & Enroll → Học bài.
- **Gợi ý nâng cấp:** Recommended Courses (Gợi ý theo JLPT), Teacher Resources (Upload PDF đính kèm), Course Teaser (Cho phép học thử bài đầu tiên).

### 🎓 MODULE 3: Learning Experience & Progress
- **Trạng thái:** Đã hoàn thiện (Demo-ready) ✅
- **Chức năng chính:**
  - Tích hợp trình phát đa phương tiện: Video player, Audio player, Text reader.
  - Theo dõi tiến độ khóa học: Mark as Completed (Thủ công / Tự động cập nhật `%` realtime).
  - Lưu giữ `last_accessed` để xác định vị trí học gần nhất.
  - Quiz tích hợp (Multiple choice, Matching, Listening, Fill in blank).
- **Gợi ý nâng cấp:** Auto-Complete Logic (tự hoàn thành khi xem ≥ 80–90% video), Continue Learning (Nút học tiếp ngay trên Dashboard), Personal Notes (Ghi chú cá nhân).

### 📖 MODULE 4: Knowledge Base (Dictionary)
- **Trạng thái:** Đã hoàn thiện (Demo-ready) ✅
- **Chức năng chính:**
  - **Tra cứu sâu:** Kanji (Radical, Onyomi/Kunyomi, Stroke order), Vocabulary (Audio, Nghĩa Vi/En, Part of speech), Grammar (Pattern, Giải thích tiếng Việt).
  - **Curriculum Tracking:** Tra cứu và lọc nội dung theo giáo trình (Minna no Nihongo, Sou Matome, Shinkanzen).
  - **Community Mining:** Cho phép người dùng đóng góp ví dụ, ý nghĩa mới (Duyệt bởi Admin).
  - **Notebook:** Lưu trữ kiến thức cá nhân ("Add to Notebook", "Add to SRS").
- **Gợi ý nâng cấp:** Stroke Animation (Hiển thị diễn họa cách viết qua KanjiVG), Related Items (Sentence mining), Furigana Support.

### 🧠 MODULE 5: Review & Practice (SRS)
- **Trạng thái:** Đã hoàn thiện (Demo-ready) ✅
- **Chức năng chính:**
  - **My Notebook:** Quản lý Flashcard cá nhân.
  - **Thuật toán SM-2:** Lõi tự động tính toán `interval`, `due_date`, `ease_factor`, `reps` cho từng thẻ.
  - **Review hàng ngày:** Giao diện Flip card, đánh giá mức độ nhớ 1–5.
- **Gợi ý nâng cấp:** Tích hợp thuật toán FSRS, Review Insights (Báo cáo điểm mạnh/yếu), Daily Limit (Giới hạn thẻ học để tránh overwhelm).

### 💳 MODULE 6: Monetization & Notification
- **Trạng thái:** Xử lý vận hành & Doanh thu.
- **Chức năng chính:**
  - Tích hợp cổng thanh toán **VNPay**.
  - Cơ chế Unlock khóa học tức thì qua Webhook/IPN.
  - Hệ thống Notification (In-app + Email) để thông báo thanh toán thành công, nhắc nhở học hàng ngày, achievement.
- **Gợi ý nâng cấp:** Bundle Courses (Bán combo), Smart Reminders (Nhắc học cá nhân hóa).

### 🛠️ MODULE 7: Administration & Analytics
- **Trạng thái:** Quản trị toàn diện.
- **Chức năng chính:**
  - Quản lý thực thể: User, Role, Course, Payment.
  - **Quick Actions:** Nút tắt để Reset tiến độ học, Unlock khóa học thủ công hoặc Khóa tài khoản nhanh.
  - **Audit Log:** Lưu vết chi tiết (lưu `old_values` và `new_values`) bằng JSON để truy vết sai sót.
  - Báo cáo thống kê: Doanh thu, User activity, Course phổ biến.

### 🎮 MODULE 8: Gamification & Enhancement
- **Trạng thái:** Tăng cường tính "gây nghiện" học tập (Retention).
- **Chức năng chính:**
  - **XP System:** Nhận điểm khi học và làm Quiz.
  - **Streak:** Theo dõi số ngày học liên tục (Loss aversion logic).
  - **Virtual Pet & Building:** Ý tưởng nuôi thú ảo (Shiba) hoặc xây dựng ngôi nhà Nhật Bản của riêng mình để tăng tính gắn kết.
  - **Badge System:** Vinh danh thành tựu học tập.
  - Hệ thống bình luận (Comment) đa ngôn ngữ.
- **Gợi ý nâng cấp:** Leaderboard, Daily Quest (VD: "Học 30 từ mới hôm nay").

---

## 📊 III. MAPPING DATABASE & TÍNH NĂNG

Bảng sau liệt kê sự tương quan trực tiếp giữa Module, Tính năng và Bảng trong Database (Dựa trên UUID Schema):

| Module | Tính năng cốt lõi | Bảng Database liên quan |
| :--- | :--- | :--- |
| **1. Auth** | Đăng ký, Đăng nhập, Profile, RBAC | `users`, `roles`, `user_roles` |
| **2. Course** | Tạo khóa học, Bài học, Học viên đăng ký | `courses`, `lessons`, `lesson_blocks`, `enrollments` |
| **3. Progress** | Theo dõi tiến trình học, Làm Quiz | `enrollments`, `lesson_progress`, `lesson_block_progress`, `quizzes` |
| **4. Dictionary** | Tra từ điển, Ngữ pháp, Hán tự | `kanji`, `vocabulary`, `grammar_points` |
| **5. SRS** | Sổ tay cá nhân, Ôn tập bằng thẻ lật | `user_notebook`, `flashcards`, `flashcard_reviews` |
| **6. Payment** | Thanh toán VNPay, Gửi thông báo | `payments`, `notifications` |
| **7. Admin** | Ghi lại lịch sử hoạt động hệ thống | `audit_log` |
| **8. Gamification** | XP, Streak, Tặng huy hiệu, Bình luận | `users`, `badges`, `user_badges`, `comments` |

---

## 🚀 IV. PHẠM VI MVP & LỘ TRÌNH "ELITE PATH"

### 1. Phạm vi MVP (Phase 1) vs Phase 2
Để giữ cho MVP khả thi, các tính năng sau đã được thiết kế sẵn cấu trúc nhưng sẽ chỉ **triển khai ở Phase 2**:
- Lịch sử làm Quiz (Quiz attempt history nâng cao).
- Real-time Quiz full session (Thi thử thời gian thực).
- JLPT Mock Exam full (Đề thi thử JLPT hoàn chỉnh).
- Phân tích điểm yếu (Weak Point Analysis bằng AI).
- AI Recommendation & Đọc báo Nhật (Articles).
- Bảng xếp hạng (Leaderboard).
- **Elasticsearch nâng cao** và nhận diện chữ viết tay Kanji (Handwriting recognition).

### 2. Phân tích đối chiếu: SakuraLearn vs. JD "Intern Siêu Nhân"
Dự án được định hướng không chỉ là một App học tiếng Nhật, mà là một **"Bản hồ sơ năng lực sống"** chứng minh khả năng thiết kế hệ thống Enterprise.

| Yêu cầu từ JD Doanh Nghiệp | Trạng thái SakuraLearn hiện tại | Đánh giá năng lực |
| :--- | :--- | :--- |
| **Backend:** Java, RESTful | Sử dụng **Java 21, Spring Boot 3.4+**. | ✅ Vượt mong đợi (Sử dụng Tech stack mới nhất). |
| **Database:** Oracle, Redis, ES | Đã dùng **PostgreSQL, Redis**. | 🟡 Đạt 60% (Cần thêm Elasticsearch ở Phase 2). |
| **DevOps:** K8s, Docker, CI/CD | Đã có **Docker Compose, GitHub Actions**. | ✅ Vượt mong đợi với một cá nhân. |
| **Microservices:** Phân tán | Monolith modular, đã tích hợp **Kafka**. | 🟡 Tiềm năng (Sẵn sàng tách Service khi cần). |
| **Security:** JWT, OAuth2 | Có **JWT + RBAC + Google OAuth2**. | ✅ Đạt chuẩn bảo mật khắt khe. |

### 3. Phân tích Lỗ hổng (Gap Analysis) & Lộ trình Nâng cấp 3 Giai đoạn
Để lấp đầy lỗ hổng và biến dự án thành cấp độ Enterprise, lộ trình (Roadmap) được chia làm 3 giai đoạn:

#### 📍 Giai đoạn 1: Củng cố "Nội lực" (Search Performance & Data Pipeline)
- **Vấn đề:** PostgreSQL không đủ nhanh cho việc tìm kiếm toàn văn bản (Full-text search) trên hàng trăm ngàn bản ghi từ điển.
- **Hành động:** Nâng cấp Module 4, đưa toàn bộ dữ liệu KanjiDic, JMdict vào **Elasticsearch**. Xây dựng **ETL Pipeline** tự động hóa quy trình đẩy dữ liệu.
- **Mục tiêu:** Xử lý Big Data, tìm kiếm dưới 100ms.

#### 📍 Giai đoạn 2: Cloud & DevOps (Infrastructure Orchestration)
- **Vấn đề:** Deploy bằng Docker Compose chỉ phù hợp cho server nhỏ, không tự động phục hồi (self-healing) khi sập.
- **Hành động:** Nâng cấp CI/CD, đóng gói hệ thống và deploy lên một cụm **Kubernetes (Minikube / K8s)**, sử dụng Nginx làm Load Balancer.
- **Mục tiêu:** Vận hành hệ thống chịu tải cao, đạt chuẩn DevOps.

#### 📍 Giai đoạn 3: Distributed System & BI (Hệ thống phân tán)
- **Vấn đề:** Hệ thống thông báo và Audit đang xử lý đồng bộ hoặc in-memory, có thể làm chậm server chính.
- **Hành động:** Sử dụng **Kafka** để tách rời Notification Service. Tích hợp công cụ BI như **Grafana** để trực quan hóa dữ liệu kinh doanh.
- **Mục tiêu:** Thiết kế hệ thống Event-driven hoàn chỉnh, báo cáo realtime.

> **Tổng kết:** Khi đi đúng theo Master Specification và Lộ trình này, SakuraLearn hoàn toàn đáp ứng được các tiêu chuẩn khắt khe nhất của một hệ thống thương mại cấp độ doanh nghiệp.
