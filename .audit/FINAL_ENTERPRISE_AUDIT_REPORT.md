# SakuraLearn — Final Enterprise Repository Audit

Ngày audit: **2026-08-03**  
Repository snapshot: **`develop@2175947f481493bcdbd1fb9c45c50a9755a52b85`**  
Quy trình: **AuditMaster v3.0, Phase 0 → 4**  
Chế độ: **read-only source audit; không sửa source code**

## 1. Kết luận điều hành

**Kết luận phát hành: NO-GO cho production.**

Repository có nền tảng MVP đáng kể: module 1–5 có code thực, backend biên dịch và 14/14 test hiện có đều pass, frontend production build pass, Flyway quản lý schema, và tài liệu/backlog tương đối phong phú. Tuy nhiên, bốn Critical root issues và mười ba High issues làm hệ thống chưa an toàn để xử lý người dùng thật, nội dung trả phí hoặc credential production.

Bốn blocker nghiêm trọng nhất:

1. Base configuration đang track một credential-shaped API key và giữ các security fallback; giá trị đã được redacted trong audit.
2. Quiz API trả JPA entity trực tiếp, làm lộ đáp án và thuộc tính `passwordHash` có thể serialize.
3. OAuth state cookie được native Java-deserialize từ dữ liệu client mà không có chữ ký/xác thực.
4. Nội dung lesson không sanitize được render bằng `dangerouslySetInnerHTML`, trong khi access/refresh token nằm trong localStorage—tạo chuỗi stored-XSS → token theft.

Ngoài ra, mọi Teacher có thể sửa lesson/block/quiz/AI syllabus của Teacher khác; content có thể đọc không cần enrollment; progress/XP/enrollment tin vào client hoặc thiếu entitlement policy; media public; clean migration làm mất toàn bộ 3.003 quan hệ Kanji–radical; audit trail và test coverage chưa đủ làm control production.

## 2. Phạm vi và coverage

| Hạng mục | Kết quả |
| --- | ---: |
| Tracked files | 401 |
| Supplemental untracked audit instructions | 2 |
| FULL | 358 |
| TARGETED | 35 |
| METADATA_ONLY | 7 |
| UNREADABLE | 1 |
| Overall manifest coverage | 99,75% (400/401) |
| Critical-file FULL coverage | 100% (105/105) |
| Documents discovered | 68 |
| Readable documents reviewed | 67/67 |
| Document claims reconciled | 100/100 |

File không đọc được duy nhất là `diagram/sakuralearn_db@localhost.png`, đã ở trạng thái deleted trước khi audit bắt đầu. ERD còn lại đã được kiểm tra trực quan. Generated cache, lock/data maps, CSS và static assets dùng mức đọc thấp hơn đúng quy tắc AuditMaster; auth, authorization, controllers, business services, migrations, config, CI và tests đều FULL.

## 3. Kiến trúc và implementation thực tế

| Area | Reality |
| --- | --- |
| Backend | Java 21, Spring Boot 4.0.5, MVC/Security/JPA, Hibernate 7, Flyway, MapStruct, Spring AI |
| Frontend | React 19.2.5, Vite 8.0.8, React Router 7.14.1, Axios 1.15.0, custom CSS |
| Database | PostgreSQL 16-oriented, UUID/JSONB/array/enums, Flyway V1–V7, 44 table statements |
| Auth | Email/password, JWT, DB refresh token, verify/reset email, Google OAuth2 |
| Infra actively used | PostgreSQL, MinIO, SMTP/Mailpit |
| Declared but unused | Redis, Kafka, AMQP/Rabbit, WebSocket |
| Surface | 19 controllers, 80 HTTP mappings, 26 entities, 40 service files, 25 repositories |
| Frontend surface | 23 route declarations, 14 service files |
| Seed volume | 3.003 Kanji, 21.792 vocabulary, 842 grammar |

Kiến trúc modular monolith/layered phù hợp giai đoạn MVP, nhưng service boundary chưa consistently giữ authorization/business invariants. Persistence entities đôi khi trở thành API contract; client đang giữ nhiều business rule lẽ ra thuộc server.

## 4. Findings theo mức độ

| Severity | Count | Production meaning |
| --- | ---: | --- |
| Critical | 4 | Có thể lộ credential/hash/token, RCE-class risk hoặc account compromise |
| High | 13 | BOLA/content bypass, sai entitlement/progress/XP/data, dependency/ops risk lớn |
| Medium | 8 | Transaction/API/scale/test/contract defects đáng kể |
| Low | 1 | Data-quality defect hẹp |
| **Total** | **26** | 20 New, 6 Still Open |

### Critical

