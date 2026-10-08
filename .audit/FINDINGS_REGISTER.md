# Phase 3 — Validated Findings Register

Audit date: 2026-08-03  
Statuses follow AuditMaster: new discoveries are `New`; roots already present in the old audit are `Still Open`. Findings are deduplicated by root cause.

## F-001 — Tracked credential and insecure secret fallbacks

- **Source:** Old Audit Verification / Code Audit
- **Severity:** Critical
- **Confidence:** High
- **Status:** Still Open
- **Evidence:** `application.yml` lines 4, 7, 73, 86 and 96 contain API/credential/JWT fallback configuration. One tracked value has the shape of a real Google API credential; its value is redacted and validity was not tested. Git tracks this file.
- **Root Cause:** Development conveniences are embedded in the base profile instead of fail-fast secret injection.
- **Business Impact:** Credential abuse, unplanned cost, provider suspension, or forged JWTs if production starts with defaults.
- **Technical Impact:** Environment isolation cannot be trusted.
- **Security Impact:** Secret exposure and weak/default credentials.
- **Affected Scope:** AI providers, Google OAuth, JWT, every deployment using the base profile.
- **Recommendation:** Revoke/rotate the tracked credential through the provider, scrub it from Git history under an incident procedure, remove sensitive defaults, and make production startup fail when secrets are absent.
- **Estimated Effort:** M, 2–4 days including rotation/history coordination.
- **Verification Method:** Secret scanner finds no credential; old credential is revoked; prod startup without injected secrets fails; new secrets never appear in Git/logs.

## F-002 — Quiz entity responses expose password hashes and answer keys

- **Source:** Code Audit
- **Severity:** Critical
- **Confidence:** High
- **Status:** New
- **Evidence:** `QuizController` returns service objects directly; `QuizServiceImpl.getQuizByBlockId` returns `Quiz` (lines 69–70) and submission returns `QuizAttempt`; `QuizQuestion.correctAnswer` is serializable (line 36); `User.passwordHash` is serializable (line 41). OSIV is enabled at runtime and no `@JsonIgnore` protects the entity password field.
- **Root Cause:** Persistence entities are used as public response contracts.
- **Business Impact:** Learners can obtain answer keys; authenticated callers can receive password hashes for users reachable through quiz/attempt relationships.
- **Technical Impact:** Lazy graph serialization is unstable and leaks internal schema.
- **Security Impact:** Sensitive authentication-data disclosure and assessment integrity loss.
- **Affected Scope:** `GET /api/v1/quizzes/block/{blockId}`, quiz create/update responses, `POST /api/v1/quizzes/{id}/submit`.
- **Recommendation:** Introduce separate student/editor/result DTOs, never serialize User entities, omit correct answers until server-authorized feedback, and globally ignore password hashes as defense in depth.
- **Estimated Effort:** M, 3–5 days.
- **Verification Method:** Contract/security tests assert responses contain neither `passwordHash` nor `correctAnswer`; quiz scoring remains server-side.

## F-003 — Unsigned OAuth cookie is Java-deserialized

- **Source:** Code Audit
- **Severity:** Critical
- **Confidence:** Medium
- **Status:** New
- **Evidence:** `HttpCookieOAuth2AuthorizationRequestRepository.loadAuthorizationRequest` line 21 passes a client cookie to `CookieUtils.deserialize`; `CookieUtils` line 55 calls `SerializationUtils.deserialize` on Base64-decoded bytes. No MAC/signature/encryption validation exists. HttpOnly does not prevent a client from replacing its own cookie.
- **Root Cause:** Server-side OAuth state is represented as native Java serialized data controlled by the browser.
- **Business Impact:** A viable gadget chain could compromise the backend process.
- **Technical Impact:** Deserialization behavior is coupled to the complete runtime classpath.
- **Security Impact:** Potential unsafe-deserialization/RCE class vulnerability; exploitability depends on reachable gadgets, hence Medium confidence.
- **Affected Scope:** Google OAuth authorization flow.
- **Recommendation:** Store OAuth requests server-side by opaque random handle, or use a strictly parsed, authenticated JSON token with an allowlisted schema; never native-deserialize client bytes.
- **Estimated Effort:** M, 2–4 days.
- **Verification Method:** Tampered cookies are rejected before parsing; no native deserialization API is reachable from HTTP input; add adversarial OAuth-state tests.

