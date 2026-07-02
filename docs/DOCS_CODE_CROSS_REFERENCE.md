# Đối chiếu Tài liệu ↔ Code (Docs ↔ Code Truth Map)

> **Cập nhật:** 2026-05-23  
> **Mục đích:** Một bảng chân lý duy nhất — tài liệu nào đúng, tài liệu nào lệch code, và file công việc tương ứng.

**Nguồn chân lý ưu tiên (theo thứ tự):**

1. Code đang chạy (`sakuralearn-backend`, `sakuralearn-frontend`)
2. `HienTrang/PHASE_1_P0_STATUS.md`
3. `docs/MODULE_*_REMAINING_TASKS.md` + file task mới trong `docs/`
4. `docs/00_MASTER_SPECIFICATION.md` — **vision / roadmap** (không phải trạng thái hiện tại)
5. `PV/`, `HienTrang/GRAND_ROADMAP_*` — portfolio / kế hoạch dài hạn

---

## Ma trận Module (8 module)

| Module | Docs chính | Trạng thái docs | Trạng thái code | Lệch pha | File công việc |
|--------|------------|-----------------|-----------------|----------|----------------|
| **M1** Auth | `MODULE_1_AUTHENTICATION_USER.md` | Gần đúng | ✅ MVP ổn | Nhỏ (test, cookie) | `MODULE_1_REMAINING_TASKS.md` |
| **M2** Course | `MODULE_2_*`, Master §M2 | Gần đúng | ✅ MVP | Workflow publish, AI UI | `MODULE_2_REMAINING_TASKS.md` |
| **M3** Learning | `MODULE_3_*`, Master §M3 | Gần đúng | ✅ MVP | Notes UI, edge case teacher edit | `MODULE_3_REMAINING_TASKS.md` |
| **M4** Dictionary | `MODULE_4_*`, Master §M4 | **Thiếu bug data** | ✅ MVP + **lỗi radical FK** | V3 seed vs V2 UPDATE | `MODULE_4_REMAINING_TASKS.md`, `DATA_AND_MIGRATION_TASKS.md` |
| **M5** SRS | `MODULE_5_*`, `MODULE_5_REVIEW_PRACTICE_SRS.md` | Gần đúng | ✅ MVP | FSRS, insights | `MODULE_5_REMAINING_TASKS.md` |
| **M6** Payment/Notify | `MODULE_6_*`, Master §M6 | **Sai: ghi "✅ Hoàn thiện"** | ❌ Chỉ schema DB | Toàn bộ module | `MODULE_6_REMAINING_TASKS.md` |
| **M7** Admin | `MODULE_7_*`, Master §M7 | Thổi phồng một phần | 🟡 Partial | Analytics, quick actions | `MODULE_7_REMAINING_TASKS.md` |
| **M8** Gamification | `MODULE_8_*`, Master §M8 | **Sai: ghi hoàn chỉnh** | ❌ Cột User + quiz XP đơn giản | Badge, streak policy, quests | `MODULE_8_REMAINING_TASKS.md` |

---

## Đối chiếu tài liệu kỹ thuật

| Tài liệu | Khẳng định | Code thực tế | Hành động |
|----------|------------|--------------|-----------|
| `README.md` | Java 21, SB 4, React 19, custom CSS | ✅ Khớp | Sửa link `PHASE_1_P0_STATUS` → `HienTrang/` |
| `README.md` | Flyway V1–V5 | Thiếu V6, V7 | Cập nhật danh sách migration |
| `01_TECHNICAL_STACK` | Tailwind, Spring Boot 3.4+ | Custom CSS, SB **4.0.5** | `DOCS_MAINTENANCE_TASKS.md` |
| `00_MASTER_SPEC` | M1–M5 Demo-ready | ✅ Khớp hướng MVP | Thêm banner "Vision vs MVP" |
| `00_MASTER_SPEC` | M6–M8 mô tả như đã có | ❌ Chưa có Java | Trỏ sang `MODULE_6/7/8_REMAINING_TASKS` |
| `playbook/` | Bắt buộc `ApiResponse<T>` | ❌ Chưa implement | Phase 2 — `STABILIZATION_*` |
| `MODULE_6` bảng §4 | Payment/Notification ✅ | ❌ Không controller/service | Sửa trạng thái + task file mới |
| `PHASE_1_P0_STATUS` | M6/M8 chưa code | ✅ Khớp audit | Giữ làm truth map |
| `development_guidelines` | Flyway/ETL rules | ✅ Khớp thực tế | Thêm mục radical FK |

---

## Đối chiếu hạ tầng & CI

