# Phase 2 — Docs ↔ Code Reconciliation

Audit date: 2026-08-03  
Scope: all 100 `[DOC-CLAIM]` records from `CLAIMS_REGISTRY.md`

## Verdict totals

- MATCHED: **59**
- PARTIALLY_MATCHED: **20**
- MISMATCHED: **19**
- NOT_VERIFIABLE: **2**
- Documentation Accuracy: **60.20%** = 59 / (59 + 20 + 19)

`NOT_VERIFIABLE` is excluded exactly as required by AuditMaster. “Matched” means the concrete claim is supported by current code/config/runtime or verifiable history; it does not mean the implementation is production-safe.

## Claim-by-claim reconciliation

| Claim | Verdict | Code/runtime evidence |
| --- | --- | --- |
| C001 | MATCHED | Modules for LMS, dictionary, notebook, quizzes, SRS and admin are present. |
| C002 | MATCHED | V1 role constraint and security authorities define STUDENT/TEACHER/ADMIN. |
| C003 | MATCHED | Frontend package tree confirms the listed React/Vite/router/Axios/CSS/Lucide/dnd-kit stack. |
| C004 | MATCHED | `pom.xml` and successful Java 21 compile confirm Spring Boot 4.0.5, JPA, Flyway, MapStruct and Lombok. |
| C005 | MATCHED | Compose uses PostgreSQL 16; entities/migrations use UUID; migrations V1–V7 exist. |
| C006 | MATCHED | MinIO/Mail services are used; Compose also defines Redis and Kafka. |
| C007 | PARTIALLY_MATCHED | Code is a single modular Spring application, but the stated architectural rationale is intent, not demonstrable runtime evidence. |
| C008 | PARTIALLY_MATCHED | 19 controllers, 40 service files and 6 test classes match; actual entities are 26 and explicit HTTP mappings are 80. |
| C009 | PARTIALLY_MATCHED | AuthContext/no Redux/React Query and 14 service files match; actual `<Route>` declarations are 23. |
| C010 | MATCHED | Controller → service → repository → entity layering is consistently present. |
| C011 | MATCHED | Application REST controllers use `/api/v1`; framework OAuth routes are outside the application REST contract. |
| C012 | MATCHED | Main application enables JPA auditing and async execution. |
| C013 | MATCHED | V1–V7 names and purposes match exactly. |
| C014 | MATCHED | Main configuration uses `ddl-auto: validate`; test profile intentionally differs. |
| C015 | PARTIALLY_MATCHED | Auth/JWT/email/reset/OAuth/RBAC exist, but session handling, token delivery and rate limiting prevent an unqualified “stable” assessment. |
| C016 | PARTIALLY_MATCHED | CRUD/blocks/publish/AI/reviews exist; cross-teacher ownership enforcement is missing. |
| C017 | PARTIALLY_MATCHED | Learning/progress/resume/quiz/notes exist, but the server permits completion-policy bypass. |
| C018 | MATCHED | Dictionary search, folders, saved items and Romaji conversion are implemented. |
| C019 | PARTIALLY_MATCHED | SM-2-style calculation, limits and UI exist; queue ordering/performance and custom-item lifecycle defects remain. |
| C020 | MATCHED | Payment/notification tables exist with no corresponding Java/React module. |
| C021 | MATCHED | User/audit/statistics APIs and UI exist; advanced admin capabilities do not. |
| C022 | MATCHED | User XP/streak fields and simple quiz XP exist; ledger/server streak/badges/leaderboard/quests do not. |
| C023 | MISMATCHED | Refresh tokens are returned unchanged rather than rotated; audit actor capture is unreliable under async execution. |
| C024 | PARTIALLY_MATCHED | Course/lesson/block/media/search/enrollment/status code exists, but preview/access/payment enforcement is incomplete. |
| C025 | PARTIALLY_MATCHED | Player/progress/last-access/notes are present; “complete” overstates server-side threshold enforcement. |
| C026 | MISMATCHED | Search is LIKE/ILIKE rather than full-text; custom-item deletion can orphan its flashcard; the combined completion claim is false. |
| C027 | PARTIALLY_MATCHED | Engine/UI/due/history/card creation exist, but due selection/pagination and custom deletion are defective. |
| C028 | MATCHED | Payment/IPN/unlock/history/notifications are plans only; email is used for auth. |
| C029 | PARTIALLY_MATCHED | User/audit/basic stats exist; content/payment moderation, export and full analytics do not. |
| C030 | MISMATCHED | Detailed “complete” labels conflict with absent leveling, server streak, badges, comments, cache and leaderboard implementation. |
| C031 | MISMATCHED | No implemented M9 notification Java/React module exists. |
| C032 | PARTIALLY_MATCHED | M6/M8 schema-only status is correct; the nine-module/M9 taxonomy is not implemented consistently. |
| C033 | MATCHED | All listed auth endpoints/hooks and RBAC are present. |
| C034 | MISMATCHED | Refresh lifetime is 30 days, not seven; refresh is not rotated; logout deletes all user refresh tokens. |
| C035 | MATCHED | Tokens remain local; UI logout does not call backend logout; auth integration tests are absent. |
| C036 | MATCHED | Git history contains the former query-parameter reset implementation. |
| C037 | MATCHED | Current reset endpoint accepts a validated JSON body. |
| C038 | MATCHED | Security configuration permit-alls `/api/v1/media/**`. |
| C039 | MATCHED | Main configuration contains security-sensitive fallbacks and a credential-shaped tracked value (redacted). |
| C040 | MATCHED | Invalid JWT exceptions are caught and the chain continues; endpoint authorization later decides access. |
| C041 | MATCHED | Folder/review/progress ownership or enrollment checks are present. |
| C042 | MATCHED | Shared sanitizer is used for reviews, notebook item notes/folders/custom fields; this does not cover lesson HTML or personal-note service. |
| C043 | MATCHED | Git history/prior audit confirms the old seeder/logging issue; known password fallback still exists under dev profile. |
| C044 | PARTIALLY_MATCHED | Test profile, seeder profile, reset body and focused tests are fixed; credential/default cleanup and documentation drift are not. |
| C045 | MATCHED | V2 updates numeric radical characters to glyphs before V3 performs 3,003 numeric lookups. |
| C046 | MATCHED | Reference schema duplicates the runtime schema and is not Flyway authoritative. |
| C047 | MATCHED | Reference SQL contains the claimed cross-module UUID schema. |
| C048 | MATCHED | Kanji array GIN indexes exist; vocabulary text-search indexes do not. |
| C049 | MISMATCHED | No `tsvector` column/query/index exists; repositories use LIKE/ILIKE. |
| C050 | MISMATCHED | Seeds total roughly 25.6K knowledge rows, not 300K+; no GIN full-text search or measured sub-500 ms evidence exists. |
| C051 | MATCHED | V4 contains 21,792 vocabulary inserts. |
| C052 | MATCHED | V3/V4 contain 3,003 and 21,792 inserts respectively. |
| C053 | MATCHED | Actual counts (3,003/21,792/842) support the approximate claim. |
| C054 | MISMATCHED | Flyway contains 44 `CREATE TABLE` statements, not 20. |
| C055 | MISMATCHED | Flyway contains 44 tables, not 30. |
| C056 | PARTIALLY_MATCHED | Six test classes match, but current run has 14 tests and 80 explicit mappings; the 7% metric lacks coverage instrumentation. |
| C057 | PARTIALLY_MATCHED | Tests pass, but current suite is 14 rather than the dated count of 12. |
| C058 | MATCHED | Current frontend production build and backend tests pass. |
| C059 | MATCHED | Current bundle is 494.89 KB JavaScript. |
| C060 | NOT_VERIFIABLE | The dated local execution result cannot be reproduced as that historical environment from current artifacts alone. Searched Git history and current tests. |
| C061 | MISMATCHED | `mvn clean package` runs and gates Surefire tests by default; workflow does not skip tests. |
| C062 | PARTIALLY_MATCHED | No lint/TypeScript/frontend tests exist; a repository-root `.env.example` does exist, though none is inside the frontend folder. |
| C063 | MATCHED | No controller or auth integration tests exist. |
| C064 | MATCHED | PostgreSQL/MinIO/mail are used; Redis/Kafka/AMQP/WebSocket have no application logic usage. |
| C065 | MISMATCHED | No Spring Cache/Redis session/SRS queue or Kafka event implementation was found. |
| C066 | MATCHED | Compose defines PostgreSQL, Redis, Mailpit, MinIO and Kafka. |
| C067 | MATCHED | Workflows provide the claimed service/build steps. |
| C068 | MATCHED | Both workflows target main/develop pushes and PRs; Maven package includes tests and produces an artifact. |
| C069 | PARTIALLY_MATCHED | Spring AI OpenAI/Gemini plus Grok client and local fallback exist; there is no sequential multi-model fallback. |
| C070 | MISMATCHED | One selected provider is attempted, then local fallback; GPT→Gemini→Grok is not tried. |
| C071 | MISMATCHED | No tutor/chat endpoint, persisted chat history, grammar-explanation or conversation module exists. |
| C072 | PARTIALLY_MATCHED | AI syllabus exists; AI chat table and ten-message tutor history do not. |
| C073 | MATCHED | MinIO streaming implements full and HTTP range responses. |
| C074 | MISMATCHED | Upload returns a permanent public localhost media URL, not presigned; enrollment does not check payment. |
| C075 | PARTIALLY_MATCHED | React uses 85%/80%, quiz awards at 70%, and progress excludes deleted blocks; server accepts manual bypass. |
| C076 | MISMATCHED | Threshold logic now exists in React, so it is no longer wholly a remaining task, though server enforcement remains missing. |
| C077 | MATCHED | SRS calculator implements quality 1–5, 1/6-day intervals, prior ease multiplication and 1.3 floor. |
| C078 | PARTIALLY_MATCHED | Calculator extraction is present; current test class has five focused scenarios, not six. |
| C079 | MATCHED | Both named frontend files hardcode localhost rather than consistently using the central API. |
| C080 | MATCHED | Login uses `token`; refresh uses `accessToken`; code explicitly handles both field names. |
| C081 | MATCHED | Wildcard response types are widespread and DictionaryController returns entities directly. |
| C082 | MATCHED | Raw map bodies, missing validation and inconsistent success envelopes are present. |
| C083 | MISMATCHED | The target standard is not met by current API implementation. |
| C084 | MATCHED | NotebookService is 467 lines and multiple frontend files are 400–600 lines. |
| C085 | MATCHED | Item hydration repeats type switches/per-item repository calls; dictionary preprocessing repeats. |
| C086 | MATCHED | Current code confirms notebook N+1, LIKE search and historical/current gaps. |
| C087 | MATCHED | The prior audit has exactly 14 numbered issues in the listed categories. |
| C088 | NOT_VERIFIABLE | No manual golden-flow evidence exists in repository/CI; this audit did not mutate/start the persistent local stack. |
| C089 | MATCHED | Roadmap contains the claimed future phase targets. |
| C090 | MATCHED | Payment remaining-tasks document specifies the stated E2E/idempotency/amount checks. |
| C091 | MATCHED | Gamification remaining-tasks document specifies ledger/streak/badge/UI requirements. |
| C092 | MATCHED | Default port values match Compose/configuration. |
| C093 | MATCHED | Quick-start reset command removes Docker volumes and is destructive. |
| C094 | MATCHED | Policy requires forward-only migrations and seed sampling; no migration was modified by this audit. |
| C095 | MATCHED | The documented truth order matches onboarding instructions. |
| C096 | MATCHED | Several stack/link/status inaccuracies remain and are enumerated here. |
| C097 | MISMATCHED | `AI đánh giá/` does not exist in the working tree. |
| C098 | MISMATCHED | The actual onboarding pack is under `AI check/`, despite its internal old path wording. |
| C099 | MISMATCHED | Only dev and test profile files exist; no prod profile exists. |
| C100 | MATCHED | Separate production-profile work remains incomplete. |

