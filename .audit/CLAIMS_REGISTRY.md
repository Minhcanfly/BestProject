# Claims Registry — Phase 0

Audit date: 2026-08-03  
Status: **COMPLETE for Checkpoint P0**

Every row is a `[DOC-CLAIM]`. Phase 0 deliberately makes no `MATCHED`, `PARTIALLY_MATCHED`, `MISMATCHED`, or `NOT_VERIFIABLE` decision. Contradictory claims are retained as separate records for Phase 2 reconciliation.

| Claim ID | Source | Claim | Category | Source confidence |
| -------- | ------ | ----- | -------- | ----------------- |
| C001 | `README.md` | SakuraLearn is a Japanese-learning platform for Vietnamese learners combining LMS, dictionary, notebook, quizzes, SRS, and administration. | Feature | Medium |
| C002 | `AI check/01-TONG-QUAN-DU-AN.md` | The active roles are STUDENT, TEACHER, and ADMIN with RBAC. | Security | High |
| C003 | `AI check/01-TONG-QUAN-DU-AN.md` | Frontend uses React 19, Vite 8, React Router 7, Axios, custom CSS, Lucide, and @dnd-kit. | Technology Stack | High |
| C004 | `AI check/01-TONG-QUAN-DU-AN.md` | Backend uses Java 21, Spring Boot 4.0.5, Spring Security, JPA, Flyway, MapStruct, and Lombok. | Technology Stack | High |
| C005 | `AI check/01-TONG-QUAN-DU-AN.md` | Database is PostgreSQL 16 with UUID primary keys and Flyway V1–V7. | Technology Stack | High |
| C006 | `AI check/01-TONG-QUAN-DU-AN.md` | MinIO and Mailpit are actively used; local Compose also defines Redis and Kafka. | Infrastructure | High |
| C007 | `PV/Overview_Architecture.md` | The system is a modular monolith chosen for strong consistency between Auth, Course, Notebook, and SRS. | Architecture | Low |
| C008 | `AI check/02-HIEN-TRANG-CODE.md` | Backend has 19 controllers, about 82 endpoints, 25 entities, about 40 services, and 6 test classes. | Metric | High |
| C009 | `AI check/02-HIEN-TRANG-CODE.md` | Frontend has about 20 routes and 14 Axios service modules, using AuthContext without Redux or React Query. | Metric | High |
| C010 | `AI check/04-KIEN-TRUC-NHANH.md` | Backend follows controller → service/impl → repository → entity layering. | Architecture | High |
| C011 | `AI check/04-KIEN-TRUC-NHANH.md` | All REST APIs use the `/api/v1` prefix. | API | High |
| C012 | `AI check/04-KIEN-TRUC-NHANH.md` | The application entry enables JPA auditing and asynchronous execution. | Architecture | High |
| C013 | `README.md` | Flyway migrations currently comprise V1 initial schema, V2 radicals, V3 kanji, V4 vocabulary, V5 grammar, V6 reviews, and V7 SRS daily limit. | Database | Medium |
| C014 | `README.md` | Hibernate runs with `ddl-auto=validate`; schema changes should be made with Flyway. | Database | Medium |
| C015 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 1 implements Auth/RBAC/JWT/email/reset/OAuth hooks and is stable enough for an MVP demo. | Module Status | High |
| C016 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 2 implements core CRUD, lesson blocks, publishing basics, AI syllabus backend, and reviews on backend and frontend. | Module Status | High |
| C017 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 3 implements learning view, block/lesson/course progress, resume timestamp, quiz, and personal notes. | Module Status | High |
| C018 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 4 implements Kanji/vocabulary/grammar search, notebook folders, saved items, and Romaji-to-Hiragana conversion. | Module Status | High |
| C019 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 5 implements SM-2-style review, daily limit, and review UI. | Module Status | High |
| C020 | `docs/MODULE_6_REMAINING_TASKS.md` | Module 6 has payment and notification tables but no Payment/VNPay or notification Java/React layer. | Module Status | High |
| C021 | `docs/MODULE_7_REMAINING_TASKS.md` | Module 7 has user management, audit-log APIs/UI, and basic statistics, but lacks full analytics, moderation, and payment administration. | Module Status | High |
| C022 | `docs/MODULE_8_REMAINING_TASKS.md` | Module 8 has User XP/streak schema and simple quiz XP/UI, but no XP ledger entity, server streak policy, badges, leaderboard, or quests. | Module Status | High |
| C023 | `docs/00_MASTER_SPECIFICATION.md` | Module 1 is “Demo-ready” with registration/login, email verification, JWT refresh rotation/revocation, profile, RBAC, soft delete, and audit tracking. | Module Status | Medium |
| C024 | `docs/MODULE_2_COURSE_LESSON_MANAGEMENT.md` | Course, Lesson, LessonBlock, media upload, search, enrollment, status control, and preview mode are complete. | Module Status | Medium |
| C025 | `docs/MODULE_3_LEARNING_EXPERIENCE_PROGRESS.md` | LessonBlock player, progress tracking, auto calculation, last accessed, manual completion, notes, and continue-learning are complete. | Module Status | Medium |
| C026 | `docs/MODULE_4_KNOWLEDGE_BASE_DICTIONARY.md` | Master-data library, full-text multilingual search, notebook, custom-item CRUD, personal notes, media, and SRS linking are complete. | Module Status | Medium |
| C027 | `docs/MODULE_5_REVIEW_PRACTICE_SRS.md` | SRS engine, flashcard UI, practice quiz, due filtering, automatic card creation, and review history are complete. | Module Status | Medium |
| C028 | `docs/MODULE_6_MONETIZATION_NOTIFICATION.md` | Payment integration, IPN, enrollment unlock, payment history, and in-app notification are planned; email is used only for auth. | Module Status | Medium |
| C029 | `docs/MODULE_7_ADMINISTRATION_ANALYTICS.md` | Admin scope includes user/content/payment management, automatic detailed audit, analytics, export, and moderation. | Feature | Medium |
| C030 | `docs/MODULE_8_GAMIFICATION_ENHANCEMENT.md` | Its detailed status table labels XP, leveling, streak, badge, comments, Redis caching, and dark mode as complete. | Module Status | Medium |
| C031 | `AI check/SakuraLearn_Interview_Preparation.md` | The project has 9 modules and 7 implemented modules, including an implemented M9 Notification module. | Module Status | Low |
| C032 | `PV/SakuraLearn_Interview_DeepDive.md` | The project has 9 modules; M9 notification is described separately, while M6 payment and M8 gamification are schema-only. | Module Status | Low |
| C033 | `README.md` | Auth includes registration, email verification, login, refresh token, logout, forgot/reset password, OAuth2 Google hooks, and RBAC. | Feature | Medium |
| C034 | `docs/MODULE_1_AUTHENTICATION_USER.md` | Login returns an access token and a seven-day database-backed refresh token with rotation; logout deletes the refresh token. | Security | Medium |
| C035 | `docs/MODULE_1_REMAINING_TASKS.md` | Frontend currently stores tokens locally, logout only clears local state, and auth lacks integration tests. | Security | High |
| C036 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | The earlier audit found reset password transmitted the new password through query parameters. | Security | Medium (dated) |
| C037 | `HienTrang/PHASE_1_P0_STATUS.md` | The reset-password query-string issue was fixed during P0. | Security | High |
| C038 | `AI check/02-HIEN-TRANG-CODE.md` | `/api/v1/media/**` is permit-all. | Security | High |
| C039 | `AI check/02-HIEN-TRANG-CODE.md` | `application.yml` contains fallback/default secrets or API keys. | Security | High |
| C040 | `AI check/02-HIEN-TRANG-CODE.md` | An invalid JWT continues through the filter chain and is rejected only by later endpoint security where applicable. | Security | High |
| C041 | `HienTrang/PHASE_1_P0_STATUS.md` | P0 added ownership checks to notebook folders, flashcard reviews, and learning progress. | Security | High |
| C042 | `HienTrang/PHASE_1_P0_STATUS.md` | P0 applies shared TextSanitizer handling to reviews, notebook notes, folder data, and custom notebook fields. | Security | High |
| C043 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | The earlier audit found a default admin account with a known password and plaintext password logging. | Security | Medium (dated) |
| C044 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | That report later marks profiles, secret cleanup, seeder restriction, reset-body change, debug cleanup, and focused tests as completed. | Roadmap | Medium (dated) |
| C045 | `docs/DATA_AND_MIGRATION_TASKS.md` | V2 changes radical characters from Kangxi numbers to glyphs while V3 still looks up numeric values, leaving many `kanji.radical_id` values null after clean migration. | Database | High |
| C046 | `docs/DATA_AND_MIGRATION_TASKS.md` | `database/init_schema_v1.sql` duplicates V1 and risks drift from Flyway runtime schema. | Database | High |
| C047 | `database/init_schema_v1.sql` | The reference schema defines UUID-based tables across auth, LMS, progress, dictionary, SRS, payment, notification, gamification, AI, analytics, and event logging. | Database | Medium (reference only) |
| C048 | `database/init_schema_v1.sql` | The reference schema includes GIN indexes for Kanji reading arrays but not the proposed vocabulary full-text indexes. | Database | Medium (reference only) |
| C049 | `docs/MODULE_4_KNOWLEDGE_BASE_DICTIONARY.md` | Dictionary search uses PostgreSQL `tsvector` and GIN indexing. | Performance | Medium |
| C050 | `README.md` | Dictionary holds 300K+ records and uses EntityGraph/JOIN plus GIN-backed full-text search under 500 ms. | Performance | Medium |
| C051 | `AI check/01-TONG-QUAN-DU-AN.md` | The dictionary contains about 20K+ words. | Metric | High |
| C052 | `AI check/04-KIEN-TRUC-NHANH.md` | Seed data is approximately 3K Kanji and 22K vocabulary entries. | Metric | High |
| C053 | `PV/SakuraLearn_Interview_DeepDive.md` | The dictionary has about 3K Kanji, 21K vocabulary entries, and 847 grammar patterns. | Metric | Low |
| C054 | `AI check/SakuraLearn_Interview_Preparation.md` | The database has 20 tables, 14 fully implemented and 6 schema-only. | Metric | Low |
| C055 | `PV/SakuraLearn_Interview_DeepDive.md` | The database has 30 tables. | Metric | Low |
| C056 | `AI check/02-HIEN-TRANG-CODE.md` | The backend has six test classes and 12 passing tests, covering roughly 7% of an 82-endpoint surface. | Testing | High |
| C057 | `HienTrang/PHASE_1_P0_STATUS.md` | `mvnw test` passed with 12 tests, zero failures, errors, or skips. | Testing | High |
| C058 | `README.md` | The latest local frontend production build and backend focused tests passed. | Testing | Medium |
| C059 | `docs/FRONTEND_REMAINING_TASKS.md` | `npm run build` passes with an approximately 495 KB JavaScript bundle. | Testing | High |
| C060 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | On 2026-04-30, frontend build and Spring context test passed, with only one backend test. | Testing | Medium (dated) |
| C061 | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` | Backend CI runs `mvn package` but does not run or gate on `mvn test`; frontend CI runs the build. | Infrastructure | High |
| C062 | `docs/FRONTEND_REMAINING_TASKS.md` | Frontend has no ESLint, TypeScript, automated tests, or `.env.example`. | Testing | High |
| C063 | `AI check/02-HIEN-TRANG-CODE.md` | There are no controller tests or auth integration tests. | Testing | High |
| C064 | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` | PostgreSQL, MinIO, and Mailpit are used by application code, while Redis, Kafka, Rabbit/AMQP, and WebSocket dependencies are unused. | Infrastructure | High |
| C065 | `docs/01_TECHNICAL_STACK_AND_STANDARDS.md` | Redis/Spring Cache stores dictionary data, SRS queue, and sessions; Kafka supports distributed events. | Infrastructure | Medium |
| C066 | `README.md` | Docker Compose supplies PostgreSQL, Redis, Mailpit, MinIO, and Kafka for local development. | Infrastructure | Medium |
| C067 | `README.md` | Backend CI starts PostgreSQL/Redis and runs Maven package; frontend CI installs and builds. | Infrastructure | Medium |
| C068 | `docs/01_TECHNICAL_STACK_AND_STANDARDS.md` | CI runs Maven tests and builds artifacts on pushes/PRs to main and develop. | Infrastructure | Medium |
| C069 | `README.md` | AI syllabus uses Spring AI with OpenAI/Gemini and multi-model fallback to a local template. | Feature | Medium |
| C070 | `README.md` | The AI syllabus generator tries GPT-4o, Gemini Pro, and Grok before local fallback. | Feature | Medium |
| C071 | `AI check/SakuraLearn_Interview_Preparation.md` | AI provides grammar explanations, vocabulary context, and conversational tutoring backed by persisted chat history. | Feature | Low |
| C072 | `PV/SakuraLearn_Interview_DeepDive.md` | The AI syllabus feature exists, but an AI chat table and ten-message tutor history are also described. | Feature | Low |
| C073 | `README.md` | Media streaming supports MinIO object storage and HTTP range responses. | Feature | Medium |
| C074 | `docs/MODULE_2_COURSE_LESSON_MANAGEMENT.md` | Media upload returns time-limited presigned URLs and paid-course enrollment requires successful payment. | Feature | Medium |
| C075 | `docs/MODULE_3_LEARNING_EXPERIENCE_PROGRESS.md` | Video auto-completes at 85%, audio at 80%, quiz at 70%, and progress excludes soft-deleted blocks. | Feature | Medium |
| C076 | `HienTrang/STABILIZATION_AND_REFACTORING_TASKS.md` | Video/audio completion thresholds are still a remaining task. | Feature | High |
| C077 | `docs/MODULE_5_REVIEW_PRACTICE_SRS.md` | SRS follows SM-2 with quality 1–5, intervals 1 and 6 days, later multiplication by ease factor, and a 1.3 minimum ease factor. | Feature | Medium |
| C078 | `HienTrang/PHASE_1_P0_STATUS.md` | SRS calculation was extracted to `SrsCalculatorService` and covered by six focused scenarios. | Testing | High |
| C079 | `docs/FRONTEND_REMAINING_TASKS.md` | `SaveToNotebookPopup.jsx` and `Login.jsx` hardcode backend URLs instead of consistently using the central API/environment base URL. | API | High |
| C080 | `docs/FRONTEND_REMAINING_TASKS.md` | Frontend token response field names may be inconsistent (`token` versus `accessToken`). | API | High |
| C081 | `HienTrang/PHASE_2_STEP_1_PLAN.md` | Fourteen of nineteen controllers use wildcard `ResponseEntity<?>`; DictionaryController directly exposes entities. | API | Low |
| C082 | `HienTrang/PHASE_2_STEP_1_PLAN.md` | NotebookController uses raw maps for two request bodies, several request DTOs lack validation, and success response formats vary. | API | Low |
| C083 | `playbook/01_backend_standards.md` | The required target contract is typed `ResponseEntity<ApiResponse<T>>`, DTO-only API exposure, centralized safe exceptions, and ownership checks. | Architecture | Medium |
| C084 | `AI check/02-HIEN-TRANG-CODE.md` | `NotebookService` is about 467 lines and combines responsibilities; major frontend files range from roughly 400 to 600 lines. | Architecture | High |
| C085 | `HienTrang/PHASE_2_STEP_1_PLAN.md` | Notebook hydration duplicates item-type switches and makes per-item repository calls; Dictionary search preprocessing is duplicated. | Performance | Low |
| C086 | `PV/Engineering_Review_Honest.md` | Notebook hydration has an N+1 query risk, basic search uses LIKE, and some ownership/sanitization checks were missing at the time of that review. | Performance | Low |
| C087 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | The previous audit logged 14 issues spanning secrets, default admin, reset query, token storage, test profile, logging, docs drift, encoding, debug logs, SRS tests, module status, CI, bundle size, and premature infrastructure. | Security | Medium (dated) |
| C088 | `HienTrang/PHASE_1_P0_STATUS.md` | Phase 1 may move toward beta demo only after a manual golden-flow pass from login through SRS. | Roadmap | High |
| C089 | `HienTrang/GRAND_ROADMAP_V4.md` | Phase 2 targets API professionalization; Phase 3 targets VNPay/gamification/search; Phase 4 targets distributed infrastructure. | Roadmap | Low |
| C090 | `docs/MODULE_6_REMAINING_TASKS.md` | Payment completion requires sandbox E2E init → VNPay → IPN → active enrollment plus email/notification, with idempotency and amount verification. | Roadmap | High |
| C091 | `docs/MODULE_8_REMAINING_TASKS.md` | Gamification MVP requires an auditable XP ledger, server-side streaks, at least five badge rules, and UI unlock behavior. | Roadmap | High |
| C092 | `README.md` | Local defaults are frontend port 3000, backend 8080, PostgreSQL 5433, Mailpit UI 8025, and MinIO 9000/9001. | Deployment | Medium |
| C093 | `QUICK_START.md` | The documented reset command destroys Docker volumes before restarting infrastructure. | Deployment | Medium |
| C094 | `docs/development_guidelines.md` | Applied Flyway migrations must never be edited; changes require forward-only migrations and generated seed output must be manually sampled. | Database | Procedural |
| C095 | `docs/DOCS_CODE_CROSS_REFERENCE.md` | Documentation truth order is running code, Phase 1 status, remaining tasks, master specification, then portfolio/roadmap. | Roadmap | High |
| C096 | `docs/DOCS_MAINTENANCE_TASKS.md` | Technical-stack docs still need correction for Spring Boot 4.0.5 and custom CSS, plus remaining link/encoding cleanup. | Roadmap | High |
| C097 | `README.md` | The repository onboarding directory is named `AI đánh giá/`. | Architecture | Medium |
| C098 | `AI check/README.md` | The onboarding directory itself is also documented as `AI đánh giá/`. | Architecture | High |
| C099 | `HienTrang/COMPREHENSIVE_UPGRADE_PLAN_MODULES_1-5.md` | Spring profiles dev/test/prod already exist. | Infrastructure | Low |
| C100 | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` | Creating separate dev/test/prod Spring profiles remains a P1 task. | Infrastructure | High |

## Phase 2 reconciliation notes (not verdicts)

The following clusters intentionally preserve conflicts that require code/runtime evidence later:

- **Module taxonomy/status:** C015–C032.
- **Security fixes versus still-open tasks:** C035–C044.
- **Database/search scale and indexes:** C045–C055.
- **Testing and CI:** C056–C068.
- **AI implementation scope:** C069–C072.
- **Completion thresholds:** C075–C076.
- **API contract and frontend URL/token behavior:** C079–C083.
- **Repository onboarding path:** C097–C098.
- **Spring profiles:** C099–C100.
