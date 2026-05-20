# 📔 Quy Chuẩn Hạ Tầng & Vận Hành (Infrastructure & Operations)

Tài liệu này định nghĩa các quy tắc thiết lập hạ tầng ảo hóa, bảo mật môi trường và quy trình vận hành hệ thống **SakuraLearn**.

---

## 1. Ảo Hóa Docker & Quản Lý Biến Giao Diện

*   **Multi-stage Build (Java Backend):**
    Dockerfile của Spring Boot bắt buộc phải tách làm 2 giai đoạn (Build stage và Run stage) để giảm thiểu kích thước Docker Image xuống mức tối thiểu (chỉ chứa file jar và JRE siêu nhẹ, không chứa JDK và source code).
*   **Docker Compose Môi Trường Local:**
    Mọi container bổ trợ (PostgreSQL, MinIO) bắt buộc phải được định nghĩa trong [docker-compose.yml](file:///d:/BestProject/docker-compose.yml).
    *   *Volume persistence:* Phải mount thư mục data ra ngoài máy host (`./data/postgres:/var/lib/postgresql/data`) để tránh mất mát dữ liệu khi container bị hủy.
*   **Quản Lý Biến Môi Trường (.env):**
    *   Tuyệt đối không push các thông tin nhạy cảm (Database Password, JWT Secret Key, MinIO Credentials) lên GitHub.
    *   Tất cả cấu hình này phải được nạp thông qua file `.env` nằm ở thư mục gốc của dự án.
    *   Duy trì một file `.env.example` chứa các biến mẫu (không có giá trị thật) để lập trình viên mới clone dự án cấu hình nhanh.

---

## 2. Kiểm Soát Bảo Mật Tự Động (Quality Gate & SAST)

*   **Secrets Leak Scan:**
    Sử dụng **Gitleaks** làm pre-commit hook hoặc tích hợp CI/CD để chặn việc commit các token bí mật lên repository.
*   **Static Code Analysis (SAST):**
    *   Với Backend Java: Tích hợp công cụ **SpotBugs** hoặc **SonarQube** để phân tích tĩnh mã nguồn, phát hiện sớm các lỗ hổng bảo mật (như SQL Injection tiềm ẩn, Null Pointer Exception).
    *   Với Frontend React: Cấu hình ESLint với các quy tắc nghiêm ngặt về React Hooks và Security Check.

---

## 3. Quy Trình Release & Kịch Bản Rollback Hệ Thống

Trước khi thực hiện cập nhật phiên bản mới lên môi trường Staging/Production, lập trình viên và DevOps phải tuân thủ quy trình sau:

### Bước 1: Sao lưu (Backup)
*   Chạy cronjob hoặc lệnh thủ công sao lưu Database:
    ```bash
    pg_dump -h localhost -U username -d dbname -F c -b -v -f backup_file.dump
    ```
*   Sao lưu MinIO Storage (Các tệp tin đa phương tiện): Sử dụng công cụ `mc mirror` để tạo bản sao.

### Bước 2: Triển khai & Kiểm tra (Deploy & Verify)
*   Cập nhật Docker Image tag trong file `docker-compose.yml` và chạy `docker compose up -d`.
*   Kiểm tra logs thời gian thực để phát hiện lỗi khởi động: `docker compose logs -f --tail=100`.

### Kịch Bản Rollback Khẩn Cấp (Dưới 15 phút):
Nếu hệ thống gặp sự cố nghiêm trọng sau khi deploy (như sập hệ thống, lỗi logic nghiêm trọng):
1.  **Revert Code/Image:** Lập tức sửa file `docker-compose.yml` trỏ tag Image quay lại phiên bản ổn định trước đó.
2.  **Restart Containers:** Chạy `docker compose up -d` để khởi động lại bản cũ.
3.  **Restore DB (Nếu Migration bị lỗi tương thích ngược):**
    *   Dừng ứng dụng.
    *   Khôi phục lại Database từ file backup trước khi deploy bằng lệnh `pg_restore`.
    *   Khởi động lại ứng dụng.