## Major contradiction clusters

| Cluster | Documentation conflict | Authoritative reality |
| --- | --- | --- |
| Module completion | Master/module detail pages call M1–M5 or M8 complete; remaining-task/status files retain gaps | Running code implements much of M1–M5 but has material access, progress, API and SRS gaps; M6 and most M8 are schema-only |
| Refresh/session | “Seven-day rotating refresh token” versus local-token/open-task docs | 30-day refresh token is returned unchanged; UI logout is local-only; password reset does not revoke sessions |
| Search/scale | 300K+, tsvector/GIN, sub-500 ms versus remaining-task docs | ~25.6K seed rows; LIKE/ILIKE; no text-search index or benchmark |
| AI | Sequential multi-model fallback/tutor claims versus syllabus-only status | Selected model → local seed fallback; no tutor/chat history |
| CI/testing | “Package does not test” versus “CI tests” | Maven package does run tests; the real problem is only 14 narrow tests and no frontend suite |
| Module taxonomy | M9 notification described as implemented/separate in portfolio docs | No M9 application layer; notification is only schema/planning |
| Profiles | dev/test/prod “exist” versus prod profile backlog | dev/test exist; prod is missing |
| Onboarding path | `AI đánh giá/` referenced by instructions/docs | Actual directory is `AI check/` |