- **F-001:** Tracked credential và secret fallback không fail-fast.
- **F-002:** Quiz entity response lộ answer key và password hash.
- **F-003:** Unsigned OAuth cookie đi vào native Java deserialization.
- **F-004:** Stored XSS kết hợp token localStorage.

### High

- **F-005:** Teacher mutations thiếu object ownership.
- **F-006:** Content/media thiếu enrollment/publication authorization.
- **F-007:** OAuth đưa token/PII vào redirect query.
- **F-008:** localStorage + UI logout không revoke backend session.
- **F-009:** Server cho client tự complete learning content.
- **F-010:** Enrollment bỏ qua publication/price/payment.
- **F-011:** Quiz XP farm không giới hạn/không ledger.
- **F-012:** Media upload/public/delete lifecycle không an toàn.
- **F-013:** V2/V3 radical mismatch làm null 3.003 `radical_id` trên clean migration.
- **F-014:** Thiếu rate limit, uniform forgot response, rotation và reset revocation.
- **F-015:** Async audit không đảm bảo actor/delivery.
- **F-016:** Frontend và data-script lockfiles resolve High advisories.
- **F-023:** Thiếu production profile/health/monitoring/backup/rollback; Swagger public.

Chi tiết evidence, root cause, impact, recommendation, effort và verification cho từng issue nằm trong `FINDINGS_REGISTER.md`.

## 5. Module readiness

| Module | Code reality | Readiness |
| --- | --- | --- |
| M1 Auth/User | Feature breadth tốt; token delivery/storage, secret, enumeration/rate/revocation/OAuth-state issues | **Not production-ready** |
| M2 Course/Lesson | CRUD/publish/media/AI/review có thật; ownership, content access, paid enrollment, media policy thiếu | **Not production-ready** |
| M3 Learning/Progress | UI/progress/resume/quiz/notes có thật; completion server-side bypass, quiz disclosure/XP abuse | **Not production-ready** |
| M4 Dictionary/Notebook | Dataset/search/notebook có thật; radical seed defect, LIKE search, custom delete orphan, N+1 | **Beta after fixes** |
| M5 SRS | Calculator/UI/history/daily limit có thật; queue query/ordering/scale và custom lifecycle cần sửa | **Beta after fixes** |
| M6 Payment/Notification | Database schema only | **Not implemented** |
| M7 Administration | User/audit/basic stats/API/UI có thật; audit guarantee, analytics/moderation/payment admin thiếu | **Internal demo only** |
| M8 Gamification | User fields + quiz XP only; ledger/streak/badge/leaderboard/quests thiếu | **Mostly not implemented** |
| “M9 Notification” | Không có application layer; chỉ taxonomy/plan không nhất quán | **Not implemented** |

## 6. Runtime verification

| Check | Result |
| --- | --- |
| Backend `mvnw.cmd test` | PASS — 181 main sources compile; 14 tests, 0 failure/error/skip |
| Frontend `npm run build` | PASS — 1.871 modules; JS 494,89 KB / 149,27 KB gzip |
| Frontend dependency tree | PASS to resolve |
| Frontend `npm audit` | FAIL — 6 High vulnerable nodes, fixes available |
| Data scripts `npm audit` | FAIL — 2 High vulnerable nodes, fixes available |
| Backend dependency tree | PASS to resolve |
| Backend vulnerability scanner | Not available locally |
| PostgreSQL/MinIO/Mail integration E2E | Not run; no isolated suite, avoided persistent local-data mutation |
| Frontend lint/typecheck/test | Not available in package scripts |

Điểm quan trọng: context test dùng H2, tắt Flyway và không kiểm tra JSONB/array/PostgreSQL enums. Do đó test xanh không xác nhận V1→V7 clean migration hoặc production DB compatibility.

## 7. Documentation reconciliation

| Verdict | Count |
| --- | ---: |
| MATCHED | 59 |
| PARTIALLY_MATCHED | 20 |
| MISMATCHED | 19 |
| NOT_VERIFIABLE | 2 |
| **Documentation Accuracy** | **60,20%** |

Mâu thuẫn lớn tập trung ở module completion, refresh rotation/lifetime, full-text search/record volume, AI multi-model/tutor, CI test semantics, M9 taxonomy, prod profile và onboarding path. Running code xác nhận `mvn package` có chạy tests; vấn đề thật là suite quá hẹp, không phải workflow skip test.

Audit cũ: **6 FIXED, 8 STILL_OPEN, 0 REGRESSED, 0 NOT_VERIFIABLE**. Các vấn đề vẫn mở gồm security defaults, default admin fallback, localStorage, docs drift, uneven module status, minimal CI, bundle budget và unused premature infrastructure.

## 8. Production-readiness scorecard