## F-004 — Stored XSS can steal locally stored auth tokens

- **Source:** Code Audit
- **Severity:** Critical
- **Confidence:** High
- **Status:** New
- **Evidence:** `LessonBlockServiceImpl` lines 65–67 stores teacher content without sanitization. `BlockRenderer.jsx` lines 83/85 and `SyllabusManager.jsx` line 125 render it with `dangerouslySetInnerHTML`. No sanitizer library or CSP was found. `AuthContext.jsx` lines 29–30 stores access and refresh tokens in localStorage.
- **Root Cause:** The system treats teacher/database HTML as trusted while keeping bearer credentials readable by JavaScript.
- **Business Impact:** A malicious or compromised teacher can execute persistent code in student sessions.
- **Technical Impact:** Content boundaries and output encoding are undefined.
- **Security Impact:** Account/session theft, cross-user actions, content manipulation.
- **Affected Scope:** Lesson text, syllabus preview, dictionary HTML rendering, all browser-held sessions.
- **Recommendation:** Sanitize with a maintained allowlist on write and/or render, avoid raw HTML where possible, deploy CSP, and move refresh/session credentials to Secure HttpOnly SameSite cookies.
- **Estimated Effort:** L, 5–8 days.
- **Verification Method:** Stored XSS payload corpus renders inert; CSP blocks inline execution; browser tests confirm tokens are not JavaScript-readable.

## F-005 — Teacher resource mutations lack ownership authorization

- **Source:** Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** Lesson, block, quiz and AI endpoints check only TEACHER/ADMIN. Service signatures (`createLesson(courseId,...)`, `createBlock(lessonId,...)`, `createOrUpdateQuiz(request,creatorId)`, `generateSyllabusForCourse(courseId,model)`) do not receive/check the acting user's ownership. Course mutations do have an owner/admin pattern, confirming no compensating global guard.
- **Root Cause:** Role-based authorization was implemented without object-level authorization.
- **Business Impact:** Any teacher can change/delete another teacher's curriculum or generate unwanted content/cost.
- **Technical Impact:** Cross-tenant integrity is not enforced at the service boundary.
- **Security Impact:** Broken object-level authorization (BOLA).
- **Affected Scope:** Lesson CRUD/reorder, LessonBlock CRUD/reorder, quiz edit, AI syllabus generation.
- **Recommendation:** Pass actor ID/admin flag into every service mutation, resolve the owning course, enforce owner-or-admin centrally, and audit denials.
- **Estimated Effort:** M, 3–5 days.
- **Verification Method:** Integration tests prove Teacher A receives 403 for every mutation on Teacher B resources while Admin succeeds.

## F-006 — Course content is accessible without enrollment/publication guards

- **Source:** Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** Security config uses `anyRequest().authenticated()` and permit-alls media. Lesson/block/quiz GET controllers accept IDs without current user; corresponding services query by course/lesson/block only. Media is public. No enrollment or published-course check compensates these paths.
- **Root Cause:** Authentication is mistaken for content authorization.
- **Business Impact:** Authenticated users can consume paid/unpublished course content without entitlement; media can be fetched anonymously.
- **Technical Impact:** Access policy differs across UI and API.
- **Security Impact:** Unauthorized content disclosure.
- **Affected Scope:** courses, lessons, lesson blocks, quiz content, `/api/v1/media/**`.
- **Recommendation:** Define public-preview versus enrolled content DTOs/routes, enforce enrollment/payment/publication in services, and use authorized/presigned media delivery.
- **Estimated Effort:** L, 5–8 days.
- **Verification Method:** Negative API tests for anonymous, authenticated-unenrolled, enrolled, owner and admin roles across every content endpoint.

## F-007 — OAuth redirects bearer tokens and PII in URL queries

