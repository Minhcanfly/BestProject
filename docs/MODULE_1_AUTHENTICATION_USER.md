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

### OAuth state — triển khai ngày 2026-10-06

- Cookie `oauth2_auth_request` chỉ chứa opaque handle ngẫu nhiên 256-bit; request OAuth nằm trong RAM backend, tối đa 10.000 request chờ, TTL 180 giây. Không serialize/deserialize Java từ HTTP input.
- Callback phải có đúng cookie, `state` và URL callback đã lưu (bao gồm provider trong path). Request được lấy và xóa nguyên tử trước bước đổi authorization code; replay bị từ chối.
- Cookie dùng `HttpOnly`, `SameSite=Lax`, `Secure` khi HTTPS hoặc profile `prod`; cookie cũ `redirect_uri` được xóa, redirect frontend chỉ lấy từ cấu hình server. Thành công/thất bại đều dọn state và cookie.
- Mỗi browser giữ một lần đăng nhập đang chờ; bắt đầu lại sẽ hủy handle trước. Restart backend làm mất lần đăng nhập chờ và người dùng phải thử lại. Nhiều replica cần sticky routing hoặc shared store có thao tác consume nguyên tử.
- Sau reverse proxy, scheme/host/port/path mà backend thấy phải khớp callback URI đã đăng ký; chỉ tin forwarded headers từ proxy được kiểm soát. Cần smoke HTTPS trên staging.
- F-007/F-008 vẫn mở: success handler còn đưa token/PII vào redirect URL và refresh token vẫn được frontend lưu trong Web Storage. Việc sửa state chưa giải quyết vòng đời session.

---

## 3. Đặc tả Chức năng & Phân quyền
| Chức năng | Chi tiết kỹ thuật | Role | Trạng thái |
| :--- | :--- | :--- | :--- |
| **Auth Core** | Đăng ký, Đăng nhập, Quên mật khẩu (OTP) | Public | ✅ Hoàn thiện |
| **Verify Email** | Xác thực qua link email, kích hoạt tài khoản | Student | ✅ Hoàn thiện |
| **Role Mgmt** | Phân quyền STUDENT, TEACHER, ADMIN | Admin | ✅ Hoàn thiện |
| **Profile Mgmt** | Cập nhật thông tin, thay đổi Avatar (MinIO) | User | ✅ Hoàn thiện |
| **Audit Tracking** | Ghi log `created_by`, `updated_by`, `created_at` | System | ✅ Hoàn thiện |

---

## 4. Logic nghiệp vụ & Quy tắc (Business Rules)
- **RBAC**: Sử dụng `Spring Security` với `@PreAuthorize`.
- **Soft Delete**: `is_deleted = true`. Không xóa vật lý dữ liệu User để giữ tính toàn vẹn cho các module liên quan (Enrollment, Payment).
- **Security Context**: Token được kiểm tra tại `JwtAuthFilter` trước khi vào Controller.
- **Audit Log**: Mọi thay đổi về Role hoặc trạng thái tài khoản phải được ghi vết chi tiết.

---

## 🚩 NHIỆM VỤ CÒN LẠI (REMAINING TASKS)

### 🔴 Cần hoàn thiện (Critical)
- [x] **Quên mật khẩu**: Triển khai luồng Reset Password qua Email (OTP hoặc Link). (Đã hoàn thành ✅)
- [x] **Validation nâng cao**: Chặn các ký tự đặc biệt trong Username và kiểm tra độ mạnh mật khẩu (Password Strength). (Đã hoàn thành ✅)

### 🟡 Nâng cấp tính năng (Enhancements)
- [x] **Social Login**: Tích hợp Google OAuth2 để người dùng đăng nhập nhanh. (Đã hoàn thành ✅)
- [ ] **Multi-Session Mgmt**: Cho phép người dùng xem và đăng xuất từ các thiết bị khác (Revoke Refresh Token).
- [ ] **Account Locking**: Tự động khóa tài khoản sau 5 lần nhập sai mật khẩu liên tiếp.

### 🟢 Tối ưu hóa
- [ ] Tích hợp Redis để lưu trữ danh sách Token bị thu hồi (Blacklist JWT).
- [ ] Chuyển sang sử dụng `HttpOnly Cookie` cho Refresh Token để chống XSS.
