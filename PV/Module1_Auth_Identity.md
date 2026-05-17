# Module 1: Authentication & Identity

## 1. Bài toán nghiệp vụ
Kiểm soát Trust Boundary cho toàn hệ thống. Mọi hành động (học tập, lưu từ, review) đều gắn liền với Identity.

## 2. Logic cốt lõi
- **Register**: User Inactive cho đến khi Verify Email (Token 24h).
- **Login**: Spring Security + BCrypt. Trả về JWT Access Token (Stateless) và Refresh Token (DB-based).
- **Hybrid JWT**: Dùng Access Token ngắn hạn để gọi API, Refresh Token lưu DB để có thể thu hồi (Revoke) phiên đăng nhập khi cần (Logout/Block user).

## 3. Điểm nhấn kỹ thuật (Senior Level)
- **Security Context Reloading**: `JwtAuthFilter` load lại User từ DB để kiểm tra trạng thái `isActive` và `Role` mới nhất, tránh việc Token cũ vẫn có quyền sau khi bị Admin block.
- **OAuth2 Google Integration**: Đồng nhất luồng Google Login với luồng JWT/Refresh Token của hệ thống.

## 4. Interview Angle
"Hệ thống Auth của tôi sử dụng cơ chế Hybrid JWT + DB Refresh Token. Tôi không tin hoàn toàn vào Token Stateless mà luôn kiểm tra lại trạng thái User trong DB tại filter để đảm bảo tính an toàn cao nhất, đặc biệt là khi Role hoặc trạng thái Inactive thay đổi."