| Hạng mục | Docs / Compose | Code | File công việc |
|----------|----------------|------|----------------|
| PostgreSQL + Flyway | ✅ | ✅ | `DATA_AND_MIGRATION_TASKS.md` |
| MinIO | ✅ | ✅ Dùng thật | — |
| Mailpit | ✅ | ✅ Auth email | — |
| Redis | ✅ trong yml | ❌ Không dùng trong Java | `INFRASTRUCTURE_AND_CI_TASKS.md` |
| Kafka | ✅ trong yml | ❌ Không dùng trong Java | `INFRASTRUCTURE_AND_CI_TASKS.md` |
| GitHub Actions | README: build | `mvn package` only, **không test** | `INFRASTRUCTURE_AND_CI_TASKS.md` |
| ETL `data/scripts` | README 20+ scripts | ✅; raw data gitignored | `DATA_AND_MIGRATION_TASKS.md` |

---

## Đối chiếu Frontend (không có module doc riêng)

| Docs (`FRONTEND_DESIGN_*`, playbook) | Code | File công việc |
|-------------------------------------|------|----------------|
| Feature-first, thin services | ✅ Cấu trúc ổn | `FRONTEND_REMAINING_TASKS.md` |
| Axios interceptors + refresh | ✅ | Sửa token field naming nếu lệch BE |
| Không hardcode API URL | ❌ OAuth, SaveToNotebookPopup | `FRONTEND_REMAINING_TASKS.md` |
| ESLint / tests | ❌ Không có | `FRONTEND_REMAINING_TASKS.md` |

---

## Luồng demo Phase 1 (đã verify trong code)

| Bước | Backend | Frontend | Ghi chú |
|------|---------|----------|---------|
| Login | `AuthController` | `Login.jsx` | ✅ |
| Course list | `CourseController` | `CourseList.jsx` | ✅ |
| Enroll | `EnrollmentController` | `CourseDetail.jsx` | ✅ |
| Learn + progress | `ProgressController` | `LearningView.jsx` | ✅ |
| Dictionary search | `DictionaryController` | `Library.jsx` | ✅ |
| Notebook + SRS | `NotebookController`, `SRSController` | `MyNotebook`, `PracticeSession` | ✅ |
| Thanh toán | — | — | ❌ Chưa có — **không demo M6** |

---

## Chỉ mục file công việc

| File | Phạm vi |
|------|---------|
| [MODULE_1_REMAINING_TASKS.md](./MODULE_1_REMAINING_TASKS.md) | Auth, security, session |
| [MODULE_2_REMAINING_TASKS.md](./MODULE_2_REMAINING_TASKS.md) | Course, syllabus, publish |
| [MODULE_3_REMAINING_TASKS.md](./MODULE_3_REMAINING_TASKS.md) | Learning, progress, notes |
| [MODULE_4_REMAINING_TASKS.md](./MODULE_4_REMAINING_TASKS.md) | Dictionary, notebook, search |
| [MODULE_5_REMAINING_TASKS.md](./MODULE_5_REMAINING_TASKS.md) | SRS, practice |
| [MODULE_6_REMAINING_TASKS.md](./MODULE_6_REMAINING_TASKS.md) | **Mới** — Payment, VNPay, notification |
| [MODULE_7_REMAINING_TASKS.md](./MODULE_7_REMAINING_TASKS.md) | **Mới** — Admin, analytics, moderation |
| [MODULE_8_REMAINING_TASKS.md](./MODULE_8_REMAINING_TASKS.md) | **Mới** — XP, streak, badges |
| [DATA_AND_MIGRATION_TASKS.md](./DATA_AND_MIGRATION_TASKS.md) | **Mới** — Flyway, ETL, radical FK |
| [INFRASTRUCTURE_AND_CI_TASKS.md](./INFRASTRUCTURE_AND_CI_TASKS.md) | **Mới** — Docker, CI, deps thừa |
| [FRONTEND_REMAINING_TASKS.md](./FRONTEND_REMAINING_TASKS.md) | **Mới** — FE cross-cutting |
| [DOCS_MAINTENANCE_TASKS.md](./DOCS_MAINTENANCE_TASKS.md) | **Mới** — Sửa docs lệch code |
| [../HienTrang/STABILIZATION_AND_REFACTORING_TASKS.md](../HienTrang/STABILIZATION_AND_REFACTORING_TASKS.md) | P0/P1/P2 refactor |
| [../HienTrang/PHASE_1_P0_STATUS.md](../HienTrang/PHASE_1_P0_STATUS.md) | Truth map Phase 1 |

---

## Quy ước cập nhật

Khi hoàn thành một hạng mục:

1. Đánh dấu `[x]` trong file `*_REMAINING_TASKS.md` tương ứng.
2. Nếu thay đổi trạng thái module → cập nhật bảng trên trong file này.
3. Nếu sửa claim trong spec → cập nhật `00_MASTER_SPEC` hoặc `MODULE_*` và tick `DOCS_MAINTENANCE_TASKS.md`.
