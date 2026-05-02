# 🚀 SAKURALEARN: TỔNG QUY HOẠCH NÂNG CẤP TOÀN DIỆN (FEATURES & INFRASTRUCTURE)

Tài liệu này là sự kết hợp giữa **Nâng cấp Tính năng (Features/UX)** và **Nâng cấp Hạ tầng (Infrastructure/DevOps)**, nhằm đưa dự án đạt chuẩn Enterprise theo Master Docs 00 & 01 và đáp ứng các JD cao cấp.

---

## 🏗️ PHẦN I: NÂNG CẤP TÍNH NĂNG & TRẢI NGHIỆM (WHAT TO BUILD)

### 🔐 1. Module 1: Xác thực & Bảo mật
- **Multi-session Management**: Giao diện quản lý và đăng xuất từ xa các thiết bị đang đăng nhập.
- **Security Hardening**: Cơ chế Account Locking (Khóa sau 5 lần sai) và bảo vệ dựa trên IP.
- **DTO Strict Enforcement**: Rà soát 100% API để đảm bảo không lộ Entity trực tiếp ra ngoài.

### 📚 2. Module 2: Hệ sinh thái Khóa học
- **AI Syllabus v2**: Giao diện kéo-thả để AI tự động sắp xếp lộ trình học theo mục tiêu.
- **Course Workflow**: Hệ thống phê duyệt trạng thái `DRAFT` -> `PENDING` -> `PUBLISHED`.
- **Teacher Dashboard**: Thống kê doanh thu và phản hồi học viên thời gian thực.

### 🎓 3. Module 3: Trải nghiệm học tập
- **Advanced Personal Notes**: Trình soạn thảo Rich Text (Markdown) trong lúc học.
- **Smart Auto-completion**: WebSocket đồng bộ tiến độ tức thì giữa các thiết bị.
- **Motivational UI**: Nâng cấp hiệu ứng khích lệ và hệ thống nhắc học thông minh.

### 📖 4. Module 4: Kho tri thức (Smart Dictionary)
- **Interactive Stroke Animation**: Diễn họa nét vẽ Kanji sinh động bằng `hanzi-writer`.
- **Handwriting Recognition**: Tra cứu Kanji bằng cách vẽ tay trên Canvas.
- **Fuzzy Search**: Tìm kiếm mờ thông minh, tự sửa lỗi chính tả cho người dùng.

### 🧠 5. Module 5: Hệ thống SRS Elite
- **Memory Optimization**: Nâng cấp từ SM-2 lên thuật toán FSRS (tiên tiến nhất hiện nay).
- **Review Insights**: Biểu đồ nhiệt (Heatmap) và dự báo ngày quên từ (Forgetting Curve).
- **Refactoring**: Tách biệt `SrsCalculatorService` để dễ dàng bảo trì và mở rộng.

---

## 📅 PHẦN II: CHI TIẾT HẠ TẦNG & LỘ TRÌNH DEVOPS (HOW TO SCALE)

### 🛠️ 1. Hạ tầng & Chất lượng Code (Cross-Module)
- **Unit Testing**: Đạt tối thiểu **80% Coverage** (JUnit/Mockito) cho các nghiệp vụ lõi.
- **API Documentation**: Nâng cấp Swagger UI lên chuẩn OpenAPI 3.0 với tài liệu Postman chuyên sâu.
- **Data Integrity Audit**: Script định kỳ kiểm tra sai lệch ngôn ngữ và dữ liệu rác (theo Guidelines).

### 🏗️ 2. Hạ tầng & DevOps "Siêu nhân" (JD Matching Requirements)
Đây là phần nâng cấp để đưa dự án lên tầm Distributed System và High Performance:

#### ⚡ Hiệu suất & Caching (Redis)
- **Course Caching**: Lưu trữ danh sách khóa học và LessonBlocks vào **Redis** để giảm tải cho Postgres.
- **Session Management**: Chuyển quản lý Session/Refresh Token sang Redis để hỗ trợ khả năng mở rộng ngang (Horizontal Scaling).

#### 🔍 Tìm kiếm thông minh (Elasticsearch)
- **Dictionary Search**: Đồng bộ dữ liệu từ Postgres sang **Elasticsearch** để hỗ trợ Fuzzy Search (tìm kiếm mờ), gợi ý từ (Auto-complete) với tốc độ < 50ms.

#### 🐳 DevOps & Cloud Native (K8s)
- **Kubernetes (K8s)**: Triển khai dự án lên Cluster (Minikube/K3s) với các khái niệm Deployment, Service, Ingress và ConfigMaps.
- **CI/CD Pipeline**: Tự động hóa hoàn toàn luồng **GitHub Actions** (Build -> Test -> Dockerize -> Deploy).

#### 📐 Kiến trúc Microservices (Migration Plan)
- **Service Splitting**: Tách Module 4 (Dictionary) và Module 5 (SRS) thành các Microservices riêng biệt, giao tiếp qua **REST** hoặc **gRPC**.
- **API Gateway**: Sử dụng Nginx hoặc Spring Cloud Gateway để điều phối request.

#### 📊 Data Warehouse & BI (ETL)
- **Hệ thống báo cáo**: Xây dựng luồng **ETL** đơn giản để tổng hợp dữ liệu tiến độ từ các bảng vụn vặt sang một bảng "Flat" phục vụ cho Dashboard quản trị (biểu đồ tăng trưởng, doanh thu).

---

### 🧊 3. Lộ trình triển khai theo Giai đoạn

#### 🔹 Giai đoạn 2: Pre-Prod & Hardening (2-4 tháng)
- Triển khai **Redis Caching** và **WebSocket Sync**.
- Thiết lập **CI/CD Pipeline** và đạt **80% Unit Test Coverage**.
- Hoàn thiện việc tách biệt **DTO/Entity** và **Refactor SRS Service**.

#### 🔹 Giai đoạn 3: Production & Distributed (4-8 tháng)
- Tích hợp **Kafka Messaging** và **Elasticsearch**.
- Triển khai lên **Kubernetes (K8s)** và cấu hình **Nginx Load Balancing**.
- Thực hiện **Microservices splitting** và xây dựng **Data Warehouse/ETL**.

---

## 🏆 TIÊU CHUẨN ĐẦU RA (DEFINITION OF DONE)
- [ ] Tuân thủ 100% Layered Architecture (Doc 01).
- [ ] Phản hồi API trung bình < 200ms. Khả năng chịu tải > 500 CCU.
- [ ] Tài liệu OpenAPI 3.0 hoàn chỉnh và chuyên nghiệp.
