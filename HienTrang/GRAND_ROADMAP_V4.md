# 🗺️ SAKURALEARN: GRAND ROADMAP V4.0 (2026)

Lộ trình này định hướng sự phát triển của SakuraLearn từ một sản phẩm MVP (Minimum Viable Product) trở thành một hệ thống phân tán cấp doanh nghiệp (Enterprise Distributed System), đảm bảo tính thực chiến cao dựa trên kết quả rà soát thực tế.

---

## 🏁 PHASE 1: HOÀN THIỆN MVP & STABILIZATION (HIỆN TẠI)
*Mục tiêu: Đạt trạng thái Beta Demo-Ready, Module 1-5 chạy tuyệt đối ổn định và chắc chắn. Module 6-8 chỉ ở mức nền/định hình.*

### 🛠️ Các Release Blockers (Cần chốt ngay trước khi ra mắt Beta)
- [x] **Sửa docs sai trạng thái và lệch pha**: 
  - Cập nhật README/Roadmap phản ánh đúng module nào done, module nào partial.
  - Sửa các tài liệu ghi quá tay về việc Module 6/8 "hoàn thiện" trong khi code chưa phản ánh.
- [x] **Chuẩn hóa Encoding tài liệu**: Chuyển toàn bộ tài liệu tiếng Việt sang UTF-8 để tránh lỗi font (mojibake).
- [x] **Refactor SRS**: Tách biệt logic thuật toán SM-2 khỏi `NotebookService` sang `SrsCalculatorService` để code sạch và dễ giải thích khi phỏng vấn.
- [x] **Bổ sung Unit Test thực tế**:
  - Viết test thuật toán SM-2 (interval, ease factor, quality).
  - Test progress calculation (% hoàn thành lesson/course, resume timestamp, video > 85%).
  - Test auth (reset password, refresh token, role guard).
  - Test ownership/security để chống IDOR (Notebook, Review, Progress).
- [x] **Hardening Security & API**:
  - Gài ownership checks cho notebook folders, flashcard reviews, progress updates.
  - Áp dụng `TextSanitizer` cho nội dung do Teacher nhập.
  - Không công bố "prod-ready" khi token vẫn nằm ở localStorage (sẽ chuyển sang HttpOnly cookie ở Phase 2).
- [ ] **Chốt luồng Demo Vàng (Gold Flow)**:
  - Kiểm thử và quay video/demo luồng: `Login ➔ Course List ➔ Enroll ➔ Learning View ➔ Progress/Resume ➔ Dictionary Search ➔ Save Notebook ➔ SRS Review`.

### ⚡ Các hạng mục P1 (Sau khi P0 ổn định)
- [ ] **AI Syllabus UI**: Tích hợp giao diện Frontend kéo-thả để AI tự động sắp xếp lộ trình học (Backend đã có).
- [ ] **Course Publish Workflow**: Xây dựng logic duyệt trạng thái: `DRAFT ➔ PENDING ➔ PUBLISHED`.
- [ ] **Admin Audit Log Viewer**: Xây dựng giao diện cơ bản xem log lịch sử thao tác của hệ thống.
- [ ] **Frontend Polish**: Trau chuốt lại giao diện Ghi chú cá nhân (Notes), màn hình SRS Review, và trang chi tiết khóa học.

---

## 🛡️ PHASE 2: PROFESSIONALIZATION (CHUYÊN NGHIỆP HÓA)
*Mục tiêu: Biến MVP thành một Portfolio/Prod-like app thực thụ. Chuẩn hóa API Contract và nâng cao chất lượng code.*

- [ ] **API Contract Standardization**:
  - Áp dụng triệt để DTO Pattern (loại bỏ hoàn toàn việc trả Entity trực tiếp ra ngoài API).
  - Chuẩn hóa kiểu trả về bằng `ResponseEntity<ApiResponse<T>>`, loại bỏ wildcard `ResponseEntity<?>`.
  - Thống nhất cơ chế validate bằng Jakarta Validation và Global Error Response.