## Undocumented realities

| ID | Code reality | Evidence | Documentation needed | Priority |
| --- | --- | --- | --- | --- |
| UR-01 | Credential-shaped API key is tracked in main configuration | `application.yml` (value redacted) | Incident handling, revocation/rotation, secret-injection policy | Critical |
| UR-02 | Quiz entity responses expose answer keys and serializable user password hashes | Quiz controller/service/entities | Safe quiz DTO contract and sensitive-field prohibition | Critical |
| UR-03 | Unsanitized lesson HTML is rendered directly and can steal localStorage tokens | LessonBlock service + BlockRenderer/SyllabusManager | Content trust model and sanitization/CSP requirements | Critical |
| UR-04 | OAuth authorization request cookie is unsigned Java serialized data | CookieUtils + OAuth request repository | OAuth state storage/threat model | Critical |
| UR-05 | Any teacher can mutate another teacher’s lessons/blocks/quizzes/AI syllabus | role-only controllers and service signatures | Resource ownership matrix | High |
| UR-06 | Course content is retrievable without enrollment; media is public | lesson/block/quiz reads + security config | Course-content access matrix | High |
| UR-07 | Quiz passes can be repeated indefinitely for XP | QuizServiceImpl | Idempotent XP award policy | High |
| UR-08 | Async audit commonly loses authenticated actor and silently swallows persistence errors | AuditLogService | Audit guarantees/failure policy | High |
| UR-09 | Compiled mappers leave teacher/course/lesson identifiers null | generated MapStruct implementations | API field semantics/contract tests | Medium |
| UR-10 | Frontend and data-script lockfiles currently resolve high-severity advisories | npm audit results | Dependency remediation/SLA policy | High |

