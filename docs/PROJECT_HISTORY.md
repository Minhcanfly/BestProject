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

## Giai đoạn 3 (Phase 3): Đồng bộ Đặc tả Sản phẩm & Tối ưu hóa Tài liệu
**Mục tiêu:** Chốt hạ bản đặc tả cuối cùng và tinh gọn hệ thống tài liệu dự án để dễ quản lý.
**Các công việc đã hoàn thành:**
1. **Chốt đặc tả Sản phẩm:** Thiết lập [FINAL_PRODUCT_SPECIFICATION.md](file:///d:/BestProject/docs/FINAL_PRODUCT_SPECIFICATION.md) làm nguồn chân lý duy nhất cho 8 Module của SakuraLearn.
2. **Chốt đặc tả Công nghệ:** Cập nhật [TECHNOLOGY_STACK.md](file:///d:/BestProject/docs/TECHNOLOGY_STACK.md) v1.0, xác định rõ lộ trình áp dụng công nghệ (MVP vs Phase 2).
3. **Tổng hợp Tiêu chuẩn Kỹ thuật:** Gộp các bản Kit lẻ thành [ENGINEERING_STANDARDS.md](file:///d:/BestProject/docs/ENGINEERING_STANDARDS.md) (Quy mô chuẩn cho cả Backend & Frontend).
4. **Tổng hợp Vận hành:** Gộp các tài liệu hướng dẫn cài đặt và CI/CD thành [OPS_RUNBOOK.md](file:///d:/BestProject/docs/OPS_RUNBOOK.md).
5. **Vệ sinh dữ liệu:** Xóa các file bản nháp (SRS.md, README cũ) và các file nguồn đã được gộp để đảm bảo thư mục `docs` luôn tinh gọn và chuyên nghiệp.
