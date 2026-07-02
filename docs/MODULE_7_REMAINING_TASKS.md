# 🌸 MODULE 7: Administration & Analytics — Trạng thái & Nhiệm vụ còn lại

> **Đối chiếu code (2026-05-23):** Có `AdminUserController`, `AdminAuditLogController`, `AdminStatisticsController`, `AuditLogService` — **đủ demo admin cơ bản**.  
> **Docs:** `MODULE_7_ADMINISTRATION_ANALYTICS.md` mô tả analytics/quick actions đầy đủ hơn code.

## 1. Đánh giá hiện trạng

| Tính năng | Docs | Code |
|-----------|------|------|
| Quản lý user / role / status | ✅ | ✅ `AdminUserController` |
| Audit log ghi (async) | ✅ | ✅ `AuditLogService` |
| Audit log xem (admin) | ✅ | ✅ API + `AuditLogs.jsx` |
| Dashboard thống kê | ✅ | 🟡 `AdminStatisticsController` — summary cơ bản |
| Quick actions (reset progress, unlock course) | ✅ | ❌ |
| Báo cáo doanh thu | ✅ (phụ thuộc M6) | ❌ |
| Course moderation | ✅ | ❌ |
| Payment admin / đối soát | ✅ | ❌ (chờ M6) |

## 2. Công việc còn lại

### 🔴 P0 — Đồng bộ docs

- [ ] Cập nhật `MODULE_7_ADMINISTRATION_ANALYTICS.md`: phân tách **Implemented** vs **Planned**.
- [ ] Liên kết payment admin tasks sang `MODULE_6_REMAINING_TASKS.md`.

### 🟡 P1 — Admin UX

- [ ] **Audit log viewer:** Lọc theo user, action, date range; export CSV (tùy chọn).
- [ ] **Dashboard charts:** User đăng ký theo tuần, khóa học phổ biến, enrollment count (PostgreSQL aggregate đủ cho MVP).
- [ ] **Quick actions API:** Reset enrollment progress, manual unlock course (admin only) + audit mỗi lần gọi.

### 🟡 P1 — Moderation

- [ ] **Course publish workflow** phối hợp M2: `PENDING` → admin approve → `PUBLISHED`.
- [ ] Trang admin duyệt khóa học (list pending).

### 🟢 P2 — Analytics nâng cao

- [ ] `event_log` / `daily_user_stats` (đã có trong V1 schema) — ingestion + Grafana hoặc admin charts.
- [ ] Báo cáo doanh thu sau khi M6 live.

### 🧪 Tests

- [ ] `@WebMvcTest` admin endpoints — forbidden cho STUDENT/TEACHER.
- [ ] Test audit log query pagination/filter.