## Verification of the 14 prior-audit issues

| Old # | Prior issue | Status | Current evidence |
| ---: | --- | --- | --- |
| 1 | Hardcoded security information | STILL_OPEN | Security-sensitive fallbacks and a tracked credential-shaped value remain. |
| 2 | Known default admin password | STILL_OPEN | Seeder is dev-only (mitigation), but still has a known fallback password. Plaintext password logging is gone. |
| 3 | Reset password through query string | FIXED | Current endpoint uses validated JSON body. |
| 4 | Tokens in localStorage | STILL_OPEN | Access and refresh tokens remain in localStorage. |
| 5 | Missing test profile | FIXED | `application-test.yml` and H2 context test exist. |
| 6 | Excessive backend logging | FIXED | Base logging is INFO; SQL/application DEBUG is dev-only. |
| 7 | README/docs stack drift | STILL_OPEN | 19 current mismatches and major contradiction clusters remain. |
| 8 | Encoding problems | FIXED | All selected UTF-8 text files decode strictly; no repository-wide decode failure occurred. Two V3 control characters are a separate data-quality issue. |
| 9 | Frontend debug logs | FIXED | No `console.log`/`console.debug` remains; error logging is still present. |
| 10 | SRS algorithm/test gap | FIXED | Extracted calculator has five focused scenarios and passes. Broader SRS integration gaps are new/current issues. |
| 11 | Uneven module status | STILL_OPEN | M6/M8 remain schema-only and completion claims still conflict. |
| 12 | Minimal CI | STILL_OPEN | Build workflows exist, but no frontend tests/lint, security scan or meaningful backend integration coverage. |
| 13 | Bundle size monitoring | STILL_OPEN | Current JS remains 494.89 KB and no budget/gate is configured. |
| 14 | Infrastructure ahead of product need | STILL_OPEN | Redis/Kafka/AMQP/WebSocket remain declared but unused. |

Prior-audit status totals: **6 FIXED, 8 STILL_OPEN, 0 REGRESSED, 0 NOT_VERIFIABLE**.
