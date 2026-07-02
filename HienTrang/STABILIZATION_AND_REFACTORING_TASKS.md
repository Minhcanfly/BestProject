# 🛠 TỐI ƯU HÓA & CỦNG CỐ HỆ THỐNG (STABILIZATION & REFACTORING)

Tài liệu này liệt kê các vấn đề kỹ thuật còn tồn đọng và kế hoạch tối ưu hóa mã nguồn dựa trên phân tích thực tế giữa tài liệu và code. Đây là bước đệm cuối cùng trước khi chuyển sang các Module thương mại (Thanh toán).

**Chỉ mục backlog đầy đủ (2026-05-23):** [docs/README.md](../docs/README.md) · [docs/DOCS_CODE_CROSS_REFERENCE.md](../docs/DOCS_CODE_CROSS_REFERENCE.md)

Last updated: 2026-05-23

---

## 🔴 1. Vấn đề ưu tiên cao — P0 (Must-fix for Professionalism)

### 🧪 Hệ thống Unit Test (Backend)
- [x] **SRS Logic Test**: Viết unit test cho thuật toán SM-2 (kiểm tra interval, ease factor sau các mức đánh giá 1-5). ✅ *Đã hoàn thành — 6 test scenarios trong `SrsCalculatorServiceTest`.*
- [x] **Progress Calculation Test**: Test logic tính toán % tiến độ Lesson và Course (bao gồm cả trường hợp Video > 85%). ✅ *Đã hoàn thành — enrollment guard + progress recalculation tests.*
- [x] **Ownership/Security Tests**: Test IDOR prevention cho Notebook folders, Flashcard reviews, Progress updates. ✅ *Đã hoàn thành — notebook ownership checks.*
- [x] **Text Sanitizer Tests**: Test sanitize nội dung user-generated (review, notes, folder names). ✅ *Đã hoàn thành.*
- [ ] **Service CRUD Tests**: Test các nghiệp vụ cốt lõi của CourseService và NotebookService. *(Chưa làm — thuộc Phase 2 khi nâng test coverage.)*
- [ ] **Auth Integration Tests**: Test reset password flow, refresh token rotation, role guard. *(Chưa làm — thuộc Phase 2.)*

### 🏗 Refactoring (Clean Code)
- [x] **Tách SRS Calculator**: Di chuyển logic tính toán SM-2 từ `NotebookServiceImpl` sang `SrsCalculatorService`. ✅ *Đã hoàn thành.*
- [x] **Test Profile Fix**: Backend test profile không còn tự tạo PostgreSQL schema trên H2. ✅ *Đã hoàn thành.*
- [x] **Maven Wrapper Fix**: Sửa lỗi `mvnw.cmd` trên PowerShell. ✅ *Đã hoàn thành.*
- [ ] **Migration Cleanup**: Đảm bảo toàn bộ Script Flyway (`V1` -> `V7`) chạy mượt mà trên môi trường sạch (H2 hoặc Postgres mới). *(Chưa kiểm chứng đầy đủ.)* — Chi tiết: [docs/DATA_AND_MIGRATION_TASKS.md](../docs/DATA_AND_MIGRATION_TASKS.md) (gồm lỗi `radical_id` V2/V3).

### 🔒 Security Hardening
- [x] **IDOR Prevention**: Gài ownership checks vào notebook folders, flashcard reviews, progress updates. ✅
- [x] **Input Sanitization**: Áp dụng `TextSanitizer` cho nội dung do Teacher/User nhập. ✅
- [x] **Reject Negative Timestamps**: Media resume timestamp < 0 bị từ chối. ✅
- [ ] **Token Storage**: Chuyển JWT từ `localStorage` sang HttpOnly Secure Cookie. *(Ghi nhận — thuộc Phase 2 production hardening.)*
- [ ] **Admin Seeder Guard**: Giới hạn DataSeeder chỉ chạy trong profile `dev`, không log mật khẩu plaintext. *(Ghi nhận — thuộc Phase 2.)*

---

## 🟡 2. Hoàn thiện tính năng — P1 (Feature Hardening, sau khi P0 ổn định)

### 📚 Module 2: Quản lý Khóa học
- [ ] **AI Syllabus UI**: Kích hoạt và thiết kế giao diện kéo-thả cho tính năng AI Syllabus ở Frontend (Backend API đã sẵn sàng).
- [ ] **Course Publish Workflow**: Xây dựng logic phê duyệt `DRAFT -> PENDING -> PUBLISHED`. Tránh việc khóa học hiện lên ngay lập tức khi vừa tạo.

### 🎓 Module 3: Trải nghiệm học tập
- [ ] **Personal Notes UI**: Nâng cấp trình soạn thảo ghi chú trong bài học (hỗ trợ Markdown), tách biệt rõ ràng với Thẻ Flashcard (Module 5) để tránh nhầm lẫn cho người dùng.
- [ ] **Video/Audio Completion Threshold**: Chỉ đánh dấu hoàn thành khi người dùng xem/nghe qua 85% thời lượng.

