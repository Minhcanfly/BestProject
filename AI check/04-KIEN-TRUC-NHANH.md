# 04 — Kiến trúc nhanh (đường dẫn & API)

## Backend packages

`com.sakuralearn.sakuralearn_backend`

| Package | Vai trò |
|---------|---------|
| `controller` | REST (19 class) |
| `service` / `service.impl` | Business logic |
| `repository` | Spring Data JPA (25) |
| `entity` / `entity.enums` | 25 entities |
| `dto.request` / `dto.response` / `dto.srs` | API contracts |
| `mapper` | MapStruct |
| `security` / `security.oauth2` | JWT, OAuth2 |
| `config` | MinIO, AI, OpenAPI, seeder |
| `exception` | `GlobalExceptionHandler` |
| `util` | `RomajiConverter`, `CookieUtils` |

**Entry:** `SakuralearnBackendApplication.java` — `@EnableJpaAuditing`, `@EnableAsync`.

## API prefix

Tất cả: **`/api/v1`**

| Prefix | Controller | Ghi chú |
|--------|------------|---------|
| `/auth` | Auth, Verification | login, register, refresh, verify email |
| `/users` | Profile | GET/PUT `/me` |
| `/courses` | Course, Lesson (nested) | publish, generate-syllabus |
| `/lessons/{id}/blocks` | LessonBlock | reorder |
| `/enrollments` | Enrollment | enroll, my, check |
| `/progress` | Progress | block/lesson/course progress |
| `/quizzes` | Quiz | submit |
| `/notes` | Note | personal notes in lesson |
| `/reviews` | Review | course rating |
| `/dictionary` | Dictionary | kanji, vocab, grammar, search |
| `/notebook` | Notebook | folders, items, srs-stats |
| `/srs` | SRS | due, review |
| `/files` | File | upload → MinIO |
| `/media/**` | Media | stream (**permit-all**) |
| `/admin/users` | AdminUser | ADMIN only |
| `/admin/audit-logs` | AdminAuditLog | ADMIN only |
| `/admin/statistics` | AdminStatistics | summary |

Swagger (dev): `http://localhost:8080/swagger-ui.html`

## Security (tóm tắt)

- Stateless JWT + refresh token trong DB.
- Roles: `ROLE_STUDENT`, `ROLE_TEACHER`, `ROLE_ADMIN`.
- `@EnableMethodSecurity` + `@PreAuthorize` trên admin/teacher mutations.
- OAuth2 Google → redirect SPA với token query/cookie flow.

## Frontend structure

`sakuralearn-frontend/src/`

| Path | Vai trò |
|------|---------|
| `routes/AppRoutes.jsx` | Routes + guards |
| `constants/routes.js` | Path constants |
| `contexts/AuthContext.jsx` | User, login, logout, hasRole |
| `services/api.js` | Axios + interceptors |
| `services/*Service.js` | 14 domain APIs |
| `pages/` | Màn hình |
| `components/` | UI + `courses/`, `dictionary/`, `common/` |
| `layouts/` | MainLayout, AuthLayout, Sidebar |

**Env:** `VITE_API_BASE_URL` (default `http://localhost:8080/api/v1`).

## Flyway migrations

`sakuralearn-backend/src/main/resources/db/migration/`

| Version | File |
|---------|------|
| V1 | Initial schema (~634 lines, 8-module tables) |
| V2 | Seed radicals (+ UPDATE glyph) |
| V3 | Seed kanji (~3k) |
| V4 | Seed vocab (~22k) |
| V5 | Seed grammar |
| V6 | Reviews table |
| V7 | `users.srs_daily_limit` |

`ddl-auto: validate` — **không** Hibernate auto-update.

## Luồng demo Phase 1 (golden path)

1. Login → `AuthController` / `Login.jsx`
2. Courses → `CourseController` / `CourseList.jsx`
3. Enroll → `EnrollmentController` / `CourseDetail.jsx`
4. Learn → `ProgressController` / `LearningView.jsx`
5. Dictionary → `DictionaryController` / `Library.jsx`
6. Save notebook → `NotebookController`
7. SRS practice → `SRSController` / `PracticeSession.jsx`

**Không demo:** thanh toán VNPay (M6).

## Class “đinh” khi debug

| Chủ đề | Class |
|--------|-------|
| SM-2 | `SrsCalculatorService` |
| Notebook + SRS | `NotebookService` (lớn) |
| Progress | `ProgressServiceImpl` |
| Dictionary search | `DictionaryService`, `RomajiConverter` |
| AI syllabus | `AiSyllabusServiceImpl` |
| Auth | `AuthServiceImpl`, `JwtAuthFilter`, `SecurityConfig` |
| FE API | `services/api.js` |
| FE học | `pages/courses/LearningView.jsx` |

## ETL (data)

- Scripts: `data/scripts/*.js` (Node).
- Raw: `data/raw/` (gitignored).
- Output: ghi vào `db/migration/V3–V5` hoặc `data/processed/`.