- **Source:** Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** `OAuth2AuthenticationSuccessHandler` lines 60–67 adds access token, refresh token, ID, email, username, name, avatar and roles to the redirect query; the frontend reads them from `location.search`.
- **Root Cause:** OAuth completion uses a URL as a credential transport channel.
- **Business Impact:** Tokens can persist in browser history and appear in access logs, monitoring and same-origin referrers.
- **Technical Impact:** Rotation/incident response cannot enumerate all leaked copies.
- **Security Impact:** Session and PII disclosure.
- **Affected Scope:** Every Google OAuth login.
- **Recommendation:** Exchange a short-lived one-time authorization code in the backend, set a Secure HttpOnly refresh/session cookie, and redirect with no credentials/PII in the URL.
- **Estimated Effort:** M, 3–5 days.
- **Verification Method:** OAuth callback/redirect URL contains only non-sensitive state/code; proxy/browser-history inspection shows no bearer token.

## F-008 — Frontend token storage/logout leaves sessions exposed and active

- **Source:** Old Audit Verification / Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** Still Open
- **Evidence:** `AuthContext` stores both tokens in localStorage and `logout()` only removes local keys. `authService.logout()` exists but is never called from context/UI. Access tokens last 24 hours.
- **Root Cause:** Client-side state clearing is treated as server-side revocation.
- **Business Impact:** Stolen refresh tokens remain usable; user logout does not end backend sessions.
- **Technical Impact:** Session lifecycle is inconsistent across browser and database.
- **Security Impact:** Persistent session theft/replay.
- **Affected Scope:** Password and OAuth login/logout.
- **Recommendation:** Call server logout, rotate refresh tokens, use HttpOnly cookies, shorten access lifetime, and revoke sessions on password reset/security events.
- **Estimated Effort:** M, 3–5 days.
- **Verification Method:** Logout invalidates refresh on server; reset invalidates all sessions; no refresh token exists in Web Storage.

## F-009 — Server trusts clients to mark learning content complete

- **Source:** Code Audit / Docs-Code Mismatch
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** `ProgressServiceImpl` directly sets completion from request (lines 79–80); `completeLesson` lines 113–126 marks all blocks complete. 85%/80% thresholds exist only in `BlockRenderer`; the UI also presents manual completion. Quiz blocks can be marked complete through the generic progress endpoint.
- **Root Cause:** Business completion rules are implemented in the client, not the authoritative service.
- **Business Impact:** Progress, certificates/unlocks and analytics are untrustworthy.
- **Technical Impact:** Any API client can bypass media/quiz rules.
- **Security Impact:** Business-rule authorization/integrity bypass.
- **Affected Scope:** lesson-block, lesson and course progress.
- **Recommendation:** Make server event-specific endpoints validate media position/duration and quiz attempts; restrict manual completion to permitted block types; derive lesson/course completion.
- **Estimated Effort:** L, 5–8 days.
- **Verification Method:** Direct completion requests before thresholds fail; only validated events produce completion in integration tests.

## F-010 — Enrollment ignores publication, price and payment

- **Source:** Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** `EnrollmentServiceImpl` lines 33–50 checks duplicate, user and non-deleted course only. It does not inspect `isPublished`, `price`, payment or role. Module 6 has schema only.
- **Root Cause:** Enrollment was implemented before entitlement/payment policy and left unconditional.
- **Business Impact:** Unpublished and paid courses can be enrolled for free.
- **Technical Impact:** Future payment integration must repair already-created invalid entitlements.
- **Security Impact:** Entitlement bypass.
- **Affected Scope:** all enrollments and paid-course business model.
- **Recommendation:** Enforce published/free or verified-success-payment policy transactionally and make payment callback idempotently grant enrollment.
- **Estimated Effort:** L, 7–12 days with Module 6.
- **Verification Method:** Sandbox E2E proves paid enrollment is impossible before verified IPN and exactly one enrollment is granted afterward.

## F-011 — Quiz XP can be farmed indefinitely

- **Source:** Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** `QuizServiceImpl` line 124 adds 10 XP on every score ≥70. There is no first-pass/idempotency rule or XP ledger; answers are exposed by F-002.
- **Root Cause:** Reward mutation is tied to attempts without a uniqueness/event ledger.
- **Business Impact:** Users can inflate XP/leaderboards, making gamification meaningless.
- **Technical Impact:** XP cannot be audited or safely recalculated; concurrent attempts can lose/update inconsistently.
- **Security Impact:** Business integrity abuse.
- **Affected Scope:** user XP and future badges/leaderboards.
- **Recommendation:** Create immutable XP transactions with unique event keys and award once according to an explicit policy.
- **Estimated Effort:** M, 3–5 days.
- **Verification Method:** Repeated/concurrent pass attempts create one XP event and a deterministic balance.