| Category | Score /10 | Evidence summary | Confidence |
| --- | ---: | --- | --- |
| Architecture | 5,5 | Layered modular monolith rõ; invariants/DTO boundary không nhất quán | High |
| Backend | 4,5 | Feature breadth tốt; BOLA, entity exposure, completion/session defects | High |
| Frontend | 4,0 | Build pass/UI rộng; stored XSS, localStorage, hardcoded origins, no tests | High |
| Database | 4,0 | Flyway/schema phong phú; radical migration defect, no full-text, no PG migration test | High |
| Security | 1,5 | 4 Critical, authz/token/secret/upload/audit gaps | High |
| Performance | 4,0 | In-memory/N+1 SRS, LIKE scans, no benchmark/cache usage | High |
| DevOps | 3,0 | CI/build/Compose có; prod/health/monitoring/backup/rollback thiếu | High |
| Testing | 2,5 | 14 backend tests pass; critical/API/browser/PG coverage gần như trống | High |
| Documentation | 7,0 | Nhiều tài liệu/backlog và truth order tốt | High |
| Documentation Accuracy | 6,0 | 60,20% theo công thức AuditMaster | High |
| Maintainability | 4,5 | Long services/components, raw maps/entities, silent mapper gaps | High |
| Production Readiness | 2,0 | Không thể release khi Critical/High còn mở | High |

**Overall enterprise readiness: 2,8/10.** Đây là điểm có critical cap, không phải trung bình đơn giản. Security và data integrity Critical/High được ưu tiên hơn số lượng feature/build pass.

## 9. Remediation roadmap

### P0 — Incident containment, 0–24 giờ

1. Xác minh owner và revoke/rotate credential đã track; không kiểm tra giá trị bằng cách gọi provider từ audit.
2. Tạm chặn/giới hạn quiz entity endpoints và OAuth flow nếu môi trường có người dùng thật.
3. Không deploy production từ base profile hiện tại.

### P0 — Security release blockers, 1–2 tuần

1. DTO-only quiz API; loại `passwordHash`/answer keys khỏi mọi response.
2. Thay native OAuth cookie serialization bằng opaque server-side state; bỏ token khỏi URL.
3. Sanitize lesson/dictionary HTML + CSP; chuyển refresh/session sang Secure HttpOnly cookie.
4. Owner-or-admin guard cho lesson/block/quiz/AI; enrollment/content/media access matrix.
5. Server-side progress/quiz completion invariants.

### P1 — Business/data integrity, 1–3 tuần

1. Forward V8+ sửa Kanji–radical và control characters; fresh migration test PostgreSQL.
2. Paid/published enrollment + payment idempotency trước khi gọi M6 hoàn thành.
3. XP ledger/idempotent award; sửa custom-item SRS orphan.
4. Private media, upload validation, object-key lifecycle.
5. Refresh rotation/reuse detection, rate limits, reset revocation, audit outbox.
6. Upgrade vulnerable dependencies và thêm security gate.

### P2 — Quality/scale/operations, 2–6 tuần

1. Typed API/error/validation contracts và mapper tests.
2. PostgreSQL integration + MockMvc authorization matrix + frontend/E2E golden flow.
3. DB-paginated SRS hydration và benchmark/indexed dictionary search.
4. `application-prod.yml`, fail-fast secrets, private Swagger, health/readiness, metrics/alerts, backup/restore/rollback drills.
5. Đồng bộ docs module status, counts, search/AI/CI semantics và onboarding path.

## 10. Exit criteria để đổi NO-GO thành GO

- 0 Critical và không có High security/data-integrity issue chưa accepted bằng risk sign-off.
- Credential incident được đóng với bằng chứng revoke/rotation/history handling.
- Authorization matrix và session lifecycle có automated negative tests.
- Fresh PostgreSQL V1→latest migration pass và xác nhận Kanji radical integrity.
- Browser E2E pass cho login/OAuth, course entitlement, learning/quiz/progress, notebook/SRS.
- Dependency scan không còn High/Critical chưa xử lý.
- Staging chứng minh health, monitoring, private docs/media, backup restore và rollback.
- Documentation accuracy được cập nhật theo running code; module 6/8/9 không được quảng bá là implemented trước khi có code/E2E.

## 11. Audit safeguards và giới hạn

- Không sửa source, migration, configuration hay lockfile.
- Chỉ tạo artifacts trong `.audit/`.
- Không deploy, không chạy migration production, không reset Docker volumes, không rotate secret và không gửi request kiểm tra credential.
- Không khởi động persistent local Compose để tránh tác động dữ liệu người dùng.
- Findings dựa trên snapshot nêu trên; thay đổi sau commit cần delta audit.
