# Phase 1 — Repository Inventory & Code Audit

Audit date: 2026-08-03  
Snapshot: `develop@2175947f481493bcdbd1fb9c45c50a9755a52b85`

## Gate result

**PHASE 1 COMPLETE.** All 401 tracked files are present in `FILE_MANIFEST.md`; 400 were reviewed and one pre-existing deleted ERD image is unreadable. Critical-file FULL coverage is 100% (105/105). No source file was modified.

## Repository and technology evidence

| Area | Detected reality | Primary evidence |
| --- | --- | --- |
| Backend | Java 21, Spring Boot 4.0.5, Spring MVC/Security/Data JPA, Hibernate 7, MapStruct, Flyway, Spring AI | `pom.xml`, successful Maven compile, generated MapStruct sources |
| Frontend | React 19.2.5, Vite 8.0.8, React Router 7.14.1, Axios 1.15.0, custom CSS, Lucide, dnd-kit | `package.json`, `npm ls --all`, production build |
| Database | PostgreSQL-oriented schema, UUID/JSONB/arrays/enums, Flyway V1–V7; 44 `CREATE TABLE` statements | migrations and `docker-compose.yml` |
| Authentication | Email/password, JWT bearer access token, database refresh token, email verification/reset, Google OAuth2 | Security/Auth classes and configuration |
| Storage/mail | MinIO object storage and Mailpit-compatible SMTP | Compose, configuration, service implementations |
| Testing | JUnit 6/Mockito/H2; 6 test classes and 14 test cases | `src/test`, Maven Surefire result |
| CI/CD | GitHub Actions: backend Maven `package`, frontend `npm ci` + build | `.github/workflows/*.yml` |
| Declared but unused in application logic | Redis, Kafka, AMQP/Rabbit, WebSocket | dependencies/Compose present; no production usage located |

Measured implementation surface:

- 19 controllers, 80 explicit HTTP method mappings, 26 entities, 40 service-layer Java files, 25 repositories.
- 23 React `<Route>` declarations and 14 frontend service files.
- Seed migrations: 3,003 Kanji rows, 21,792 vocabulary rows, and 842 grammar rows.

## Domain audit summary

### Business and authorization

- Modules 1–5 have substantial implementation, but several “complete” claims overstate enforcement. Lesson/block/quiz/AI mutations check only the broad TEACHER role, not course ownership.
- Authenticated users can obtain lesson/block/quiz content without an enrollment guard; media is permit-all. Paid/unpublished enrollment rules are not enforced.
- Progress thresholds exist only in React. The server accepts direct completion updates and exposes an endpoint that marks every lesson block complete.
- Every passing quiz attempt grants another 10 XP; the correct answers are included in the quiz response.
- Module 6 and most of Module 8 remain schema-only, consistent with the current onboarding warning.

### Security

- A tracked configuration line contains a credential-shaped Google API key. The value is intentionally redacted from all audit artifacts; validity was not tested.
- Quiz endpoints return JPA entities. `QuizQuestion.correctAnswer` and `User.passwordHash` are serializable properties, creating answer disclosure and password-hash exposure.
- Teacher-controlled lesson HTML is stored without sanitization and rendered via `dangerouslySetInnerHTML`. Tokens are held in `localStorage`, making the chain materially exploitable as stored XSS/token theft.
- OAuth success redirects access/refresh tokens and PII in the URL query. The OAuth authorization request is Java-deserialized from an unsigned client cookie.
- No rate limiting or login/forgot-password throttling was found. Forgot-password reveals whether an account exists; reset does not revoke refresh tokens; refresh tokens are not rotated.
- Upload accepts up to 500 MB with no MIME/extension allowlist and makes the whole bucket public.

### Database and data integrity

- V2 converts numeric radical identifiers 1–213 to glyphs, while all 3,003 V3 Kanji rows still look up numeric `radicals.character`; clean migration therefore leaves those `radical_id` values null.
- The schema has no text-search vector/index for vocabulary/grammar; application search is LIKE/ILIKE, not documented GIN full-text search.
- V3–V5 were read and exhaustively structure-scanned. Every non-comment statement is terminated; V3 contains two U+001D control characters. V4 and V5 begin with table-wide deletes as immutable seed migrations.
- Entity/schema mismatches include one-to-one mappings without matching uniqueness (`refresh_tokens.user_id`, `quizzes.lesson_block_id`).

### API and maintainability

- Wildcard response types, raw maps, direct entity exposure, missing `@Valid`, and exception-message reflection are widespread.
- Compiled MapStruct output confirms `CourseResponse.teacherName`, `LessonResponse.courseId`, and `LessonBlockResponse.lessonId` are never populated.
- `NotebookService` combines folders, hydration, custom items, SRS scheduling and reviews. It performs in-memory filtering/pagination plus per-card lookups.
- Media URLs are hardcoded to localhost; deletion expects a different MinIO URL shape, leaving replaced avatars/thumbnails orphaned.

### DevOps and production readiness

- No `application-prod.yml`, application/container health check, monitoring, backup, rollback, or deployment manifest was found.
- Swagger/OpenAPI is explicitly permit-all and runtime logs confirm both endpoints are enabled by default.
- Application configuration has development fallbacks for security-sensitive values; production fail-fast validation was not found.
- Frontend has no lint/test/typecheck script. It contains direct localhost fetches outside the central Axios service.

## Runtime verification

| Order | Command/check | Result | Evidence / impact |
| ---: | --- | --- | --- |
| 1 | Manifest/dependency inspection | PASS | Maven tree and `npm ls --all` resolved |
| 2 | Static searches and generated-code inspection | PASS with findings | Authz, XSS, entity exposure, config, migrations, hardcoded URLs, and data scans |
| 3–4 | `mvnw.cmd test` | PASS | 181 main sources compiled; 14 tests, 0 failures/errors/skips |
| 3 | `npm run build` | PASS | 1,871 modules; JS 494.89 KB (149.27 KB gzip), CSS 101.91 KB |
| 5 | Integration/E2E against PostgreSQL/MinIO/Mail | NOT RUN | No isolated integration suite; starting local persistent Compose could mutate user infrastructure/data |
| 6 | Frontend lint/typecheck/test | NOT AVAILABLE | No corresponding scripts/configuration |
| 7 | `npm audit --json` | FAIL (findings) | 6 high-severity vulnerable package nodes in frontend dependency tree |
| 7 | data-script `npm audit --package-lock-only --json` | FAIL (findings) | 2 high-severity vulnerable package nodes |
| 7 | Backend vulnerability scanner | NOT AVAILABLE | Dependency tree captured; no installed OSV/Trivy/Grype/Dependency-Check scanner |

The H2 context test does not execute Flyway and does not validate PostgreSQL-specific JSONB/array/enums or clean V1→V7 migration behavior.

## Phase 1 limitations

- No live external credential was tested and no secret value was copied.
- No destructive Docker reset, production migration, deployment, or external write was performed.
- The missing tracked ERD image remains unreadable because it was already deleted before the audit.