## F-012 — Media upload/access/deletion lifecycle is unsafe

- **Source:** Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** Upload limit is 500 MB; no MIME/extension allowlist exists; `FileStorageServiceImpl` lines 48/63 creates and publicizes the bucket, line 74 returns a hardcoded localhost API URL, while deletion lines 83–89 accepts only direct MinIO URL format. Media security is permit-all.
- **Root Cause:** Storage, delivery and deletion use incompatible URL/access models with no threat policy.
- **Business Impact:** Storage/egress abuse, public paid media, orphaned avatars/thumbnails, deployment breakage.
- **Technical Impact:** Replacements cannot reliably remove old objects; large requests increase resource pressure.
- **Security Impact:** Unrestricted public content hosting and potential malicious-file delivery.
- **Affected Scope:** course media, avatars, thumbnails, MinIO bucket.
- **Recommendation:** Validate type/size/content, keep bucket private, store object keys rather than URLs, authorize delivery/presign, and delete by key.
- **Estimated Effort:** L, 5–8 days.
- **Verification Method:** malicious/oversized uploads fail; anonymous paid media fails; replacement deletes exactly the former object in MinIO integration tests.

## F-013 — Clean migration loses every Kanji main-radical relationship

- **Source:** Docs-Code Mismatch / Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** Still Open
- **Evidence:** V2 inserts numeric radical characters then updates 1–213 to glyphs. All 3,003 V3 inserts query numeric `WHERE character = '<number>'`; the structure scan counted 3,003 numeric lookups. No matching numbers remain for those referenced values.
- **Root Cause:** Seed lookup keys were changed in one applied migration without updating the next migration's generated references.
- **Business Impact:** Radical-based learning/details are incomplete on every clean V1→V7 database.
- **Technical Impact:** `kanji.radical_id` is null despite source data; environments can drift depending on manual fixes.
- **Security Impact:** N/A.
- **Affected Scope:** all Kanji seed data and clean deployments.
- **Recommendation:** Add a forward V8+ migration that maps the numeric radical source identifier to the glyph/UUID deterministically; do not edit V1–V7.
- **Estimated Effort:** M, 2–4 days including verification.
- **Verification Method:** Fresh V1→V8+ migration asserts expected non-null count and validates sampled Kanji/radical mappings.

## F-014 — Authentication/session abuse controls are incomplete

- **Source:** Code Audit
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** No rate limiter/account lockout was found. Forgot-password throws “user not found”, allowing enumeration. Refresh returns the same token. Password reset changes the hash but does not delete refresh tokens. Access expiry is 24 hours.
- **Root Cause:** Endpoint functionality was delivered without a consolidated session and abuse-control policy.
- **Business Impact:** Credential stuffing, email abuse, account discovery and long-lived stolen sessions.
- **Technical Impact:** Revocation semantics differ by logout/reset/disable.
- **Security Impact:** Brute force, enumeration and token replay.
- **Affected Scope:** login, registration, forgot/reset, refresh, logout.
- **Recommendation:** Rate-limit by account/IP, use uniform forgot response/timing, rotate refresh with reuse detection, revoke on reset, and shorten access lifetime.
- **Estimated Effort:** L, 5–8 days.
- **Verification Method:** abuse/security tests validate limits, uniform responses, rotation/reuse detection and reset revocation.

## F-015 — Audit logs are not a reliable accountability control

- **Source:** Code Audit
- **Severity:** High
- **Confidence:** Medium
- **Status:** New
- **Evidence:** `AuditLogService.log` is `@Async` (line 28) and reads `SecurityContextHolder` inside the worker (lines 32, 55–56). No delegating security-context executor exists. All exceptions are swallowed (lines 50–51). Login is recorded as an `INSERT` on users rather than an auth event.
- **Root Cause:** Best-effort async logging is used for a control that requires identity and delivery guarantees.
- **Business Impact:** Administrative investigations can lack actor attribution or entire events.
- **Technical Impact:** Failures are invisible and taxonomy is misleading.
- **Security Impact:** Repudiation and weakened incident forensics.
- **Affected Scope:** user/admin mutations and login audit trail.
- **Recommendation:** Capture actor/request metadata before async dispatch, use durable outbox/event taxonomy, monitor failures and define mandatory audit events.
- **Estimated Effort:** M, 3–5 days.
- **Verification Method:** integration tests assert actor/IP/event type under async execution and injected DB failure raises an observable alert/retry.

