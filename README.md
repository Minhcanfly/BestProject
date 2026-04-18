# 🌸 SakuraLearn - Japanese Learning LMS

SakuraLearn là hệ thống quản lý học tập (LMS) chuyên biệt cho việc học tiếng Nhật, được xây dựng với kiến trúc bền vững, bảo mật và hiệu suất cao.

## 🚀 Công nghệ sử dụng (Tech Stack)

### Backend
- **Core:** Java 21, Spring Boot 3.4+
- **Security:** Spring Security & JWT (JSON Web Token), OAuth2 (Google Login)
- **Database:** PostgreSQL (Lưu trữ chính), Redis (Caching)
- **Infrastructure:** Flyway (Database Migration), Docker & Docker Compose
- **Messaging & Storage:** Kafka (Event-driven), MinIO (S3 Compatible Storage)
- **Mail:** Mailpit (Development SMTP server)

### Frontend
- **Core:** React 18, Vite
- **UI/UX:** Vanilla CSS (Premium Glassmorphism Design Style)
- **API Client:** Axios (with Auto Refresh Token interceptors)
- **Icons:** Lucide React

---

## 🛠️ Hướng dẫn cài đặt (Quick Start)

### 1. Yêu cầu hệ thống
- Docker & Docker Compose
- Java 21 (để chạy Backend local)
- Node.js 18+ (để chạy Frontend local)

### 2. Khởi chạy hạ tầng (Infrastructure)
Tại thư mục gốc dự án:
```bash
docker-compose up -d
```

### 3. Khởi chạy Backend
```bash
cd sakuralearn-backend
./mvnw spring-boot:run
```
*Swagger UI: http://localhost:8080/swagger-ui.html*

### 4. Khởi chạy Frontend
```bash
cd sakuralearn-frontend
npm install
npm run dev
```
*Frontend: http://localhost:3000*

---

## 📂 Cấu trúc dự án (Project Structure)
- `/sakuralearn-backend`: Mã nguồn Spring Boot.
- `/sakuralearn-frontend`: Mã nguồn React.
- `/database`: Các file script và volume dữ liệu.
- `/docs`: Tài liệu thiết kế, SRS và hướng dẫn test.

---
## 📝 Module hiện tại: Module 1 - Authentication (Completed)
- [x] Đăng ký / Đăng nhập (JWT)
- [x] Xác thực Email & Quên mật khẩu
- [x] Đăng nhập Google (OAuth2)
- [x] Soft-delete & Account Status protection
- [x] Auto Refresh Token flow

---
*Dự án thuộc quyền sở hữu của SakuraLearn Team.*
