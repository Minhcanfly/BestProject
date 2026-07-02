# 05 — Backlog ưu tiên (rút gọn)

> Chi tiết đầy đủ: [`docs/README.md`](../docs/README.md). Tick task tại file `docs/*_TASKS.md` tương ứng.

## 🔴 P0 — Làm trước (1–2 sprint)

| # | Việc | File backlog |
|---|------|----------------|
| 1 | Sửa **radical FK** V2/V3 (hoặc V8 migration) | `docs/DATA_AND_MIGRATION_TASKS.md` |
| 2 | **CI chạy `mvn test`** | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` |
| 3 | FE: bỏ hardcode API (`SaveToNotebookPopup`, OAuth URL) | `docs/FRONTEND_REMAINING_TASKS.md` |
| 4 | Flyway clean migrate V1→V7 trên Postgres trống | `docs/DATA_AND_MIGRATION_TASKS.md` |
| 5 | Secrets: không default nhạy cảm trong `application.yml` | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` |

## 🟡 P1 — Củng cố MVP

| # | Việc | File |
|---|------|------|
| 6 | Auth integration tests + logout API từ FE | `MODULE_1_REMAINING_TASKS.md` |
| 7 | Tách `NotebookService` + test ownership/SRS | `STABILIZATION` + M5 |
| 8 | Gỡ hoặc implement Redis/Kafka | `INFRASTRUCTURE_AND_CI_TASKS.md` |
| 9 | Bảo vệ `/media/**` (signed URL / auth) | `INFRASTRUCTURE` + security |
| 10 | `@WebMvcTest` 5–10 endpoint critical | `STABILIZATION` |
| 11 | AI Syllabus UI trong `SyllabusManager` | `MODULE_2_REMAINING_TASKS.md` |
| 12 | Course publish workflow PENDING→PUBLISHED | M2 + `MODULE_7_REMAINING_TASKS.md` |
| 13 | Admin audit viewer + charts cơ bản | `MODULE_7_REMAINING_TASKS.md` |
| 14 | Tách `SyllabusManager.jsx`, `Dashboard.jsx` | `FRONTEND_REMAINING_TASKS.md` |
| 15 | GIN index search vocabulary | `DATA_AND_MIGRATION` + M4 |

## 🔵 P2 — Module mới (sau Phase 1 demo ổn)

| Module | Việc | File |
|--------|------|------|
| M6 | VNPay sandbox + IPN + enrollment unlock + notification bell | `MODULE_6_REMAINING_TASKS.md` |
| M8 | XP ledger, streak policy, badges | `MODULE_8_REMAINING_TASKS.md` |
| All | `ApiResponse<T>` refactor (playbook target) | `HienTrang/STABILIZATION` Phase 2 |

## ⛔ Không làm sớm (trừ khi user yêu cầu)

- Kafka / K8s / Elasticsearch production
- Virtual pet / full leaderboard
- Tách microservices

## Phase 1 release gate (manual demo)

- [ ] Login → courses → enroll → learn → progress save
- [ ] Dictionary search → notebook → SRS review
- [ ] **Không** claim payment/gamification complete

Checklist đầy đủ: `HienTrang/PHASE_1_P0_STATUS.md` § Release Recommendation.