## F-016 — Lockfiles resolve known high-severity dependency advisories

- **Source:** Runtime
- **Severity:** High
- **Confidence:** High
- **Status:** New
- **Evidence:** `npm audit --json` reported 6 high-severity vulnerable nodes in frontend (`axios`, `form-data`, `postcss`, `react-router`, `react-router-dom`, `vite`). Data-script audit reported 2 (`adm-zip`, `fast-xml-builder`). Fixes are available. Some router/Node-adapter advisories may not be reachable in this SPA, but the vulnerable packages are resolved and development/data tooling is in scope.
- **Root Cause:** No automated dependency security gate/update cadence.
- **Business Impact:** Exposure to known flaws and delayed emergency upgrades.
- **Technical Impact:** Build/dev/data pipelines inherit vulnerable parsers/network libraries.
- **Security Impact:** Advisory-dependent DoS, injection, disclosure or request manipulation.
- **Affected Scope:** frontend build/runtime tree and offline seed-generation scripts.
- **Recommendation:** Upgrade to fixed versions, review breaking changes/applicability, regenerate lockfiles, and gate CI on reviewed advisories/SBOM.
- **Estimated Effort:** M, 2–5 days.
- **Verification Method:** audits show zero unaccepted High/Critical items and regression builds/tests pass.

## F-017 — AI syllabus fallback can commit malformed/duplicate partial content

- **Source:** Code Audit / Docs-Code Mismatch
- **Severity:** Medium
- **Confidence:** Medium
- **Status:** New
- **Evidence:** `generateSyllabusForCourse` is transactional, parses unvalidated raw maps and catches provider/parse/save exceptions before invoking local seeding. Only the selected model is tried. A failure after some managed entities are created can mix partial AI data and local seed or mark the transaction rollback-only.
- **Root Cause:** Generation, validation, persistence and fallback share one broad caught transaction.
- **Business Impact:** Duplicate/malformed syllabus and unpredictable teacher results.
- **Technical Impact:** Failure atomicity and documented fallback semantics are unclear.
- **Security Impact:** External AI content is trusted structurally; content XSS is covered by F-004.
- **Affected Scope:** AI syllabus generation.
- **Recommendation:** Validate into typed DTOs before writes, persist atomically in a separate transaction, explicitly define provider retry order, and surface failure state.
- **Estimated Effort:** M, 3–5 days.
- **Verification Method:** malformed/mid-save/provider-failure tests leave zero partial rows and produce exactly one documented fallback result.

## F-018 — Custom notebook deletion leaves its SRS flashcard orphaned

- **Source:** Code Audit
- **Severity:** Medium
- **Confidence:** High
- **Status:** New
- **Evidence:** Custom creation sets `Flashcard.itemId = savedNotebook.id`, while `UserNotebook.itemId` remains null. Deletion line 324 searches the flashcard using `item.getItemId()` (null), then deletes only the notebook row.
- **Root Cause:** Two identifiers represent a custom item inconsistently.
- **Business Impact:** Deleted custom items remain in practice queues with missing content.
- **Technical Impact:** Orphan records and inconsistent statistics.
- **Security Impact:** N/A.
- **Affected Scope:** custom notebook items/SRS.
- **Recommendation:** Use one canonical custom-item ID and delete by notebook ID transactionally; add a data repair migration/job.
- **Estimated Effort:** S, 1–2 days.
- **Verification Method:** create/delete integration test confirms both rows disappear and due queue is clean.

## F-019 — SRS/notebook retrieval is N+1 and paginates in memory

