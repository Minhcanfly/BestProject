# 🛠️ TECH STACK DOCUMENT – SAKURALEARN
**SakuraLearn – Japanese Learning Platform (JLPT N5–N1)**
**Phiên bản:** 1.0 (Final Official)
**Ngày:** 18/04/2026

## 1. Mục tiêu Tech Stack
- Xây dựng MVP nhanh chóng, ổn định và dễ duy trì (maintain).
- Giữ độ phức tạp thấp ở giai đoạn đầu để tối ưu tốc độ phát triển.
- Khả năng mở rộng (scale) linh hoạt khi có lượng người dùng lớn.
- Tận dụng tối đa hệ sinh thái Spring Boot và các công nghệ hiện đại (Redis, PostgreSQL, Docker).

## 2. Phân nhóm công nghệ

| Nhóm công nghệ | Công nghệ / Kỹ thuật | Mục đích chính |
| :--- | :--- | :--- |
| **Core Backend & API** | Spring Boot 3.4+, APIs, Swagger, Spring Security, JPA, Flyway | Xây dựng REST API, bảo mật, persistence, migration |
| **Database & Storage** | PostgreSQL, JPA, Flyway, MinIO | Lưu trữ dữ liệu chính + file media (avatar, thumbnail, hình ảnh) |
| **Caching & Performance** | Redis, Spring Caching | Cache dữ liệu nóng, session, daily review, performance |
| **Realtime & Messaging** | WebSocket, Redis Pub/Sub, Spring ApplicationEvent, Kafka | Notification, comment live, event-driven processing |
| **Payment & External AI** | VNPay, OpenAI, Chatbot | Thanh toán và tính năng AI thông minh (Phase 2+) |
| **DevOps & Infrastructure** | Docker, GitHub Actions, Mailpit, CDNs, K8s, Load Balancing | Phát triển local, CI/CD, deploy production |
| **Security & Auth** | Spring Security (JWT + RBAC) | Authentication, phân quyền (Student/Teacher/Admin) |

## 3. Mapping Kỹ thuật → Module & Giai đoạn

| Kỹ thuật | Nhóm | Module phù hợp | Giai đoạn | Lý do sử dụng |
| :--- | :--- | :--- | :--- | :--- |
| **APIs / Swagger** | Core | Toàn hệ thống | **MVP** | Xây dựng và document RESTful backend |
| **Spring Security** | Security | Module 1 | **MVP** | JWT + RBAC (3 roles) |
| **JPA / Flyway** | DB | Toàn hệ thống | **MVP** | ORM mapping & Quản lý migration |
| **Redis** | Caching | Module 2,4,5,8 | **MVP** | Cache course, dictionary, SRS queue, streak |
| **Spring ApplicationEvent** | Messaging | Module 3,6,8 | **MVP** | Event nội bộ (XP, badge, unlock course) |
| **MinIO** | Storage | Module 2 | **MVP** | Object storage tự host cho media |
| **VNPay** | Payment | Module 6 | **MVP** | Cổng thanh toán chính |
| **Docker / Mailpit** | DevOps | Toàn hệ thống | **MVP** | Môi trường phát triển & Test email |
| **WebSocket / Redis Pub/Sub** | Realtime | Module 6,8 | **Phase 2** | Notification realtime, comment live |
| **GitHub Actions** | DevOps | Toàn hệ thống | **Phase 1-2** | CI/CD tự động |
| **CDNs** | Infra | Module 2, 4 | **Phase 2** | Tăng tốc phân phối media (video, audio) |
| **OpenAI / Chatbot** | AI | Phase 2+ | **Phase 2** | AI recommendation, weak point analysis |
| **Kafka** | Messaging | Module 7, Analytis | **Phase 3** | Event-driven lớn, background jobs |
| **K8s / Load Balancing** | Infra | Production | **Phase 3** | Auto-scale khi traffic lớn |

## 4. Roadmap Triển khai theo Giai đoạn

### 🚀 Giai đoạn 1: Local Development & Core MVP (0–2 tháng)
- **Mục tiêu**: Hoàn thành core features, chạy full flow local.
- **Công nghệ**: Spring Boot, Security (JWT), JPA, Flyway, Swagger, Redis, Docker, MinIO, Mailpit, VNPay (Sandbox).
- **Module ưu tiên**: 1 (Auth), 2 (Course), 4 (Dictionary), 5 (SRS), 6 (Payment), 8 (Gamification cơ bản).

### 🛠️ Giai đoạn 2: Testing, Polish & Pre-Production (2–4 tháng)
- **Mục tiêu**: Hoàn thiện UX, thêm realtime, chuẩn bị beta.
- **Bổ sung**: WebSocket + Redis Pub/Sub, CDN, GitHub Actions nâng cao, Deploy Live (VPS/Cloud).

### 📈 Giai đoạn 3: Production & Scale (4–8 tháng)
- **Mục tiêu**: Chạy production ổn định cho hàng nghìn user.
- **Bổ sung**: Load Balancing, Kafka (nếu cần), K8s (nếu traffic cực lớn), Monitoring tools.

### 🧠 Giai đoạn 4: Advanced Features (6-12 tháng+)
- **Mục tiêu**: Tăng giá trị sản phẩm bằng AI và tương tác sâu.
- **Bổ sung**: OpenAI Integration, Chatbot hỗ trợ, AI Weak Point Analysis.

## 5. Khuyến nghị & Lưu ý quan trọng
1. **Bắt đầu đơn giản**: Ưu tiên Docker + Redis + MinIO + Flyway + VNPay ở MVP. Đây là bộ khung giúp phát triển nhanh nhất.
2. **Chiến lược Messaging**:
   - **MVP**: Dùng `Spring ApplicationEvent` (In-memory) cho đơn giản.
   - **Phase 2**: Dùng `Redis Pub/Sub` cho notification/realtime.
   - **Phase 3**: Dùng `Kafka` cho các tác vụ cần độ tin cậy và phân tích dữ liệu lớn.
3. **Tránh Over-engineering**: Tuyệt đối không dùng Kafka/K8s ở giai đoạn MVP vì sẽ làm chậm tiến độ và tiêu tốn tài nguyên máy local.
4. **Media Strategy**: Dùng MinIO ở giai đoạn đầu, sau đó tích hợp CDN để tối ưu trải nghiệm người dùng cuối.
5. **Config Management**: Sử dụng Spring Profiles (`dev`, `test`, `prod`) để quản lý các key nhạy cảm (VNPay, Redis, OpenAI).
