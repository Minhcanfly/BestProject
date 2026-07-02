# ⚙️ Hạ tầng & CI/CD — Công việc còn lại

> **Đối chiếu:** `docker-compose.yml`, `application.yml`, `.github/workflows/`, `01_TECHNICAL_STACK` (Kafka/K8s aspirational).

## 1. Đánh giá hiện trạng

| Thành phần | Config | Dùng trong code |
|------------|--------|-----------------|
| PostgreSQL 16 | ✅ Compose 5433 | ✅ |
| MinIO | ✅ | ✅ File/media |
| Mailpit | ✅ | ✅ Auth email |
| Redis 7 | ✅ pom + yml | ❌ |
| Kafka | ✅ Compose + yml | ❌ |
| Rabbit / WebSocket | ✅ pom | ❌ |
| Backend CI | `mvn package` | ❌ Không chạy test |
| Frontend CI | `npm run build` | ✅ |

## 2. Công việc 🔴 P0

- [ ] **CI chạy tests:** `mvn test` trong `backend-ci.yml`; fail PR nếu đỏ.
- [ ] **Secrets:** Xóa default API keys / JWT secret khỏi `application.yml` — chỉ placeholder + env bắt buộc.
- [ ] **Quyết định Redis/Kafka Phase 1:**
  - **Option A (khuyến nghị):** Gỡ khỏi `pom.xml` + Compose comment cho đến khi implement.
  - **Option B:** Implement tối thiểu (cache dictionary list) để justify dependency.

## 3. Công việc 🟡 P1

- [ ] **Spring profiles:** `dev`, `test`, `prod` — tách datasource, swagger, seeder.
- [ ] **CI Flyway smoke:** Postgres service + migrate V1–V7 (hoặc subset) trên PR backend.
- [ ] **Port documentation:** Local 5433 vs CI 5432 — ghi trong README/QUICK_START.
- [ ] **Media security:** `/api/v1/media/**` — signed URL hoặc auth thay permit-all.
- [ ] **Production checklist** trong README: tắt Swagger, CORS origins, rotate admin seeder.

## 4. Công việc 🟢 P2 (Sau Phase 2 feature)

- [ ] GitHub Actions: cache Maven + npm.
- [ ] Docker image build backend/frontend (optional).
- [ ] Kafka cho notification worker — **sau** M6 sync path ổn định.
- [ ] K8s / Nginx — theo Master Spec Phase 3, không blocker MVP.

## 5. Liên kết

- Refactor / ApiResponse: `HienTrang/STABILIZATION_AND_REFACTORING_TASKS.md` § Phase 2.
- Data migrate: `DATA_AND_MIGRATION_TASKS.md`.