- **Source:** Code Audit
- **Severity:** Medium
- **Confidence:** High
- **Status:** New
- **Evidence:** `NotebookService` line 342 loads all user flashcards; lines 351/366 filter/limit streams; lines 381+ construct `PageImpl`; mapping performs per-card repository lookups at lines 400–430. Due cards lack explicit deterministic ordering and use system-local day boundaries.
- **Root Cause:** Domain hydration and queue selection are implemented in application loops rather than repository queries/projections.
- **Business Impact:** Latency/memory grow with each user's collection; queue ordering can be inconsistent.
- **Technical Impact:** N+1 queries and incorrect pagination totals after limits.
- **Security Impact:** Potential authenticated resource exhaustion at scale.
- **Affected Scope:** folders, review queue, SRS stats.
- **Recommendation:** Query due cards by user/folder/due/order with DB pagination, project/hydrate in batches, and use explicit user/business timezone.
- **Estimated Effort:** M, 3–5 days.
- **Verification Method:** SQL-count/load tests show bounded queries/memory and stable ordered pages for large datasets.

## F-020 — API validation/error contracts are unsafe and inconsistent

- **Source:** Code Audit / Docs-Code Mismatch
- **Severity:** Medium
- **Confidence:** High
- **Status:** New
- **Evidence:** Wildcard `ResponseEntity<?>`, raw maps and direct entities are common; quiz/progress/raw note inputs lack validation; `GlobalExceptionHandler` returns `RuntimeException.getMessage()` (line 101), including internal exception text.
- **Root Cause:** API contract professionalization is deferred and generic exceptions carry both internal and client meaning.
- **Business Impact:** Unstable clients, ambiguous errors and avoidable 500s.
- **Technical Impact:** Null/invalid quiz inputs cause runtime failures; internal messages leak implementation details.
- **Security Impact:** Information disclosure and weak input boundaries.
- **Affected Scope:** most controllers, especially quiz/notebook/progress/auth.
- **Recommendation:** Typed request/response envelopes, comprehensive Bean Validation, domain exception mapping with safe public codes, and no raw entity responses.
- **Estimated Effort:** L, 7–12 days.
- **Verification Method:** generated OpenAPI/contract tests cover schemas and negative inputs; 5xx responses contain no internal exception text.

## F-021 — Generated API DTO fields are silently null

- **Source:** Runtime / Code Audit
- **Severity:** Medium
- **Confidence:** High
- **Status:** New
- **Evidence:** Successful build's generated MapStruct code never sets `CourseResponse.teacherName`, `LessonResponse.courseId`, or `LessonBlockResponse.lessonId`; interfaces use `unmappedTargetPolicy = IGNORE` with no explicit nested mappings.
- **Root Cause:** Silent ignore policy hides unmapped API fields.
- **Business Impact:** UI/API consumers receive incomplete records.
- **Technical Impact:** Contract regressions compile successfully.
- **Security Impact:** N/A.
- **Affected Scope:** course, lesson and lesson-block responses.
- **Recommendation:** Add explicit nested mappings, use WARN/ERROR for response DTOs, and test representative mapping outputs.
- **Estimated Effort:** S, 1–2 days.
- **Verification Method:** mapper tests assert all declared IDs/names; build fails on newly unmapped response targets.

## F-022 — Critical flows have little automated coverage

- **Source:** Runtime / Old Audit Verification
- **Severity:** Medium
- **Confidence:** High
- **Status:** Still Open
- **Evidence:** 6 classes/14 tests pass, but there are 80 explicit API mappings. No controller/auth/OAuth/upload/quiz/payment/PostgreSQL migration tests and no frontend tests exist. H2 test disables Flyway and cannot validate JSONB/array/enum behavior.
- **Root Cause:** Tests focus on a few extracted services rather than risk-based critical flows.
- **Business Impact:** Security and entitlement regressions can ship with green CI.
- **Technical Impact:** Production database/API/browser compatibility is unverified.
- **Security Impact:** Authorization/session negative cases are untested.
- **Affected Scope:** entire product and CI.
- **Recommendation:** Add PostgreSQL integration tests, MockMvc security matrix, frontend component/E2E golden flow and coverage/risk gates.
- **Estimated Effort:** XL, 10–20 days incrementally.
- **Verification Method:** CI demonstrates negative-role tests, V1→latest migration, auth lifecycle, upload, quiz/progress and browser golden flow.

## F-023 — Production deployment controls are absent

