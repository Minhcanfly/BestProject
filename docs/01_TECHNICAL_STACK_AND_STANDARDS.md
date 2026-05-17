# 🛠️ SAKURALEARN - TECHNICAL STACK, STANDARDS & SYSTEM DESIGN (V3.0)

> **Lưu ý:** Tài liệu này là bách khoa toàn thư kỹ thuật (Technical Master Doc), được tổng hợp đầy đủ và chuẩn xác nhất từ 5 tài liệu: *TECHNOLOGY_STACK, ENGINEERING_STANDARDS, ADVANCED_SYSTEM_DESIGN_GUIDE, BACKEND_LOGIC_WALKTHROUGH, và OPS_RUNBOOK*. Nó định hình toàn bộ chuẩn mực code, kiến trúc hệ thống và quy trình vận hành.

---

## 💻 I. CÔNG NGHỆ LÕI (TECH STACK)

### 1. Phân nhóm công nghệ toàn diện
| Nhóm công nghệ | Công nghệ / Kỹ thuật | Mục đích chính |
| :--- | :--- | :--- |
| **Core Backend** | Java 21, Spring Boot 3.4+, JPA, Flyway | API, Business logic, ORM, Database Migration |
| **Frontend** | React.js (Vite), Tailwind CSS, Lucide | UI/UX, Role-based layout, CSR |
| **Database & Storage** | PostgreSQL 16, MinIO | Lưu trữ dữ liệu chính (UUID) và Object Storage (Media) |
| **Caching** | Redis 7, Spring Caching | Cache dữ liệu từ điển, SRS Queue, Session |
| **Messaging & Events** | Spring ApplicationEvent, Kafka | Event nội bộ (MVP) và Event-driven phân tán (Phase 3) |
| **Security** | Spring Security, JWT | Authentication, RBAC (3 Roles: Student, Teacher, Admin) |
| **DevOps & Infra** | Docker Compose, GitHub Actions, Mailpit | Local Dev, CI/CD, SMTP Email Testing |
| **Payment & AI** | VNPay, OpenAI API | Cổng thanh toán (M6), Gợi ý bài học/Phân tích (Phase 2) |

### 2. Chiến lược triển khai theo lộ trình
- **Giai đoạn MVP (0-2 tháng):** Ưu tiên Docker + PostgreSQL + Redis + MinIO + Flyway. Dùng `Spring ApplicationEvent` thay vì Kafka để tránh over-engineering.
- **Giai đoạn Pre-Prod (2-4 tháng):** Thêm WebSocket (Realtime), CDN (Tăng tốc Media), GitHub Actions (CI/CD).
- **Giai đoạn Production (4-8 tháng):** Triển khai Load Balancing (Nginx), Kafka (Background Jobs), Kubernetes (Scale hạ tầng).

---

## 🏗️ II. TIÊU CHUẨN KIẾN TRÚC VÀ CODE (ENGINEERING STANDARDS)

### 1. Tiêu chuẩn Backend (Domain-Driven Layering)
Hệ thống tuân thủ nghiêm ngặt mô hình phân lớp (Layered Architecture):
- **`controller`**: Xử lý HTTP request, mapping DTO, validation.
- **`service`**: Xử lý nghiệp vụ lõi (Business Logic), quản lý Transaction.
- **`repository`**: Giao tiếp Database thông qua Spring Data JPA.
- **`entity`**: Ánh xạ bảng CSDL.
- **`dto`**: Các object truyền tải dữ liệu. **Tuyệt đối không Expose Entity trực tiếp ra API.**
- **`security`**: Cấu hình phân quyền, Filters, mã hóa mật khẩu.
- **Error Handling**: Sử dụng `@RestControllerAdvice` làm Global Exception Handler, trả về JSON Error chuẩn và hỗ trợ đa ngôn ngữ (`messages.properties`).

### 2. Tiêu chuẩn Database
- **Khóa chính (PK):** Sử dụng **UUID** cho mọi bảng để tăng cường bảo mật và dễ dàng Scale/Merge Data.
- **Quản lý Schema:** Sử dụng **Flyway** (`V1.1__Mota.sql`). Tuyệt đối không dùng `hibernate.hbm2ddl.auto=update`.
- **Audit:** Mọi bảng lõi phải có: `created_at`, `updated_at`, `created_by`, `updated_by`.
- **Soft Delete:** Không xóa cứng dữ liệu. Sử dụng cờ `is_deleted = true`.

### 3. Tiêu chuẩn Frontend (React + Vite)
- **Cấu trúc thư mục `/src`:**
  - `components/`: UI nguyên tử (Button, Card...).
  - `contexts/`: Global State (AuthContext).
  - `hooks/`: Custom Hooks.
  - `layouts/`: AuthLayout, MainLayout.
  - `pages/`: Các màn hình hoàn chỉnh.
  - `services/`: Axios wrappers với Interceptors tự động đính kèm JWT Token.
- **Triết lý Thiết kế (Rich Aesthetics):** 
  - **Glassmorphism:** Sử dụng `backdrop-filter: blur(10px)` cho các thành phần nổi.
  - **Typography:** Font chữ hiện đại (Outfit, Inter).
  - **Micro-animations:** Thêm hiệu ứng hover, transition mượt mà (`0.3s ease`).

### 4. Tiêu chuẩn Chung
- **Bảo mật:** Không hardcode Secrets (Password, API Keys) trong code. Sử dụng Biến môi trường (`${DB_PASSWORD}`).
- **Git Flow:** Convention bắt buộc (`feat:`, `fix:`, `docs:`) và quy tắc nhánh (`feature/`, `hotfix/`).

---

## 🧠 III. THIẾT KẾ HỆ THỐNG NÂNG CAO (ADVANCED SYSTEM DESIGN)

