# Lịch sử các Giai đoạn (Implementation Phases History)

Đây là kho lưu trữ lại các bản Kế hoạch (Implementation Plan) cũ từ đầu dự án. Trợ lý AI sẽ tổng hợp lại vào đây để bạn tiện ôn tập và theo dõi lộ trình xây dựng Backend của mình.

---

## Giai đoạn 1 (Phase 1): Thiết lập Nền móng Cơ sở Hạ tầng & CI/CD
**Mục tiêu:** Dựng bộ khung dự án chuẩn doanh nghiệp từ con số 0.
**Các công việc đã hoàn thành:**
1. **Khởi tạo Dự án:** Dùng Spring Initializr tạo dự án Java 21, Spring Boot 3.4.
2. **Quản lý mã nguồn:** Thiết lập Git, `.gitignore` cho Monorepo và kết nối với Github.
3. **CI/CD Pipeline:** Tự động hóa kiểm thử bằng cách viết file `.github/workflows/backend-ci.yml`. Github Actions sẽ tạo ảo một rạp PostgreSQL/Redis để chạy bài Test mỗi khi bạn Push code.
4. **Hạ tầng ngầm (Docker):** Viết `docker-compose.yml` để tạo ra máy chủ nội bộ chứa PostgreSQL và Redis. Tuyệt đối không cài trực tiếp DB vào Windows.
5. **Database Migration:** Tích hợp Flyway và viết kịch bản SQL (`V1__Init_Auth_Tables.sql`) sử dụng `gen_random_uuid()` để chốt hạ cấu trúc bảng `User` và `Role`.
6. **Đa Ngôn Ngữ:**  Chuẩn bị API để phản hồi lỗi bằng tiếng Anh lẫn tiếng Nhật (`messages_en.properties`, `messages_ja.properties`).

*(Lưu ý: Để xem giải thích nguyên lý chi tiết của Giai đoạn 1, hãy đọc file `BACKEND_SETUP_GUIDE.md`)*

---

## Giai đoạn 2 (Phase 2): Xây dựng Lõi Bảo Mật (Spring Security 6 & JWT)
**Mục tiêu:** Tạo hệ thống cửa từ an ninh chốt chặn mọi API (Đăng nhập / Đăng ký).
**Các công việc đã hoàn thành:**
1. **Lớp Cốt Lõi (JWT):** Tạo `JwtUtils` (Máy đánh khóa/dịch mã thẻ từ JWT) và `JwtAuthFilter` (Ông bảo vệ đứng canh cửa chặn xem Request có mang JWT hợp lệ không).
2. **Lớp Cấu hình (Config):** Tạo `SecurityConfig` để thiết lập nội quy tòa nhà: Các đường dẫn gốc `/api/v1/auth/**` thì mở cửa tự do, các đường dẫn khác thì khóa chặt.
3. **Lớp Phiên Dịch (UserDetails):** Viết `UserDetailsImpl` và `UserDetailsServiceImpl` làm nhiệm vụ lấy dữ liệu User từ bảng Postgres dịch sang chuẩn của khung Spring Security.
4. **Lớp Nghiệp vụ (Service & Controller):** Viết `AuthService` (Xử lý mã hóa Password bcrypt, lưu tài khoản) và `AuthController` (Các điểm cuối REST API POST `/login`, `/register`).
5. **Lớp Chuẩn Hóa Lỗi (Exception Handler):** Bổ sung `GlobalExceptionHandler` kết hợp `ErrorResponse`. Mục đích để chặn toàn bộ lỗi mã nguồn đỏ loét của Java, biến chúng thành định dạng khối JSON thân thiện trả về cho Lập trình viên Frontend.
