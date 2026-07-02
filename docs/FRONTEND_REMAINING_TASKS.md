# 🖥️ Frontend (React + Vite) — Công việc còn lại

> **Đối chiếu:** `FRONTEND_DESIGN_PACKAGE_STYLE_GUIDE.md`, `playbook/02_frontend_standards.md`, code `sakuralearn-frontend/`.  
> **Không có module doc riêng** — file này gom task xuyên suốt các module.

## 1. Đánh giá hiện trạng

- **Đã có:** ~20 routes, role guards, 14 service modules, learning view, syllabus DnD, dictionary, notebook, SRS practice, admin pages.
- **Build:** `npm run build` pass (~495 KB JS).
- **Thiếu:** ESLint, TypeScript, tests, `.env.example`.

## 2. Công việc 🔴 P0 (Bug / inconsistency)

- [ ] **`SaveToNotebookPopup.jsx`:** Dùng `notebookService` + `api.js`, bỏ `fetch('http://localhost:8080/...')`.
- [ ] **`Login.jsx`:** OAuth URL từ `import.meta.env.VITE_API_BASE_URL`.
- [ ] **`OAuth2RedirectHandler.jsx`:** Xóa `loginWithOAuth2` import; đồng bộ với `AuthContext` hoặc document full-reload flow.
- [ ] **Token field:** Thống nhất `token` vs `accessToken` với `AuthResponse` backend.
- [ ] **Routes constants:** Thêm `/register`, `/notebook/folder/:id` vào `constants/routes.js`.

## 3. Công việc 🟡 P1 (Maintainability)

- [ ] **Tách `SyllabusManager.jsx` (~603 dòng):** hooks `useSyllabus`, component `SortableLesson`, `BlockList`.
- [ ] **Tách `Dashboard.jsx`:** `AdminDashboard`, `TeacherDashboard`, `StudentDashboard` → file riêng.
- [ ] **Tách `DictionaryDetailPopup.jsx`:** hook fetch + presentational popup.
- [ ] **Error UX:** Dùng `getApiErrorMessage` + `StatusMessage` trên `FolderDetail`, `Library`, `DictionaryList`, `MyNotebook`.
- [ ] **Logout:** Gọi `authService.logout` từ Sidebar.

## 4. Công việc theo module (FE)

| Module | Task | File task chi tiết |
|--------|------|-------------------|
| M2 | AI Syllabus UI kích hoạt trong `SyllabusManager` | `MODULE_2_REMAINING_TASKS.md` |
| M3 | Personal notes Markdown trong `LearningView` | `MODULE_3_REMAINING_TASKS.md` |
| M4 | — | `MODULE_4_REMAINING_TASKS.md` |
| M5 | SRS session summary, streak display | `MODULE_5_REMAINING_TASKS.md` |
| M6 | Payment + notification bell | `MODULE_6_REMAINING_TASKS.md` |
| M7 | Admin charts, moderation UI | `MODULE_7_REMAINING_TASKS.md` |
| M8 | Badges, quest widget | `MODULE_8_REMAINING_TASKS.md` |

## 5. Công việc 🟢 P2 (Tooling)

- [ ] Thêm **ESLint** + **Prettier** (config tối thiểu).
- [ ] **Vitest** + test `apiError`, `AuthContext` (mock).
- [ ] **`.env.example`:** `VITE_API_BASE_URL=http://localhost:8080/api/v1`
- [ ] **Vite proxy** dev tới backend (tùy chọn, giảm CORS friction).

## 6. Docs

- [ ] Chuẩn hóa tiếng Việt có dấu trong `FRONTEND_DESIGN_PACKAGE_STYLE_GUIDE.md` (`DOCS_MAINTENANCE_TASKS.md`).
