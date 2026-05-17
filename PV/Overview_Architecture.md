# Overview: SakuraLearn Architecture

## 1. Hệ thống Tổng quan
SakuraLearn là nền tảng LMS chuyên biệt cho người Việt học tiếng Nhật. Hệ thống giải quyết bài toán: Chuyển đổi từ việc học thụ động sang việc học có lộ trình, ghi nhớ dài hạn thông qua SRS và cá nhân hóa sổ tay.

## 2. Kiến trúc: Modular Monolith
- **Lý do chọn**: Đảm bảo tính nhất quán dữ liệu (Strong Consistency) giữa các domain (Auth, Course, Notebook, SRS) mà không bị phức tạp bởi microservices.
- **Tech Stack**: 
  - **Backend**: Spring Boot, Spring Security.
  - **Frontend**: React (SPA), Axios, Tailwind/Vanilla CSS.
  - **Infrastructure**: PostgreSQL (DB chính), Redis (Caching), Kafka (Async), MinIO (Storage), Mailpit (Email test).

## 3. Interview Angle (Tóm tắt 1 phút)
"SakuraLearn được thiết kế theo mô hình Modular Monolith, tập trung vào sự gắn kết chặt chẽ giữa các module. Nội dung học từ Course hoặc Dictionary sẽ trở thành input cho Notebook, và Notebook sẽ là nguồn cấp dữ liệu cho thuật toán SRS (SM-2). Đây không chỉ là một ứng dụng CRUD, mà là một hệ sinh thái học tập khép kín."
