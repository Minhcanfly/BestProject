# 🌸 MODULE 1: AUTHENTICATION & USER MANAGEMENT (DEEP DIVE)

## 1. Tầm nhìn & Mục tiêu
Xây dựng lớp bảo mật vững chắc (Security Backbone) và hệ thống quản lý định danh người dùng chuẩn doanh nghiệp, hỗ trợ mở rộng cho hàng triệu người học.

## 2. Luồng nghiệp vụ chi tiết (User Journey)
### 🔐 Đăng ký & Xác thực
1. **Đăng ký**: User điền Email/Password -> Hệ thống tạo User với `isActive = false`.
2. **Double Opt-in**: Hệ thống gửi email kèm Token UUID (hạn 24h).
3. **Kích hoạt**: User click link -> Hệ thống đổi `isActive = true`, xóa Token.

### 🔑 Đăng nhập & Session
1. **Login**: Authenticate qua Spring Security -> Trả về **JWT Access Token** (15-60p) và **Refresh Token** (7 ngày, lưu DB).
2. **Refresh**: Khi Access Token hết hạn, FE dùng Refresh Token để lấy cặp Token mới (Rotation).
3. **Logout**: Xóa Refresh Token trong DB và xóa Token ở Client.

### 👤 Quản lý Profile
1. **Avatar**: Upload qua MinIO, lưu URL và phục vụ qua Presigned URL.
2. **Localization**: Lưu `preferred_language` (vi/ja/en) để phục vụ i18n.

---

## 3. Đặc tả Chức năng & Phân quyền
| Chức năng | Chi tiết kỹ thuật | Role |
| :--- | :--- | :--- |
| **Auth Core** | Đăng ký, Đăng nhập, Quên mật khẩu (OTP) | Public |
| **Verify Email** | Xác thực qua link email, kích hoạt tài khoản | Student |
| **Role Mgmt** | Phân quyền STUDENT, TEACHER, ADMIN | Admin |
| **Profile Mgmt** | Cập nhật thông tin, thay đổi Avatar (MinIO) | User |
| **Audit Tracking** | Ghi log `created_by`, `updated_by`, `created_at` | System |

---

## 4. Logic nghiệp vụ & Quy tắc (Business Rules)
- **RBAC**: Sử dụng `Spring Security` với `@PreAuthorize`.
- **Soft Delete**: `is_deleted = true`. Không xóa vật lý dữ liệu User để giữ tính toàn vẹn cho các module liên quan (Enrollment, Payment).
- **Security Context**: Token được kiểm tra tại `JwtAuthFilter` trước khi vào Controller.
- **Audit Log**: Mọi thay đổi về Role hoặc trạng thái tài khoản phải được ghi vết chi tiết.

---

## 🚩 NHIỆM VỤ CÒN LẠI (REMAINING TASKS)

### 🔴 Cần hoàn thiện (Critical)
- [ ] **Quên mật khẩu**: Triển khai luồng Reset Password qua Email (OTP hoặc Link).
- [ ] **Validation nâng cao**: Chặn các ký tự đặc biệt trong Username và kiểm tra độ mạnh mật khẩu (Password Strength).

### 🟡 Nâng cấp tính năng (Enhancements)
- [ ] **Social Login**: Tích hợp Google OAuth2 để người dùng đăng nhập nhanh.
- [ ] **Multi-Session Mgmt**: Cho phép người dùng xem và đăng xuất từ các thiết bị khác (Revoke Refresh Token).
- [ ] **Account Locking**: Tự động khóa tài khoản sau 5 lần nhập sai mật khẩu liên tiếp.

### 🟢 Tối ưu hóa
- [ ] Tích hợp Redis để lưu trữ danh sách Token bị thu hồi (Blacklist JWT).
- [ ] Chuyển sang sử dụng `HttpOnly Cookie` cho Refresh Token để chống XSS.