### 📖 Module 4 & 5: Dictionary & SRS
- [ ] **Batch Hydration**: Giải quyết N+1 query khi lấy dữ liệu flashcard theo danh mục. Sử dụng `findByIdIn(List<UUID>)` thay vì truy vấn lẻ trong vòng lặp.
- [ ] **Admin Audit Log Viewer**: Xây dựng giao diện cơ bản xem log lịch sử thao tác hệ thống.

### 🎨 Frontend Polish
- [ ] **Trau chuốt SRS Review Screen**: Thêm animation completion, streak display, và session summary.
- [ ] **Course Detail Page**: Cải thiện layout đánh giá/rating, thông tin giảng viên.

---

## 🟢 3. Cải thiện hiệu năng & Dữ liệu

- [ ] **Search Optimization**: Thêm GIN Index cho các cột `word_ja`, `meaning_vi` trong bảng `vocabulary` để tăng tốc độ tìm kiếm khi data lớn (PostgreSQL Full-text Search trước, Elasticsearch sau).
- [ ] **Furigana Placeholder**: Chuẩn bị cấu trúc dữ liệu cho Furigana trong tương lai (không bắt buộc cho Demo hiện tại).
- [ ] **Database Seed Demo**: Chuẩn hóa bộ dữ liệu mẫu chất lượng (N5 Kanji, Vocabulary, Grammar) để demo luồng vàng mượt mà.
- [ ] **README + Screenshots**: Trau chuốt README với ảnh chụp màn hình, GIF demo, và badge CI status.

---

## 🔵 4. Phase 2 — Professionalization (Chuyên nghiệp hóa API & Architecture)

> Các hạng mục này **chỉ bắt đầu sau khi toàn bộ P0 và P1 đã chốt**. Chi tiết kỹ thuật nằm tại [PHASE_2_STEP_1_PLAN.md](file:///d:/BestProject/HienTrang/PHASE_2_STEP_1_PLAN.md).

### API Contract Standardization (8 Tasks)
- [ ] **Task 1**: Tạo `ApiResponse<T>` wrapper thống nhất cho toàn bộ API.
- [ ] **Task 2**: Tạo Response DTOs cho Dictionary (thay thế Entity exposure: `Kanji`, `Vocabulary`, `GrammarPoint`).
- [ ] **Task 3**: Bổ sung Request DTOs mới + hài hòa Jakarta Validation annotations.
- [ ] **Task 4**: Refactor 19 Controllers (loại bỏ wildcard `ResponseEntity<?>`, typed `ApiResponse`).
- [ ] **Task 5**: Nâng cấp `GlobalExceptionHandler` (bắt validation errors, malformed JSON, ẩn stacktrace).
- [ ] **Task 6**: Extract `preprocessSearchQuery()` helper trong DictionaryService (Template Method — DRY).
- [ ] **Task 7**: Tạo `ItemHydrator` Strategy cho NotebookService (loại bỏ 2 switch-case lặp).
- [ ] **Task 8**: Tạo `ChatModelFactory` cho AI Service (Factory + Registry thay thế 3 `@Qualifier` hardcode).

### Tiếp theo Phase 2
- [ ] **Test Coverage nâng cao**: Phủ unit test có ý nghĩa cho CourseService, NotebookService, AuthService.
- [ ] **Redis Caching**: Cache Dictionary hot data, Course list.
- [ ] **Notification v1**: In-app notification table + Bell UI + email events.
- [ ] **Payment Design**: Thiết kế Payment State Machine, Idempotency Key, Transaction Log (thiết kế trước, code sau).

---

## 📈 Kế hoạch thực hiện (Execution Priority)

**Ngay bây giờ (Phase 2 - Step 1 đang active):**
1. Triển khai Task 1-8 API Contract & Design Patterns.
2. Compile và verify sau mỗi task.

**Sau khi Phase 2 Step 1 xong:**
1. Chốt luồng Demo Vàng (Gold Flow) và quay video demo.
2. Trau chuốt README + screenshots + database seed.
3. Triển khai Module 6 (VNPay) hoặc Module 8 (Gamification) tùy hướng đi career.

> [!TIP]
> **Lời khuyên:** Việc có bộ Unit Test cho SRS, ownership checks, và API Contract chuẩn chỉ sẽ giúp bạn "ghi điểm tuyệt đối" khi giải thích về kiến trúc hệ thống trong các buổi phỏng vấn. Nhà tuyển dụng đánh giá cao một dự án nhỏ hơn nhưng hoạt động tốt, được kiểm thử kỹ và code sạch, hơn là một dự án rộng nhưng nhiều luồng chưa hoàn thiện.
