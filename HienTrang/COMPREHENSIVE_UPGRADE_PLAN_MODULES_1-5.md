# 🚀 SAKURALEARN: TỔNG QUY HOẠCH NÂNG CẤP TOÀN DIỆN (FEATURES & INFRASTRUCTURE)

Tài liệu này là sự kết hợp giữa **Nâng cấp Tính năng (Features/UX)** và **Nâng cấp Hạ tầng (Infrastructure/DevOps)**, nhằm đưa dự án đạt chuẩn Enterprise theo Master Docs 00 & 01 và đáp ứng các JD cao cấp.

Last updated: 2026-05-20

---

## 🏗️ PHẦN I: NÂNG CẤP TÍNH NĂNG & TRẢI NGHIỆM (WHAT TO BUILD)

### 🔐 1. Module 1: Xác thực & Bảo mật

**Đã có trong codebase:**
- Auth/RBAC/JWT/email verification/reset password/OAuth hooks.
- BCrypt password hashing.
- Spring Security filter chain + `@PreAuthorize` (một phần).

**Cần nâng cấp:**
- [ ] **Token Storage Hardening**: Chuyển JWT từ `localStorage` sang HttpOnly Secure SameSite Cookie để phòng chống XSS.
- [ ] **Multi-session Management**: Giao diện quản lý và đăng xuất từ xa các thiết bị đang đăng nhập.
- [ ] **Account Locking**: Cơ chế khóa tài khoản sau 5 lần đăng nhập sai liên tiếp, bảo vệ dựa trên IP.
- [ ] **DTO Strict Enforcement**: Rà soát 100% API để đảm bảo không lộ Entity trực tiếp ra ngoài (đã lên kế hoạch trong [Phase 2 Step 1 Task 4](file:///d:/BestProject/HienTrang/PHASE_2_STEP_1_PLAN.md)).
- [ ] **Reset Password via Body**: Chuyển `newPassword` từ query param sang JSON body (đã ghi nhận trong audit, **đã sửa ở P0**).

### 📚 2. Module 2: Hệ sinh thái Khóa học

**Đã có trong codebase:**
- Course CRUD, Lesson/LessonBlock management, AI Syllabus backend API, publishing basics, review/rating.
- `CourseMapper` + `CourseResponse` DTO (một phần).

**Cần nâng cấp:**
- [ ] **AI Syllabus v2 UI**: Giao diện kéo-thả để AI tự động sắp xếp lộ trình học theo mục tiêu (Backend API đã sẵn sàng tại `AiSyllabusController`).
- [ ] **Course Publish Workflow**: Hệ thống phê duyệt trạng thái `DRAFT` -> `PENDING` -> `PUBLISHED` để tránh khóa học hiện lên ngay khi vừa tạo.
- [ ] **Teacher Dashboard**: Thống kê doanh thu và phản hồi học viên thời gian thực (thuộc Phase 2-3, sau khi có Payment).

### 🎓 3. Module 3: Trải nghiệm học tập

**Đã có trong codebase:**
- Learning view, block progress, resume timestamp, quiz, personal notes.
- Enrollment guard đã được hardened ở P0.

**Cần nâng cấp:**
- [ ] **Advanced Personal Notes**: Trình soạn thảo Rich Text (Markdown) trong lúc học, tách biệt trực quan khỏi Flashcard.
- [ ] **Video/Audio Completion Threshold**: Đánh dấu hoàn thành chỉ khi xem/nghe qua 85% thời lượng.
- [ ] **Smart Auto-completion**: WebSocket đồng bộ tiến độ tức thì giữa các thiết bị (Phase 3+).
- [ ] **Motivational UI**: Nâng cấp hiệu ứng khích lệ và hệ thống nhắc học thông minh.

### 📖 4. Module 4: Kho tri thức (Smart Dictionary)

**Đã có trong codebase:**
- Dictionary browsing/search (Kanji/Vocab/Grammar) với romaji-to-hiragana conversion.
- Notebook folders, saved items, ownership enforcement.

**Cần nâng cấp:**
- [ ] **Batch Hydration**: Giải quyết N+1 query bằng `findByIdIn(List<UUID>)` thay vì truy vấn lẻ trong vòng lặp (đã lên kế hoạch trong [Phase 2 Step 1 Task 7 — ItemHydrator Strategy](file:///d:/BestProject/HienTrang/PHASE_2_STEP_1_PLAN.md)).
- [ ] **Search Indexing**: Thêm PostgreSQL GIN Index cho `word_ja`, `meaning_vi` để tối ưu tìm kiếm. Elasticsearch chỉ đưa vào khi data/search thực sự cần.
- [ ] **Interactive Stroke Animation**: Diễn họa nét vẽ Kanji sinh động bằng `hanzi-writer` (Phase 3+).
- [ ] **Handwriting Recognition**: Tra cứu Kanji bằng cách vẽ tay trên Canvas (Phase 3+).
- [ ] **Fuzzy Search**: Tìm kiếm mờ thông minh, tự sửa lỗi chính tả cho người dùng (Phase 3+).

### 🧠 5. Module 5: Hệ thống SRS Elite

**Đã có trong codebase:**
- SM-2 style review, daily limit, review UI.
- `SrsCalculatorService` đã được tách biệt và có 6 unit test scenarios.

**Cần nâng cấp:**
- [ ] **Memory Optimization**: Nâng cấp từ SM-2 lên thuật toán FSRS (tiên tiến nhất hiện nay) — Phase 3+.
- [ ] **Review Insights**: Biểu đồ nhiệt (Heatmap) và dự báo ngày quên từ (Forgetting Curve) — Phase 2+.
- [ ] **DRY Refactoring**: Extract `preprocessSearchQuery()` helper trong DictionaryService (đã lên kế hoạch trong [Phase 2 Step 1 Task 6](file:///d:/BestProject/HienTrang/PHASE_2_STEP_1_PLAN.md)).

---

## 📅 PHẦN II: CHI TIẾT HẠ TẦNG & LỘ TRÌNH DEVOPS (HOW TO SCALE)

### 🛠️ 1. Hạ tầng & Chất lượng Code (Cross-Module)

**Đã có:**
- Docker Compose chạy PostgreSQL, Redis, Kafka, Mailpit, MinIO.
- CI/CD cơ bản (GitHub Actions: frontend build, backend Maven package).
- Spring profiles: `dev`, `test`, `prod`.
- 12 unit tests passed (SRS, Sanitizer, Ownership, Progress).

**Cần nâng cấp:**
- [ ] **Unit Testing**: Đạt tối thiểu **80% Coverage** (JUnit/Mockito) cho các nghiệp vụ lõi — nhưng ưu tiên test có ý nghĩa, không chạy theo con số.
- [ ] **API Documentation**: Nâng cấp Swagger UI lên chuẩn OpenAPI 3.0 — sẽ được giải quyết tự động khi loại bỏ wildcard `ResponseEntity<?>` (Phase 2 Step 1 Task 4).
- [ ] **Data Integrity Audit**: Script định kỳ kiểm tra sai lệch ngôn ngữ và dữ liệu rác.

### 🏗️ 2. Hạ tầng & DevOps (JD Matching Requirements)

> [!WARNING]
> Các mục dưới đây thuộc **Phase 3-4**. Không triển khai cho đến khi core Module 1-5 đã được chuẩn hóa API và test coverage đạt yêu cầu.

#### ⚡ Hiệu suất & Caching (Redis) — Phase 2
- [ ] **Course Caching**: Lưu trữ danh sách khóa học và LessonBlocks vào **Redis** để giảm tải cho Postgres.
- [ ] **Session Management**: Chuyển quản lý Session/Refresh Token sang Redis để hỗ trợ Horizontal Scaling.

#### 🔍 Tìm kiếm thông minh (Elasticsearch) — Phase 3
- [ ] **Dictionary Search**: Đồng bộ dữ liệu từ Postgres sang **Elasticsearch** để hỗ trợ Fuzzy Search, gợi ý từ với tốc độ < 50ms.
- Trước mắt sử dụng PostgreSQL Full-text/GIN index.

#### 🐳 DevOps & Cloud Native (K8s) — Phase 4
- [ ] **Kubernetes (K8s)**: Triển khai dự án lên Cluster (Minikube/K3s) với Deployment, Service, Ingress và ConfigMaps.
- [ ] **CI/CD Pipeline**: Tự động hóa hoàn toàn luồng **GitHub Actions** (Build -> Test -> Dockerize -> Deploy).

#### 📐 Kiến trúc Microservices (Migration Plan) — Phase 4
- [ ] **Service Splitting**: Tách Module 4 (Dictionary) và Module 5 (SRS) thành Microservices riêng biệt, giao tiếp qua **REST** hoặc **gRPC**.
- [ ] **API Gateway**: Sử dụng Nginx hoặc Spring Cloud Gateway để điều phối request.
- Chỉ tách khi Monolith Modular đã đạt giới hạn tải hoặc phân chia đội ngũ phát triển rõ ràng.

#### 📊 Data Warehouse & BI (ETL) — Phase 4
- [ ] **Hệ thống báo cáo**: Xây dựng luồng **ETL** đơn giản tổng hợp dữ liệu tiến độ, doanh thu, retention sang bảng "Flat" phục vụ Dashboard quản trị.

---

### 🧊 3. Lộ trình triển khai theo Giai đoạn (Cập nhật)

#### 🔹 Phase 2: Professionalization (Đang triển khai 🚀)
- Chuẩn hóa API Contract (`ApiResponse<T>`, loại bỏ wildcard, DTO Decoupling).
- Áp dụng Design Patterns (Strategy, Factory, Template Method).
- Nâng cấp `GlobalExceptionHandler`.
- Thiết kế Payment State Machine (thiết kế trước, code sau).
- Redis Caching cho Dictionary/Course hot data.

#### 🔹 Phase 3: Commercial Features (Sau Phase 2)
- Tích hợp **VNPay Sandbox** đầy đủ (create payment, return URL, IPN webhook, HMAC-SHA512 checksum, idempotency, auto enrollment unlock).
- **Gamification Engine v1** (XP event table, streak server-side, badge rules, daily quest).
- **Notification v1** (in-app + email).
- **Elasticsearch** nếu data/search thực sự cần.

#### 🔹 Phase 4: Enterprise & Distributed (Sau Phase 3)
- Tích hợp **Kafka** cho notification/audit/payment events.
- **BI Dashboard** / revenue / retention / cohort analysis.
- Docker image tối ưu + CI/CD deploy tự động.
- Nginx reverse proxy / load balancing.
- Kubernetes / Microservices chỉ khi có lý do tải/ownership rõ ràng.

---

## 🏆 TIÊU CHUẨN ĐẦU RA (DEFINITION OF DONE)
- [ ] Tuân thủ 100% Layered Architecture (Doc 01).
- [ ] Phản hồi API trung bình < 200ms. Khả năng chịu tải > 500 CCU.
- [ ] Tài liệu OpenAPI 3.0 hoàn chỉnh và chuyên nghiệp (sẽ tự động đạt khi hoàn thành Phase 2 Step 1).
- [ ] Toàn bộ tài liệu phản ánh đúng trạng thái code (không lệch pha).
- [ ] Demo flow vàng chạy mượt end-to-end không lỗi.
