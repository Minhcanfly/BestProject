# 🌸 MODULE 1: Authentication & User — Trạng thái & Nhiệm vụ còn lại

> **Đối chiếu code (2026-05-23):** Backend `AuthController`, JWT filter, OAuth2 Google, refresh rotation, email verify/reset — **MVP ổn**.  
> **Docs:** `MODULE_1_AUTHENTICATION_USER.md` — **khớp** với code hơn các module 6–8.

## 1. Đánh giá hiện trạng (đã có trong code)

- **Backend:** Đăng ký, xác thực email, login, refresh, logout, forgot/reset password, profile, RBAC (`@PreAuthorize`), audit log async.
- **Frontend:** `Login`, `Register`, `ForgotPassword`, `ResetPassword`, `OAuth2RedirectHandler`, `AuthContext`, axios refresh interceptor.
- **Tests:** Có test OAuth state/replay/expiry và callback filter (2026-10-06); vòng đời password login/refresh/logout/reset vẫn thiếu integration tests.

## 2. Công việc còn lại

### 🔴 P0 — Bảo mật & tin cậy

- [x] **F-003 — OAuth state:** Thay Java native serialization bằng opaque handle 256-bit; request lưu server-side 180 giây, consume nguyên tử một lần, ràng buộc state và callback URI/provider; test giả mạo/replay/expiry/concurrency và Spring callback filter đã pass.
- [ ] **F-003 staging:** Smoke Google OAuth qua HTTPS/reverse proxy, xác nhận cookie Secure và callback URL khớp; review độc lập trước khi đóng finding. Store hiện tại nằm trong RAM một backend, cần sticky routing/shared atomic store nếu chạy nhiều replica.
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
- [x] **DataSeeder:** Chỉ chạy profile `dev`; password phải inject qua `INITIAL_ADMIN_PASSWORD`, không có fallback và không log plaintext.
- [ ] **Rate limiting** trên `/auth/login`, `/auth/register` (bucket Redis hoặc in-memory dev).

### 📄 Docs

- [ ] Giữ `MODULE_1_AUTHENTICATION_USER.md` đồng bộ với checklist này (tránh trùng 2 nơi — ưu tiên file `*_REMAINING_TASKS`).