- **Source:** Code Audit / Old Audit Verification
- **Severity:** High
- **Confidence:** High
- **Status:** Still Open
- **Evidence:** No `application-prod.yml`, healthcheck, deployment manifest, monitoring/alert configuration, backup/restore or rollback procedure exists. Swagger is public and runtime warns it is enabled. Base config contains development fallbacks and CORS localhost.
- **Root Cause:** Repository targets local/demo operation, while documents sometimes present production-grade status.
- **Business Impact:** Unsafe or failed production launch, poor recovery and unnoticed outages.
- **Technical Impact:** Environment behavior and operational SLOs are undefined.
- **Security Impact:** Debug/API discovery and default configuration may be exposed.
- **Affected Scope:** deployment and operations.
- **Recommendation:** Add explicit prod profile, fail-fast config, health/readiness, private Swagger, observability, backup-restore drill, rollback and deployment runbook.
- **Estimated Effort:** L, 7–12 days.
- **Verification Method:** staging deployment passes readiness, secret/config, backup restore, rollback and alert drills.

## F-024 — Frontend bypasses its environment-aware API layer

- **Source:** Code Audit / Docs-Code Mismatch
- **Severity:** Medium
- **Confidence:** High
- **Status:** Still Open
- **Evidence:** `SaveToNotebookPopup.jsx` contains three direct `http://localhost:8080` fetches; `Login.jsx` hardcodes OAuth backend URL; `FileStorageServiceImpl` also returns localhost URLs. Central Axios has a VITE base but itself retains a localhost fallback.
- **Root Cause:** Endpoint construction is duplicated instead of centralized.
- **Business Impact:** Non-local deployments break selectively and bypass refresh/error handling.
- **Technical Impact:** API behavior differs by component.
- **Security Impact:** Misrouting/mixed-content risk under HTTPS.
- **Affected Scope:** notebook popup, Google login, media URLs, deployment.
- **Recommendation:** Route all frontend calls through the central service and derive OAuth/media origins from validated environment configuration.
- **Estimated Effort:** S, 1–2 days.
- **Verification Method:** source scan finds no hardcoded backend origin; staging under a non-local origin completes every flow.

## F-025 — Dictionary search claims and implementation do not scale together

- **Source:** Docs-Code Mismatch / Code Audit
- **Severity:** Medium
- **Confidence:** High
- **Status:** New
- **Evidence:** Repositories use `%query%` LIKE/ILIKE; schema has no vocabulary/grammar `tsvector` or text GIN index. Global search runs three independent pageable queries. Documentation claims 300K+ and sub-500 ms without benchmark evidence.
- **Root Cause:** Vision/performance documentation was promoted ahead of schema/query implementation.
- **Business Impact:** Search latency will degrade as data grows and product expectations are misleading.
- **Technical Impact:** Leading-wildcard scans cannot use ordinary B-tree indexes.
- **Security Impact:** N/A.
- **Affected Scope:** Kanji/vocabulary/grammar search.
- **Recommendation:** Establish realistic corpus/latency targets, benchmark with `EXPLAIN ANALYZE`, then add normalized full-text/trigram indexes and ranked queries as appropriate.
- **Estimated Effort:** M, 4–7 days.
- **Verification Method:** reproducible benchmark on target-size data meets stated p95 and query plans use intended indexes.

## F-026 — Seed migration contains non-printable data

- **Source:** Code Audit
- **Severity:** Low
- **Confidence:** High
- **Status:** New
- **Evidence:** Exhaustive UTF-8 scan found U+001D at V3 lines 5 and 958; all other V3–V5 statements were structurally terminated.
- **Root Cause:** Source deck control characters were not normalized before SQL generation.
- **Business Impact:** Mnemonics may render/search/export incorrectly.
- **Technical Impact:** Hidden characters complicate equality/debugging.
- **Security Impact:** N/A.
- **Affected Scope:** two Kanji seed rows.
- **Recommendation:** Correct through a forward migration and add generator validation rejecting non-permitted controls.
- **Estimated Effort:** S, <1 day.
- **Verification Method:** migration/data scan returns zero prohibited controls.

## Severity summary

| Severity | Count |
| --- | ---: |
| Critical | 4 |
| High | 13 |
| Medium | 8 |
| Low | 1 |
| **Total** | **26** |

## Status summary

| Status | Count |
| --- | ---: |
| New | 20 |
| Still Open | 6 |
| Regressed | 0 |
| **Total** | **26** |