- [ ] **Test Coverage**: Phủ unit test và integration test một cách thực tế và có ý nghĩa, không chạy theo con số % vô nghĩa.
- [ ] **Redis Caching**: Lưu trữ các dữ liệu ít thay đổi nhưng truy cập nhiều như Dictionary hot data, Course list, LessonBlocks vào Redis để tăng hiệu năng đọc.
- [ ] **Admin Dashboard v1**: Quản trị người dùng, khóa học, đánh giá (reviews), và tích hợp bộ lọc xem Audit Logs.
- [ ] **Notification v1**: Giao diện quả chuông (Bell UI) ở Frontend, in-app notification table ở Database, và gửi email tự động cho các sự kiện quan trọng (quên mật khẩu, thông báo học tập).
- [ ] **Payment Design**: Thiết kế luồng thanh toán trước khi code, định hình Payment State Machine, Idempotency Key, và cấu trúc bảng Transaction Log.

---

## 🚀 PHASE 3: COMMERCIAL & SCALE FEATURES (THƯƠNG MẠI & TỐI ƯU)
*Mục tiêu: Tích hợp các tính năng có giá trị thương mại thực tế và nâng cấp trải nghiệm học.*

- [ ] **VNPay Sandbox Integration**:
  - Hiện thực hóa luồng thanh toán: Tạo link thanh toán (`create payment`) ➔ Xử lý URL trả về (`return URL`) ➔ Xử lý Webhook/IPN bất đồng bộ.
  - Đảm bảo cơ chế bảo mật checksum với **HMAC-SHA512**.
  - Xử lý trùng lặp giao dịch (**Idempotency key/transaction logic**) để bảo vệ hệ thống.
  - Tự động mở khóa khóa học (auto enrollment unlock) và lưu lịch sử thanh toán sau khi thanh toán thành công.
- [ ] **Gamification Engine v1**:
  - Thiết kế bảng sự kiện tích điểm (XP Event Table).
  - Logic tính toán chuỗi ngày học liên tục (streak) ở phía Server để chống gian lận.
  - Hệ thống huy hiệu (Badge rules) và nhiệm vụ hàng ngày (Daily Quest) đơn giản.
- [ ] **Search Upgrade**:
  - Tận dụng sức mạnh của **PostgreSQL Full-text search** phối hợp với **GIN Index** để tìm kiếm từ điển nhanh chóng.
  - Chuẩn bị chuyển dịch sang Elasticsearch khi dữ liệu lớn.

---

## 💎 PHASE 4: ENTERPRISE & DISTRIBUTED SYSTEM (HỆ THỐNG PHÂN TÁN)
*Mục tiêu: Nâng tầm kiến trúc để đáp ứng tải lớn và hỗ trợ môi trường phân tán. Không triển khai quá sớm.*

- [ ] **Event-Driven Architecture (Kafka)**: Tách biệt các tác vụ tốn tài nguyên như gửi Notification, ghi chép Audit Logs, và xử lý Payment Events qua Kafka Message Broker.
- [ ] **BI Dashboard & Analytics**: Xây dựng luồng ETL tổng hợp dữ liệu tiến độ, doanh thu, tỉ lệ giữ chân học viên (retention) để vẽ biểu đồ Cohort phân tích.
- [ ] **DevOps & Cloud Native**:
  - Containerization toàn bộ môi trường (Dockerfile tối ưu, Docker Compose).
  - Cấu hình reverse proxy và cân bằng tải với Nginx.
  - Thiết lập luồng CI/CD tự động (GitHub Actions) build, test và deploy.
- [ ] **Kubernetes & Microservices**:
  - Triển khai toàn bộ ứng dụng lên K8s (Deployment, Service, ConfigMaps, Ingress).
  - Chỉ tách biệt Dictionary và SRS thành các Microservices độc lập (giao tiếp qua gRPC/REST) khi Monolith Modular đã đạt tới giới hạn tải hoặc phân chia đội ngũ phát triển rõ ràng.

