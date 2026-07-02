# 🌸 MODULE 1: Authentication & User — Trạng thái & Nhiệm vụ còn lại

> **Đối chiếu code (2026-05-23):** Backend `AuthController`, JWT filter, OAuth2 Google, refresh rotation, email verify/reset — **MVP ổn**.  
> **Docs:** `MODULE_1_AUTHENTICATION_USER.md` — **khớp** với code hơn các module 6–8.

## 1. Đánh giá hiện trạng (đã có trong code)

- **Backend:** Đăng ký, xác thực email, login, refresh, logout, forgot/reset password, profile, RBAC (`@PreAuthorize`), audit log async.
- **Frontend:** `Login`, `Register`, `ForgotPassword`, `ResetPassword`, `OAuth2RedirectHandler`, `AuthContext`, axios refresh interceptor.
- **Tests:** Chưa có test cho Auth (chỉ context smoke + SRS/progress).

## 2. Công việc còn lại

### 🔴 P0 — Bảo mật & tin cậy

- [ ] **Auth integration tests:** Refresh rotation, logout revoke token, reset password, role guard (`@WebMvcTest` hoặc MockMvc).
- [ ] **Đồng bộ tên field token FE/BE:** Login lưu `token` vs refresh handler kỳ vọng `accessToken` — xác minh contract `AuthResponse`.
- [ ] **OAuth2 handler:** Xóa import `loginWithOAuth2` dead code; dùng `VITE_API_BASE_URL` thay hardcode `localhost:8080` (`Login.jsx`, `OAuth2RedirectHandler.jsx`).
- [ ] **Logout server-side:** FE gọi `authService.logout` khi user đăng xuất (hiện chỉ xóa localStorage).

### 🟡 P1 — Tính năng

- [ ] **Multi-Session Management:** API liệt kê refresh token theo thiết bị + revoke từng session.
- [ ] **Account locking:** Khóa tạm sau N lần đăng nhập sai (cấu hình + audit log).

### 🟢 P2 — Production hardening

- [ ] **HttpOnly Secure Cookie** cho refresh token (thay `localStorage`).
- [ ] **JWT blacklist** (Redis) khi revoke — chỉ sau khi quyết định giữ Redis.
- [ ] **DataSeeder:** Chỉ chạy profile `dev`; không log password plaintext.
- [ ] **Rate limiting** trên `/auth/login`, `/auth/register` (bucket Redis hoặc in-memory dev).

### 📄 Docs

- [ ] Giữ `MODULE_1_AUTHENTICATION_USER.md` đồng bộ với checklist này (tránh trùng 2 nơi — ưu tiên file `*_REMAINING_TASKS`).