### 1. Chiến lược Rendering (CSR vs SSR)
- **CSR (Client-Side Rendering):** Đang dùng React (Vite). Áp dụng cho các trang tương tác sâu như Learning View, Quiz, SRS Dashboard để tạo trải nghiệm mượt (SPA).
- **SSR (Server-Side Rendering):** Gợi ý nâng cấp dùng Next.js cho Course Landing Page, Blog để tối ưu SEO.

### 2. Chiến lược Caching Đa tầng
- **Database Cache:** Tối ưu PostgreSQL shared buffers.
- **Application Cache (Redis):** Dùng cơ chế *Cache-aside* cho kết quả tra cứu Dictionary. Quản lý *SRS Queue* (Lưu danh sách thẻ cần học hằng ngày) để Dashboard load tức thì. Cấu hình *Rate Limiting* chống Spam API.
- **CDN:** Đẩy ảnh/video tĩnh lên Edge servers của Cloudflare.

### 3. Kiến trúc Phân tán (Distributed Systems) & Orchestration
- **Kafka (Event-Driven):** Tách rời các tác vụ nặng. Ví dụ: Khi Student hoàn thành khóa học → Main App bắn sự kiện `course-completed` vào Kafka → Service Gamification nghe sự kiện cộng XP, Service Notification gửi Email. Đảm bảo hệ thống không bị nghẽn (Async).
- **Load Balancing:** Nginx / HAProxy phân tải dạng Round Robin.
- **Kubernetes (K8s) / OpenShift:** Tự động điều phối Container (Self-healing). Nếu một Node backend chết, K8s tự động spawn node mới.

---

## 🔐 IV. LUỒNG XỬ LÝ LÕI BACKEND (MODULE 1 WALKTHROUGH)

Module Auth (M1) được thiết kế làm "Xương sống bảo mật" cho toàn bộ hệ thống.

### 1. Database Schema M1
- Các bảng chính: `users`, `roles`, `user_roles`, `refresh_tokens`, `verification_tokens`, `password_reset_tokens`.
- Quan hệ Many-to-Many (`users` <-> `roles`) với FetchType EAGER.

### 2. Luồng Bảo mật (JwtAuthFilter)
1. Request chứa Header `Authorization: Bearer <Token>`.
2. `JwtAuthFilter` bóc tách Token, dùng `JwtService` để extract Username.
3. Validate Token (Kiểm tra hết hạn, chữ ký hợp lệ).
4. Nếu hợp lệ, tạo `UsernamePasswordAuthenticationToken` lưu vào `SecurityContextHolder`.

### 3. Luồng Nghiệp vụ Auth chính
- **Đăng ký (Double Opt-in):** Lưu User với `isActive = false` → Tạo `VerificationToken` UUID → Gửi Email HTML qua Mailpit.
- **Xác thực:** User click link → Đổi `isActive = true` → Xóa Token xác thực.
- **Đăng nhập:** Authenticate qua Spring `AuthenticationManager` → Sinh **JWT Access Token** (hạn ngắn) & **Refresh Token** (hạn dài lưu DB).

---

## ⚙️ V. HƯỚNG DẪN VẬN HÀNH & CI/CD (OPS RUNBOOK)

### 1. Quy trình Setup Môi trường Phát triển (7 Bước)
1. **Khởi động Infra:** `docker compose up -d` (Chạy Postgres, Redis, MinIO, Mailpit, Kafka).
2. **Database Migration:** Đảm bảo code SQL nằm trong `src/main/resources/db/migration` (Flyway tự động chạy).
3. **Cấu hình:** Chỉnh sửa `.env` và `application.yml` theo Profile (`dev`, `prod`).
4. **Mail Testing:** Truy cập `http://localhost:8025` (Mailpit) để xem email kích hoạt tài khoản.
5. **Storage:** Truy cập `http://localhost:9001` (MinIO) quản lý file tĩnh.
6. **Chạy Backend:** `./mvnw spring-boot:run`
7. **Chạy Frontend:** `npm install` → `npm run dev`

### 2. CI/CD Pipeline (GitHub Actions)
- Tự động kích hoạt khi push/PR vào nhánh `main` và `develop`.
- **Quy trình:** Setup Java/Node → Start Service Container (Postgres test) → Run Maven Tests → Build Artifacts.
- **Troubleshooting:**
  - Lỗi `FlywayException`: Do mismatch schema.
  - Lỗi `Failed to load ApplicationContext`: Kiểm tra chuỗi kết nối DB.

### 3. Lệnh bảo trì thường xuyên
- Khởi động lại toàn bộ Infra: `docker compose down -v` (Cảnh báo: Lệnh này xóa toàn bộ Data trong Docker Volumes) sau đó `docker compose up -d`.
- Xóa Cache hệ thống: `redis-cli flushall`.
- Build sạch lại source: `./mvnw clean package`.

> **Tổng kết:** Bộ tiêu chuẩn này bảo đảm SakuraLearn được phát triển nhất quán, an toàn và sẵn sàng Scale up thành nền tảng Enterprise bất kỳ lúc nào. Mọi thành viên đội ngũ bắt buộc phải nắm rõ tài liệu này.
### 4. Tiêu chuẩn Thanh toán (Payment Standards)
- **Idempotency**: Bắt buộc xử lý kiểm tra trùng lặp (Idempotency check) tại endpoint Webhook/IPN. Mỗi giao dịch chỉ được phép thay đổi trạng thái hệ thống một lần duy nhất.
- **Security**: Không bao giờ tin tưởng dữ liệu số tiền gửi từ Frontend; luôn xác thực lại từ Backend và Provider (VNPay).
