# SakuraLearn — Master Checklist Khắc Phục Audit

Ngày lập checklist: **2026-08-17**  
Nguồn audit: `FINAL_ENTERPRISE_AUDIT_REPORT_VI.md`, `FINDINGS_REGISTER_VI.md`, `RECONCILIATION_VI.md`  
Snapshot audit và HEAD hiện tại: **`develop@2175947f481493bcdbd1fb9c45c50a9755a52b85`**  
Kết luận hiện tại: **NO-GO cho Production**

## 1. Cách dùng checklist

- `[ ]` Chưa hoàn thành hoặc chưa có bằng chứng xác minh.
- `[x]` Chỉ đánh dấu khi code, test, tài liệu và bằng chứng runtime liên quan đều đã đạt.
- `P0-A` là khoanh vùng sự cố ngay; `P0-B` là blocker phát hành; `P1` là toàn vẹn nghiệp vụ/dữ liệu; `P2` là chất lượng, hiệu năng và vận hành.
- Mỗi finding `F-001` đến `F-026` chỉ có **một nhóm chủ trì** bên dưới. Finding ảnh hưởng nhiều module được đặt ở nhóm dùng chung hoặc module sở hữu nguyên nhân gốc rễ để tránh triển khai trùng.
- Không sửa Flyway `V1`–`V7`; mọi sửa dữ liệu/schema phải là migration tiến `V8+`.
- Module 6 và phần lớn Module 8 hiện chưa có tầng Java/React. Không đánh dấu “hoàn thành” chỉ vì đã có schema.
- Các ước lượng là của audit, chưa bao gồm thời gian review, staging và xử lý phát sinh.

### Definition of Done chung cho một finding

- [ ] Nguyên nhân gốc rễ đã được sửa tại server hoặc ranh giới có thẩm quyền, không chỉ che ở UI.
- [ ] Có test dương tính và test phủ định/tấn công phù hợp; test chạy trong CI.
- [ ] Không trả entity, secret, token, PII, đáp án hoặc exception nội bộ ngoài contract cho phép.
- [ ] Có bằng chứng runtime/staging hoặc migration PostgreSQL nếu finding liên quan hạ tầng/dữ liệu.
- [ ] Spec, OpenAPI, threat model/runbook và `DOCS_CODE_CROSS_REFERENCE.md` được cập nhật nếu hành vi thay đổi.
- [ ] Người review độc lập xác nhận tiêu chí đóng finding trong `FINDINGS_REGISTER_VI.md` đã đạt.

## 2. Bản đồ bao phủ 26 finding

| Finding | Mức độ | Nhóm chủ trì | Ưu tiên | Ước lượng audit |
| --- | --- | --- | --- | --- |
| F-001 | Critical | Dùng chung — Secret/config | P0-A | M |
| F-002 | Critical | Module 3 — Quiz | P0-B | M |
| F-003 | Critical | Module 1 — OAuth state | P0-B | M |
| F-004 | Critical | Dùng chung — XSS/session | P0-B | L |
| F-005 | High | Module 2 — Ownership | P0-B | M |
| F-006 | High | Module 2 — Content authorization | P0-B | L |
| F-007 | High | Module 1 — OAuth redirect | P0-B | M |
| F-008 | High | Module 1 — Session/logout | P0-B | M |
| F-009 | High | Module 3 — Progress | P0-B | L |
| F-010 | High | Module 6 — Payment/enrollment | P1 | L |
| F-011 | High | Module 8 — XP | P1 | M |
| F-012 | High | Module 2 — Media | P0-B | L |
| F-013 | High | Module 4 — Radical migration | P1 | M |
| F-014 | High | Module 1 — Auth abuse/session | P0-B | L |
| F-015 | High | Module 7 — Audit trail | P1 | M |
| F-016 | High | Dùng chung — Dependencies | P1 | M |
| F-017 | Medium | Module 2 — AI syllabus | P1 | M |
| F-018 | Medium | Module 5 — Custom SRS lifecycle | P1 | S |
| F-019 | Medium | Module 5 — Query/pagination | P2 | M |
| F-020 | Medium | Dùng chung — API/error contract | P1 | L |
| F-021 | Medium | Module 2 — Mapper contract | P1 | S |
| F-022 | Medium | Dùng chung — Test/CI | P1 | XL |
| F-023 | High | Dùng chung — Production operations | P0-B | L |
| F-024 | Medium | Dùng chung — Environment-aware API | P1 | S |
| F-025 | Medium | Module 4 — Search scale | P2 | M |
| F-026 | Low | Module 4 — Seed control characters | P2 | S |

## 3. Nhóm dùng chung toàn hệ thống

### 3.1. P0-A — Xử lý sự cố credential và cấu hình secret — F-001

- [ ] Xác định chủ sở hữu của credential/API key đã bị Git theo dõi mà không gọi thử credential từ audit.
- [ ] Hủy và quay vòng credential tại nhà cung cấp; lưu ticket, thời điểm revoke và người xác nhận làm bằng chứng.
- [ ] Đánh giá nơi credential có thể đã xuất hiện: Git history, fork, CI log, artifact, image, cache và máy developer.
- [ ] Lập và thực hiện kế hoạch xóa secret khỏi lịch sử Git có phối hợp; thông báo rõ thao tác rebase/re-clone cho team.
- [x] Xóa mọi fallback nhạy cảm khỏi `application.yml`; chỉ nhận qua environment/secret manager.
- [x] Tách cấu hình `dev`, `test`, `prod`; production phải fail-fast khi thiếu JWT/OAuth/AI/DB/MinIO secret.
- [x] Giới hạn `DataSeeder` ở profile `dev`; bỏ mật khẩu admin mặc định hoặc bắt buộc inject rõ ràng; không log plaintext password.
- [x] Thêm secret scan cho pre-commit/CI. Quét full history sẽ chỉ pass sau khi hoàn thành revoke và history cleanup.
- [x] Ghi runbook quản lý, quay vòng và ứng phó sự cố secret tại `docs/SECURITY_SECRET_INCIDENT_RUNBOOK.md`.
- [ ] **Đóng F-001:** credential cũ bị revoke, scanner không còn phát hiện, prod không khởi động nếu thiếu secret, secret mới không có trong Git/log.

**Tiến độ 2026-08-17:** Phần remediation trong working tree đã hoàn thành và 20/20 test backend pass. Inventory không làm lộ giá trị xác định credential-shaped value xuất hiện trong 13 commit, một path, từ `278955e` đến `2175947`; xem `F001_INCIDENT_RECORD_VI.md`. F-001 vẫn mở vì chưa có bằng chứng provider-side revoke/rotation, chưa rewrite lịch sử Git, và chưa có full-history Gitleaks pass từ fresh clone.

### 3.2. P0-B — Chuỗi Stored XSS → đánh cắp phiên — F-004

- [ ] Lập danh sách mọi nguồn HTML từ user/teacher/AI/database và mọi điểm render `dangerouslySetInnerHTML`.
- [ ] Chọn một policy nội dung rõ ràng: plain text/Markdown ưu tiên; nếu cần HTML thì dùng whitelist sanitizer được bảo trì.
- [ ] Sanitize ở ranh giới tin cậy phù hợp và encode đúng theo context khi render; không dựa riêng vào regex hoặc `TextSanitizer` cho HTML.
- [ ] Làm sạch cả lesson block, preview syllabus và nội dung từ điển có thể chứa HTML.
- [ ] Cấu hình CSP ít nhất cho `script-src`, `object-src`, `base-uri`, `frame-ancestors`; loại bỏ inline script không cần thiết.
- [ ] Chuyển refresh/session credential sang cookie `Secure`, `HttpOnly`, `SameSite`; JavaScript không được đọc refresh token.
- [ ] Thiết kế bảo vệ CSRF phù hợp sau khi dùng cookie; kiểm tra CORS/credentials theo origin allowlist.
- [ ] Xử lý dữ liệu HTML cũ đã lưu: migration/job sanitize hoặc đánh dấu cần duyệt lại.
- [ ] Thêm bộ payload Stored XSS cho lesson, syllabus và dictionary ở unit/integration/browser E2E.
- [ ] **Đóng F-004:** payload render vô hại, CSP chặn thực thi, browser test chứng minh script không đọc được credential phiên.

### 3.3. P1 — Nâng cấp dependency và security gate — F-016

- [ ] Chụp lại baseline `npm audit` cho frontend và `data/scripts` trên lockfile hiện tại.
- [ ] Nâng phiên bản đã vá cho `axios`, `form-data`, `postcss`, `react-router`, `react-router-dom`, `vite`, `adm-zip`, `fast-xml-builder`.
- [ ] Review breaking changes, sinh lại lockfile bằng package manager hiện tại và chạy build/test liên quan.
- [ ] Quét dependency backend bằng công cụ được chọn; lưu kết quả/SBOM làm artifact CI.
- [ ] Thêm CI gate cho High/Critical với cơ chế risk acceptance có người duyệt và ngày hết hạn.
- [ ] Thiết lập lịch Dependabot/Renovate hoặc chu kỳ cập nhật dependency định kỳ.
- [ ] **Đóng F-016:** không còn High/Critical chưa được chấp nhận; backend/frontend/data build và test pass.

### 3.4. P1 — Chuẩn hóa API, validation và lỗi — F-020

- [ ] Chốt contract response/error có kiểu dữ liệu rõ ràng; không dùng map thô hoặc entity làm public contract.
- [ ] Tạo request/response DTO cho các endpoint còn dùng `ResponseEntity<?>`, entity hoặc raw map, ưu tiên auth/quiz/progress/notebook.
- [ ] Bổ sung Bean Validation cho field bắt buộc, enum, range, size và quan hệ chéo có thể xác minh.
- [ ] Tạo domain exception có mã lỗi công khai ổn định; ánh xạ đúng 400/401/403/404/409/422.
- [ ] Không trả `RuntimeException.getMessage()` hoặc stacktrace/SQL/class name ra client; log nội bộ phải có correlation ID.
- [ ] Cập nhật OpenAPI schema và ví dụ lỗi; kiểm tra backward compatibility trước khi đổi contract frontend.
- [ ] Thêm contract test cho malformed JSON, null, range sai, quyền sai, resource không tồn tại và lỗi 5xx.
- [ ] **Đóng F-020:** không còn entity/map thô ở API mục tiêu, input sai bị từ chối ổn định, response 5xx không lộ chi tiết nội bộ.

### 3.5. P1 — Nền kiểm thử theo rủi ro và CI — F-022

- [ ] Thêm PostgreSQL Testcontainers/ephemeral service; không dùng riêng H2 để xác minh JSONB, array, enum và Flyway.
- [ ] Thêm job migration sạch `V1` → version mới nhất trên PostgreSQL và assert dữ liệu bất biến quan trọng.
- [ ] Xây ma trận MockMvc/integration cho `ANONYMOUS`, `STUDENT`, `TEACHER_OWNER`, `TEACHER_OTHER`, `ADMIN`.
- [ ] Phủ vòng đời auth: login, refresh rotation, reuse detection, logout, reset password, OAuth state/callback.
- [ ] Phủ course/content/media: publish/enrollment/payment entitlement, ownership, upload/download/delete.
- [ ] Phủ learning: quiz không lộ đáp án, chấm điểm server-side, completion threshold, progress aggregation.
- [ ] Phủ notebook/SRS: ownership, custom item lifecycle, due queue, pagination, concurrent review.
- [ ] Thêm frontend component test cho `AuthContext`, API error handling và route guard.
- [ ] Thêm browser E2E golden flow: login/OAuth → enroll/entitlement → learn/quiz/progress → dictionary → notebook → SRS.
- [ ] Thêm lint/type or static check/test scripts cho frontend và chạy trong CI.
- [ ] Công bố test report/coverage artifact; đặt gate dựa trên critical flow, không chỉ dựa vào phần trăm dòng.
- [ ] **Đóng F-022:** CI chứng minh được các luồng và negative authorization ở trên, migration PG thật và browser E2E đều pass.

### 3.6. P0-B/P2 — Kiểm soát triển khai Production — F-023

- [ ] Tạo `application-prod.yml`/cấu hình tương đương với secret fail-fast, CORS allowlist và seeder tắt.
- [ ] Tắt hoặc bảo vệ Swagger/OpenAPI ở production.
- [ ] Thêm health/liveness/readiness cho app, PostgreSQL, MinIO và các dependency bắt buộc.
- [ ] Định nghĩa log có cấu trúc, correlation ID, metrics, dashboard và alert tối thiểu cho auth, 5xx, DB, queue/outbox, storage.
- [ ] Tạo manifest/container image triển khai có version bất biến, non-root, giới hạn tài nguyên và healthcheck.
- [ ] Xác định migration strategy, maintenance window và rollback khi migration/app release lỗi.
- [ ] Thiết lập backup PostgreSQL/MinIO, retention, encryption và diễn tập restore có RPO/RTO được ghi nhận.
- [ ] Viết runbook deploy, rollback, incident, secret rotation và restore.
- [ ] Chốt Redis/Kafka/AMQP/WebSocket: bỏ dependency/config chưa dùng hoặc ghi rõ owner, use case và điều kiện kích hoạt; không để hạ tầng “ảo” trong prod baseline.
- [ ] Thêm bundle budget/gate cho frontend; xử lý cảnh báo chunk lớn thay vì chỉ ghi nhận.
- [ ] Triển khai staging tương đương production và thực hiện smoke, alert, backup/restore, rollback drill.
- [ ] **Đóng F-023:** staging vượt qua toàn bộ readiness/secret/Swagger/monitoring/restore/rollback checks với bằng chứng.

### 3.7. P1 — Tầng API nhận biết môi trường — F-024

- [ ] Chuyển mọi HTTP call frontend qua `src/services/api.js` hoặc domain service dùng chung interceptor.
- [ ] Bỏ ba raw fetch/hardcoded origin trong `SaveToNotebookPopup.jsx`.
- [ ] Bỏ backend OAuth origin hardcode trong `Login.jsx`/OAuth handler; dùng cấu hình môi trường đã validate.
- [ ] Không lưu/trả URL `localhost` từ backend media; chuyển sang object key hoặc URL được dựng từ public base/presigned endpoint.
- [ ] Quét source/production bundle để chắc chắn không còn `localhost:8080` ngoài config dev/example.
- [ ] Test staging dưới HTTPS và origin khác localhost cho auth, notebook và media; không có mixed content.
- [ ] **Đóng F-024:** toàn bộ flow hoạt động với `VITE_API_BASE_URL`/origin staging và cùng cơ chế refresh/error chung.

### 3.8. Đồng bộ tài liệu và các tồn đọng audit cũ

- [ ] Sửa 19 claim `MISMATCHED` và 20 claim `PARTIALLY_MATCHED` trong `RECONCILIATION_VI.md` theo code/runtime sau remediation.
- [ ] Đồng bộ refresh/session: TTL thực, rotation, logout/revoke/reset-password behavior.
- [ ] Đồng bộ search/scale: số lượng seed thực, LIKE/trigram/full-text và benchmark thực; không tuyên bố 300K/sub-500 ms khi chưa có bằng chứng.
- [ ] Đồng bộ AI: chỉ mô tả provider/fallback/tutor thật sự tồn tại và đã test.
- [ ] Đồng bộ CI: phân biệt “Maven package có chạy test” với “độ phủ test còn hẹp”.
- [ ] Sửa taxonomy: Notification thuộc Module 6; không gọi “Module 9” đã triển khai.
- [ ] Sửa đường dẫn onboarding `AI đánh giá/` thành thư mục thực tế `AI check/` hoặc đổi tên thư mục có kiểm soát.
- [ ] Ghi rõ M6 chưa triển khai và M8 mới là nền cho tới khi đạt DoD tương ứng.
- [ ] Đồng bộ stack/profile, module status, số endpoint/entity/test và đường dẫn tài liệu sau mỗi đợt sửa.
- [ ] Chạy lại claims reconciliation; mục tiêu không còn claim sai về trạng thái/tính năng Production.

## 4. Module 1 — Authentication & User

### 4.1. P0-B — OAuth state an toàn — F-003

- [x] Loại bỏ Java native serialization/deserialization khỏi mọi dữ liệu OAuth do browser kiểm soát.
- [x] Chọn state phía server bằng opaque random handle lưu TTL ngắn, one-time-use; hoặc token JSON ký xác thực với schema allowlist nghiêm ngặt.
- [x] Ràng buộc state với browser/session, redirect URI, provider và thời gian hết hạn.
- [x] Từ chối state bị sửa, phát lại, hết hạn, sai provider hoặc sai redirect trước khi parse dữ liệu nghiệp vụ.
- [x] Xóa cookie/state sau thành công hoặc thất bại; đặt Secure/HttpOnly/SameSite phù hợp.
- [x] Thêm test OAuth đối kháng với Base64 lỗi, serialized payload, tamper, replay và expiry.
- [ ] **Đóng F-003:** không còn đường HTTP input tới native deserialization; state giả mạo/replay bị từ chối.

**Tiến độ 2026-10-06:** Code và 18 test OAuth cục bộ đã đạt, gồm callback filter thật của Spring và concurrent consume. Chờ Google OAuth HTTPS staging/reverse proxy và review độc lập trước khi đóng finding. Store RAM giới hạn 10.000 request/180 giây, cần sticky routing hoặc shared atomic store khi chạy nhiều replica. Xem `REMEDIATION_STATUS.md`.

### 4.2. P0-B — OAuth callback không đưa token/PII vào URL — F-007

- [ ] Bỏ access token, refresh token, email, name, avatar, role và user ID khỏi query redirect.
- [ ] Dùng authorization code dùng một lần, TTL ngắn và đổi code server-side; hoặc thiết lập session/refresh cookie trực tiếp.
- [ ] Bảo đảm code one-time, gắn đúng client/browser và không thể reuse.
- [ ] Redirect về frontend bằng URL sạch; gọi `history.replaceState` nếu còn tham số không nhạy cảm cần dọn.
- [ ] Kiểm tra access log, reverse proxy log, analytics, browser history và Referer không chứa credential/PII.
- [ ] Thêm E2E cho OAuth thành công, thất bại, replay và nhiều tab.
- [ ] **Đóng F-007:** callback/redirect chỉ còn state/code không nhạy cảm; không có bearer token/PII trong URL/log/history.

### 4.3. P0-B — Vòng đời session, refresh và logout — F-008

- [ ] Chốt kiến trúc session chung cho password login và OAuth.
- [ ] FE logout phải gọi API backend trước khi xóa state cục bộ; backend revoke refresh session tương ứng.
- [ ] Quay vòng refresh token ở mỗi lần refresh, lưu token family/jti và phát hiện reuse.
- [ ] Rút access-token TTL từ 24 giờ xuống mức phù hợp với threat model.
- [ ] Reset password, khóa/vô hiệu hóa user, đổi role và sự cố bảo mật phải revoke các session phù hợp.
- [ ] Nếu hỗ trợ nhiều thiết bị, thêm API liệt kê/revoke từng session và “logout all”.
- [ ] Xử lý race/concurrent refresh định đẳng, không làm session hợp lệ bị mất ngẫu nhiên.
- [ ] Không giữ refresh token trong Web Storage; phối hợp với checklist F-004 về cookie/CSRF.
- [ ] Thêm integration/E2E: logout xong không refresh được, token cũ sau rotation bị phát hiện, reset password hủy session.
- [ ] **Đóng F-008:** UI logout kết thúc phiên server; refresh token bị đánh cắp/cũ không thể tiếp tục sử dụng.

### 4.4. P0-B — Chống lạm dụng auth — F-014

- [ ] Thêm rate limit theo IP + account/device cho login, register, forgot/reset, verify/resend và refresh.
- [ ] Thiết kế lockout/backoff có ngưỡng, thời gian mở khóa, audit event và cách hỗ trợ người dùng hợp lệ.
- [ ] Forgot-password luôn trả response và thời gian xử lý gần tương đương dù email tồn tại hay không.
- [ ] Token verify/reset phải one-time, TTL rõ ràng, lưu hash thay vì plaintext nếu đang lưu DB.
- [ ] Thu hồi refresh session sau reset password; áp dụng rotation/reuse detection từ F-008.
- [ ] Giới hạn gửi email để chống spam/cost abuse; không lộ trạng thái tài khoản trong error message.
- [ ] Ghi audit event cho login fail, rate-limit, lock/unlock, reset và session revoke mà không log secret/token.
- [ ] Test brute force, account enumeration, resend abuse, token replay, concurrent refresh và lockout bypass.
- [ ] **Đóng F-014:** rate limit hoạt động, forgot-password không dò được account, token rotate/revoke đúng trong test bảo mật.

### 4.5. DoD Module 1

- [ ] F-003, F-007, F-008, F-014 và phần session của F-004 đều đóng.
- [ ] Ma trận auth controller/service có test cho anonymous/user/disabled/locked/admin và case phủ định.
- [ ] Password login và Google OAuth dùng cùng policy session/revocation.
- [ ] Không còn refresh token trong localStorage, token trong URL hoặc native deserialization từ cookie.
- [ ] Tài liệu M1 mô tả đúng TTL, cookie, CSRF, rotation, logout và multi-session behavior.

## 5. Module 2 — Course, Lesson, Content & Media

### 5.1. P0-B — Ownership Teacher/Admin — F-005

- [ ] Định nghĩa ma trận `TEACHER_OWNER`, `TEACHER_OTHER`, `ADMIN` cho course, lesson, block, quiz, reorder và AI syllabus.
- [ ] Tạo owner-or-admin guard dùng chung tại service/domain boundary; không chỉ kiểm tra role ở controller.
- [ ] Truyền actor ID/authority vào mọi lệnh mutation và resolve ownership qua chuỗi block → lesson → course.
- [ ] Chặn cả create, update, delete, reorder, publish và AI generation trên tài nguyên người khác.
- [ ] Trả 403 nhất quán, không tiết lộ thêm resource nhạy cảm; ghi audit event cho hành vi bị từ chối quan trọng.
- [ ] Test Teacher A bị 403 trên toàn bộ tài nguyên Teacher B; Admin thành công; owner thành công.
- [ ] **Đóng F-005:** không còn mutation chỉ dựa trên `hasRole('TEACHER')` mà thiếu ownership.

### 5.2. P0-B — Phân quyền nội dung/publish/enrollment — F-006

- [ ] Chốt state machine course tối thiểu: `DRAFT`/`PENDING`/`PUBLISHED`/`ARCHIVED` và quyền chuyển trạng thái.
- [ ] Tách rõ preview công khai khỏi nội dung đầy đủ; định nghĩa field/block/media nào được preview.
- [ ] Tạo entitlement guard dùng chung cho course/lesson/block/quiz/media: owner/admin hoặc enrollment hợp lệ trên course đã publish.
- [ ] Không để `anyRequest().authenticated()` được hiểu là đã đủ quyền nội dung.
- [ ] Áp dụng guard ở service cho GET theo ID và danh sách nested, tránh BOLA bằng cách đoán UUID.
- [ ] Phối hợp M6: course trả phí chỉ tạo entitlement/enrollment sau payment/IPN hợp lệ.
- [ ] Test anonymous, logged-in chưa enroll, enroll free, paid chưa trả, paid đã trả, owner và admin cho từng endpoint.
- [ ] **Đóng F-006:** nội dung unpublished/paid không thể đọc trái phép; preview và full content có contract riêng.

### 5.3. P0-B — Vòng đời media riêng tư/an toàn — F-012

- [ ] Định nghĩa allowlist MIME/extension/magic bytes và giới hạn kích thước theo loại avatar/thumbnail/video/audio.
- [ ] Stream upload có quota/timeouts; từ chối file giả MIME, executable/script và file quá kích thước.
- [ ] Giữ bucket private; không tự động `makeBucketPublic`.
- [ ] Lưu object key + metadata, không lưu URL phụ thuộc localhost/environment.
- [ ] Phân phối qua authenticated endpoint hoặc presigned URL TTL ngắn sau entitlement guard F-006.
- [ ] Chuẩn hóa replace/delete theo object key; xóa object cũ đúng transaction/outbox-compensation, không để orphan.
- [ ] Tách quyền upload course media, avatar và thumbnail; kiểm tra owner/admin.
- [ ] Nếu cho download inline, đặt `Content-Type`, `Content-Disposition`, nosniff và cache policy an toàn.
- [ ] Thêm MinIO integration test cho upload hợp lệ/sai, anonymous read, entitlement read, replace/delete và cleanup khi DB lỗi.
- [ ] **Đóng F-012:** media trả phí/private không công khai, file xấu/quá lớn bị chặn, replace/delete không orphan object.

### 5.4. P1 — AI syllabus atomic, typed và có fallback rõ — F-017

- [ ] Thay raw map bằng DTO/schema có kiểu; validate độ dài, số lesson/block, enum và HTML trước khi persist.
- [ ] Tách provider call/parse khỏi transaction ghi DB.
- [ ] Chỉ persist sau khi toàn bộ response đã parse/validate; ghi trong một transaction nguyên tố.
- [ ] Định nghĩa rõ fallback: provider nào, thứ tự retry, lỗi nào retry, khi nào dùng local seed; không claim multi-model nếu không có.
- [ ] Thêm idempotency/request ID hoặc replace strategy để retry không tạo syllabus trùng.
- [ ] Hiển thị trạng thái pending/success/fallback/failure cho Teacher; ghi metrics chi phí/lỗi không chứa prompt nhạy cảm.
- [ ] Test malformed response, provider timeout, lỗi giữa transaction, retry và concurrent generate.
- [ ] **Đóng F-017:** mọi lỗi không để dữ liệu dở dang/trùng; đúng một kết quả được commit theo policy.

### 5.5. P1 — Mapper/API field không bị null ẩn — F-021

- [ ] Khai báo mapping rõ cho `CourseResponse.teacherName`, `LessonResponse.courseId`, `LessonBlockResponse.lessonId`.
- [ ] Chuyển mapper response từ `unmappedTargetPolicy = IGNORE` sang `WARN`/`ERROR` theo phạm vi phù hợp.
- [ ] Review các response mapper khác để tìm nested ID/name/derived field bị bỏ qua.
- [ ] Thêm unit/contract test với object graph đại diện và assert mọi field công khai đã khai báo.
- [ ] **Đóng F-021:** generated mapper gán đủ field và build/test thất bại khi target response mới chưa map.

### 5.6. DoD Module 2

- [ ] F-005, F-006, F-012, F-017, F-021 và phần content của F-004 đều đóng.
- [ ] Workflow publish có owner/admin moderation rõ; course chưa publish không enroll/đọc như course live.
- [ ] API content/media dùng cùng entitlement policy và có negative authorization test.
- [ ] AI syllabus không tạo dữ liệu một phần, mapper không trả field null ngoài chủ đích.

## 6. Module 3 — Learning, Quiz & Progress

### 6.1. P0-B — Quiz DTO không lộ hash/đáp án — F-002

- [ ] Không trả `Quiz`, `QuizQuestion`, `QuizAttempt`, `User` JPA entity trực tiếp từ controller/service public.
- [ ] Tạo DTO riêng cho Student, Teacher editor và Result; whitelist field cho từng audience.
- [ ] Student DTO không chứa `correctAnswer` trước thời điểm/policy feedback cho phép.
- [ ] Result DTO chỉ trả giải thích/đáp án theo policy sau submit; chấm điểm hoàn toàn ở server.
- [ ] Thêm `@JsonIgnore`/biện pháp phòng thủ cho `User.passwordHash` và các secret field dù entity không còn là contract.
- [ ] Tắt/giảm phụ thuộc OSIV sau khi DTO query/mapping đầy đủ; kiểm tra lazy graph không serialize ngoài ý muốn.
- [ ] Thêm snapshot/JSONPath contract test bảo đảm không có `passwordHash`, token hoặc đáp án bị cấm trên GET/create/update/submit.
- [ ] Tạm chặn/giới hạn endpoint quiz entity nếu có môi trường đang phục vụ người dùng trước khi bản sửa được deploy.
- [ ] **Đóng F-002:** toàn bộ quiz endpoint chỉ trả DTO theo audience, không lộ hash/đáp án, server chấm điểm đúng.

### 6.2. P0-B — Server quyết định completion/progress — F-009

- [ ] Định nghĩa policy hoàn thành theo loại block: text/manual, video/audio threshold, quiz pass, bài tập khác.
- [ ] Tách endpoint event theo loại thay vì nhận cờ `completed=true` tùy ý từ client.
- [ ] Với video/audio, server xác minh event/progress hợp lệ, monotonic và threshold (ví dụ 85%); giới hạn spoof/replay hợp lý.
- [ ] Với quiz, chỉ kết quả chấm server-side đạt ngưỡng mới hoàn thành quiz block.
- [ ] `completeLesson` không được đánh dấu hàng loạt block chưa đạt; lesson/course phải được tổng hợp từ trạng thái block hợp lệ.
- [ ] Kiểm tra enrollment/entitlement và ownership của progress ở mọi read/write.
- [ ] Làm completion idempotent và an toàn khi request đồng thời; không tăng XP/chứng chỉ nhiều lần.
- [ ] Xác định quy tắc khi Teacher thay đổi/xóa/reorder block và recalculate progress.
- [ ] Test direct completion bypass, media dưới ngưỡng, quiz fail/pass, replay, concurrent request và course structure change.
- [ ] **Đóng F-009:** client không thể tự cấp completion; chỉ sự kiện server xác minh mới thay đổi progress.

### 6.3. DoD Module 3

- [ ] F-002 và F-009 đóng; phần access của F-006 và validation của F-020 đã áp dụng cho quiz/progress.
- [ ] Quiz không lộ đáp án trước policy, không lộ entity graph và không thể dùng progress endpoint để bypass.
- [ ] Progress block → lesson → course được tính server-side, idempotent và giữ đúng khi cấu trúc course thay đổi.
- [ ] Browser E2E phủ xem media dưới/trên ngưỡng, quiz fail/pass và resume progress.

## 7. Module 4 — Dictionary & Notebook Data

### 7.1. P1 — Sửa quan hệ Kanji–Radical bằng migration tiến — F-013

- [ ] Đọc và tuân thủ `docs/development_guidelines.md`; không sửa V2/V3.
- [ ] Xác định mapping canonical giữa Kangxi number, glyph và `radicals.id`; ghi rõ nguồn và xử lý ngoại lệ.
- [ ] Tạo migration `V8+` idempotent để backfill `kanji.radical_id` cho dữ liệu đã migrate.
- [ ] Thêm precondition/postcondition SQL: số row source, row được map, row còn null và duplicate/mismatch.
- [ ] Test cả database sạch V1→latest và database V1→V7 đã có dữ liệu rồi nâng lên latest.
- [ ] Kiểm tra mẫu ở nhiều radical và toàn bộ 3.003 Kanji; không chỉ assert migration không lỗi.
- [ ] Thêm CI PostgreSQL migration smoke theo F-022.
- [ ] **Đóng F-013:** số `radical_id` non-null/đúng đạt kỳ vọng đã duyệt và sample mapping chính xác trên clean upgrade.

### 7.2. P2 — Search có SLA/index/benchmark thật — F-025

- [ ] Chốt dữ liệu mục tiêu và SLA p50/p95 cho search Kanji/vocabulary/grammar.
- [ ] Tạo dataset benchmark đại diện về số lượng, tiếng Nhật, romaji, tiếng Việt và query phổ biến/xấu.
- [ ] Đo baseline bằng `EXPLAIN (ANALYZE, BUFFERS)` cho LIKE/ILIKE hiện tại.
- [ ] Chọn PostgreSQL trigram/full-text/normalized column phù hợp từng loại field; không mặc định Elasticsearch.
- [ ] Thêm index/query bằng migration `V8+`, có đánh giá kích thước và chi phí write.
- [ ] Chuẩn hóa ranking/pagination khi global search hợp nhất ba loại dữ liệu.
- [ ] Thêm benchmark regression/gate ở môi trường phù hợp và cập nhật claim tài liệu theo kết quả thật.
- [ ] **Đóng F-025:** query plan dùng index dự kiến và p95 đạt SLA trên dataset mục tiêu có thể tái lập.

### 7.3. P2 — Loại ký tự điều khiển khỏi seed/dữ liệu — F-026

- [ ] Xác nhận hai U+001D trong V3 và ảnh hưởng dữ liệu sau migration; không chỉnh V3.
- [ ] Tạo migration tiến sửa đúng row/field bị ảnh hưởng.
- [ ] Cập nhật ETL/generator để normalize và từ chối control character không cho phép trước khi sinh SQL.
- [ ] Thêm UTF-8/control-character scan cho output V3–V5 hoặc seed mới trong CI/data pipeline.
- [ ] **Đóng F-026:** migration/data scan trả 0 ký tự điều khiển bị cấm và nội dung mnemonic hiển thị đúng.

### 7.4. DoD Module 4

- [ ] F-013, F-025, F-026 đóng; phần notebook/API của F-020/F-024 đã áp dụng.
- [ ] Clean migration và upgrade migration trên PostgreSQL cho cùng kết quả dữ liệu radical.
- [ ] Search claim trong docs dựa trên benchmark thật; không quảng bá dung lượng/độ trễ chưa đo.

## 8. Module 5 — SRS & Practice

### 8.1. P1 — Xóa custom item không để flashcard mồ côi — F-018

- [ ] Chọn một canonical identifier/relationship cho custom notebook item ↔ flashcard.
- [ ] Sửa create/read/delete dùng cùng identifier; ràng buộc ownership ở service.
- [ ] Xóa notebook item và flashcard liên quan trong cùng transaction hoặc bằng FK/cascade đã đánh giá an toàn.
- [ ] Tạo migration/job phát hiện và dọn flashcard orphan hiện có, có dry-run/count trước khi xóa.
- [ ] Test create → due queue → delete; assert cả notebook row, flashcard và queue/statistics đều sạch.
- [ ] Test delete item chuẩn (Kanji/vocab/grammar) không xóa nhầm dữ liệu master/shared.
- [ ] **Đóng F-018:** không còn orphan sau delete và cleanup dữ liệu cũ được xác minh.

### 8.2. P2 — SRS query/pagination ổn định, không N+1 — F-019

- [ ] Đưa filter user/folder/due/status và pagination xuống repository/database.
- [ ] Dùng sort ổn định, ví dụ `nextReviewDate`, priority và ID tie-breaker; không phụ thuộc iteration order.
- [ ] Trả `totalElements/totalPages` từ query đúng, không tạo `PageImpl` sau khi limit in-memory.
- [ ] Batch hydrate/projection dữ liệu Kanji/vocab/grammar/custom thay cho repository call từng card.
- [ ] Chốt timezone nghiệp vụ/user cho “due today”, lưu/so sánh thời điểm nhất quán.
- [ ] Thêm index cho query due queue sau khi kiểm tra query plan.
- [ ] Benchmark dataset lớn theo user/folder; đo query count, memory, latency và page stability.
- [ ] Test boundary ngày/DST nếu áp dụng, pagination không trùng/mất item và concurrent review.
- [ ] **Đóng F-019:** query count có giới hạn, DB phân trang/sort đúng, memory/latency đạt ngưỡng đã chốt.

### 8.3. DoD Module 5

- [ ] F-018 và F-019 đóng; ownership/validation/API contract dùng chuẩn chung.
- [ ] Due queue ổn định theo timezone, daily limit và pagination; không N+1 hoặc load toàn bộ collection.
- [ ] Custom item có vòng đời đầy đủ, xóa không để card/thống kê mồ côi.
- [ ] Regression test SM-2 hiện có tiếp tục pass cùng integration test repository PostgreSQL.

## 9. Module 6 — Payment & Notification

> Module 6 hiện **schema-only**. Checklist dưới đây vừa đóng F-010 vừa xác định mức MVP tối thiểu trước khi được gọi là đã triển khai.

### 9.1. P1 — Policy enrollment/entitlement — F-010

- [ ] Chặn enroll nếu course chưa `PUBLISHED` hoặc đã archive/delete.
- [ ] Course miễn phí được enroll trực tiếp theo policy; course trả phí không được enroll qua endpoint free/manual của Student.
- [ ] Chốt Payment state machine: `PENDING` → `SUCCESS`/`FAILED`/`CANCELLED`/`REFUNDED` và transition hợp lệ.
- [ ] Dùng server-side price/course/user snapshot; không tin amount/course/user từ browser callback.
- [ ] Thiết kế idempotency key và unique constraint theo provider transaction/payment/entitlement.
- [ ] Chỉ IPN/webhook đã verify signature, merchant, amount, currency, course và user mới được cấp enrollment.
- [ ] Return URL chỉ hiển thị trạng thái; không cấp quyền dựa vào query từ browser.
- [ ] Xử lý callback duplicate/out-of-order/concurrent theo transaction; chỉ tạo đúng một enrollment.
- [ ] Định nghĩa refund/cancel ảnh hưởng entitlement, progress và access media như thế nào.
- [ ] Test unpublished, free, paid-before-IPN, signature sai, amount mismatch, duplicate IPN, concurrent IPN và refund.
- [ ] **Đóng F-010:** paid course không thể enroll miễn phí; một IPN hợp lệ cấp đúng một entitlement.

### 9.2. MVP Backend Payment

- [ ] Thêm migration tiến nếu schema V1 chưa đủ idempotency/audit/provider fields; không sửa V1.
- [ ] Tạo `Payment` entity/enums/repository với optimistic/pessimistic/unique strategy được kiểm thử.
- [ ] Tạo typed DTO và service cho init/status/history; không expose payment entity hoặc secret checksum.
- [ ] Tích hợp VNPay sandbox: canonical signing, HMAC-SHA512, timestamp/expiry và verify IPN theo tài liệu provider hiện hành.
- [ ] Tạo endpoint init, my/history, status, IPN và return handler với auth/rate limit phù hợp.
- [ ] Tách payment transaction khỏi enrollment entitlement nhưng commit/outbox theo cách không mất sự kiện.
- [ ] Không log full callback chứa PII/signature/secret; có correlation/provider transaction ID đã mask.
- [ ] Thêm reconciliation job/admin view cho payment `PENDING`/mismatch cần xử lý.

### 9.3. MVP Notification Backend/Frontend

- [ ] Tạo `Notification` entity/repository/service/controller cho list phân trang, unread count, mark one/all read.
- [ ] Mọi query/mutation notification phải scope theo user hiện tại; Admin không đọc nội dung cá nhân nếu không có policy.
- [ ] Phát sự kiện payment success/failure/refund thành in-app notification và email theo outbox/retry quan sát được.
- [ ] Tránh dùng `@Async` best-effort nuốt lỗi giống F-015; có retry/dead-letter/alert ở mức phù hợp monolith.
- [ ] Tạo `paymentService.js`/`notificationService.js` qua API client trung tâm.
- [ ] Thêm nút mua, payment result, lịch sử thanh toán, bell, unread badge và notification list.
- [ ] Test notification ownership, pagination, idempotency, mark-read và retry khi mail/storage lỗi.

### 9.4. DoD Module 6

- [ ] F-010 đóng và F-006 dùng entitlement M6 cho content/media trả phí.
- [ ] Sandbox E2E: mua → VNPay → IPN verify → payment success → một enrollment → email/in-app notification.
- [ ] Negative E2E: callback giả/sai amount/trùng/replay không cấp quyền.
- [ ] Có admin reconciliation/audit cơ bản, metrics/alert cho IPN failure và runbook vận hành.
- [ ] Docs/Cross-reference chỉ đổi M6 thành MVP implemented sau khi backend + frontend + E2E đạt.

## 10. Module 7 — Administration, Audit & Analytics

### 10.1. P1 — Audit trail bền vững và đúng actor — F-015

- [ ] Chốt taxonomy event: auth, user/role/status, course moderation, content mutation, payment, entitlement, admin action, security denial.
- [ ] Capture actor ID/role, request/correlation ID, IP, target, action và timestamp trước khi rời request thread.
- [ ] Không đọc `SecurityContextHolder` trễ trong worker nếu context không được truyền rõ ràng.
- [ ] Thay best-effort `@Async` nuốt exception bằng transactional outbox/durable queue hoặc cơ chế có retry và failure visibility.
- [ ] Không log token, password, secret hoặc PII vượt nhu cầu; xác định retention/tamper protection/access policy.
- [ ] Sửa phân loại login/auth event; không ghi như `INSERT users` gây hiểu lầm.
- [ ] Thêm metrics/alert/dead-letter hoặc trạng thái failed; admin/operator nhìn thấy sự kiện chưa giao.
- [ ] Test đúng actor/IP/type trong async flow; cố tình làm DB/outbox fail để chứng minh retry/alert.
- [ ] **Đóng F-015:** sự kiện bắt buộc không mất âm thầm, actor chính xác và lỗi delivery quan sát/khôi phục được.

### 10.2. Khoảng trống quản trị được audit ghi nhận

- [ ] Course moderation: danh sách `PENDING`, approve/reject có lý do và audit; phối hợp M2 ownership/workflow.
- [ ] Payment reconciliation/refund/admin view chỉ triển khai sau core M6 và có quyền/audit riêng.
- [ ] Quick actions như reset progress/manual unlock phải có confirm, reason, scope quyền, idempotency và audit.
- [ ] Dashboard dùng aggregate query có pagination/time range; không gọi “analytics hoàn chỉnh” khi chỉ có summary.
- [ ] Audit viewer hỗ trợ filter actor/action/target/date/status và pagination; export phải kiểm soát PII.
- [ ] Test Student/Teacher bị 403 trên toàn bộ admin endpoint; Admin đúng quyền mới thao tác được.

### 10.3. DoD Module 7

- [ ] F-015 đóng; audit log là cơ chế bền vững chứ không còn best-effort.
- [ ] Mọi thao tác nhạy cảm của Admin có actor, reason, target, result và correlation ID.
- [ ] Course moderation và payment admin chỉ được đánh dấu xong khi module phụ thuộc M2/M6 đã có.
- [ ] Docs phân biệt rõ user management/audit/statistics đã có với analytics/moderation/payment còn planned.

## 11. Module 8 — Gamification

> Module 8 hiện mới có field XP/streak và cộng 10 XP từ quiz; badges/ledger/policy server-side chưa triển khai.

### 11.1. P1 — XP ledger và award idempotent — F-011

- [ ] Tạo `XpTransaction`/ledger bất biến map schema bằng entity/repository; bổ sung migration tiến nếu cần event key/constraint.
- [ ] Mỗi award có source, source entity ID, policy version, amount, timestamp và unique event key.
- [ ] Mọi cộng/trừ XP đi qua một `GamificationService`; bỏ cộng trực tiếp `User.xp` trong quiz.
- [ ] Chốt policy quiz: lần đầu pass, best score hoặc event nào được XP; ghi rõ retry/replay behavior.
- [ ] Award và domain event phải cùng transaction hoặc outbox bảo đảm nhất quán.
- [ ] Xử lý concurrent quiz submit bằng unique constraint/idempotency; không lost update/double award.
- [ ] Có khả năng tính lại balance từ ledger và phát hiện/chỉnh chênh lệch với `User.xp` cache.
- [ ] Test nhiều lần pass, submit đồng thời, replay request, transaction rollback và đáp án không bị lộ từ F-002.
- [ ] **Đóng F-011:** các lần làm lại/đồng thời chỉ tạo số award đúng policy và balance tái lập từ ledger.

### 11.2. MVP Gamification còn thiếu

- [ ] Chốt source XP tối thiểu: lesson complete, quiz pass, SRS review, daily learning; mọi source dùng event key idempotent.
- [ ] Chốt streak policy server-side theo timezone nghiệp vụ/user, grace rule, current/longest streak và backfill.
- [ ] Tạo badge rule có version; unlock idempotent và lưu bằng chứng event/threshold.
- [ ] Tạo API typed cho XP history, streak, badge catalog và user badges.
- [ ] Hook M3/M5 qua event/service, không tin event `completed` do browser tự khai báo.
- [ ] Frontend hiển thị XP/streak từ server, achievements/badges và trạng thái unlock có accessibility.
- [ ] Nếu làm leaderboard, xác định anti-abuse, privacy, time window, tie-break và query/index; đây không phải blocker MVP nếu chưa claim.
- [ ] Daily quest/virtual pet/comments đa ngôn ngữ giữ ở Planned nếu chưa có use case/test; không mở rộng trước ledger/streak/badge core.

### 11.3. DoD Module 8

- [ ] F-011 đóng; toàn bộ thay đổi XP có ledger và idempotency.
- [ ] Streak được tính server-side đúng timezone và event học đã xác minh.
- [ ] Ít nhất 5 badge có rule, unlock idempotent, API và UI.
- [ ] XP/streak/badge có test replay/concurrency/rollback và browser E2E cơ bản.
- [ ] Docs chỉ đánh dấu M8 MVP sau khi ledger + streak + badge backend/frontend/test cùng đạt.

## 12. Thứ tự triển khai khuyến nghị

### Wave 0 — 0–24 giờ: khoanh vùng

- [ ] Hoàn thành xử lý incident F-001 hoặc ít nhất revoke credential và chặn deploy.
- [ ] Nếu có môi trường người dùng thật, tạm chặn/giới hạn quiz entity endpoint và OAuth flow nguy hiểm.
- [ ] Không triển khai Production từ base profile hiện tại.

### Wave 1 — Blocker bảo mật

- [ ] Chốt kiến trúc session/OAuth và content-entitlement matrix.
- [ ] Sửa F-002, F-003, F-004, F-005, F-006, F-007, F-008, F-009, F-012, F-014.
- [ ] Viết negative authorization/session/browser tests song song, không đợi cuối wave.

### Wave 2 — Toàn vẹn nghiệp vụ và dữ liệu

- [ ] Sửa F-013 trước khi mở rộng migration/search.
- [ ] Sửa F-018/F-019 cho notebook/SRS.
- [ ] Xây payment state machine/idempotency F-010 trước khi mở khóa course trả phí.
- [ ] Xây XP ledger F-011 trước mọi badge/leaderboard/quest.
- [ ] Nâng audit delivery F-015 trước khi dựa vào log cho payment/admin security.
- [ ] Sửa dependency F-016 và AI atomicity F-017.

### Wave 3 — Contract, test, scale và Production

- [ ] Hoàn tất F-020/F-021/F-022/F-023/F-024/F-025/F-026.
- [ ] Chạy full PostgreSQL migration, integration, security matrix và browser E2E.
- [ ] Chạy staging readiness, monitoring, backup/restore và rollback drill.
- [ ] Delta audit và reconciliation tài liệu trước quyết định GO.

## 13. Release Gate: chuyển NO-GO thành GO

- [ ] **0 Critical** còn mở.
- [ ] Không còn High về bảo mật/toàn vẹn dữ liệu chưa sửa hoặc chưa có risk acceptance được người có thẩm quyền ký và ghi ngày hết hạn.
- [ ] F-001 có bằng chứng revoke/rotate/history cleanup/secret scan và fail-fast production.
- [ ] Ma trận authorization và session lifecycle có automated negative tests pass.
- [ ] PostgreSQL migration sạch `V1` → latest và upgrade `V7` → latest pass; dữ liệu radical/control character đúng.
- [ ] Browser E2E pass cho login/OAuth, entitlement course, learning/quiz/progress, dictionary/notebook/SRS.
- [ ] Dependency scan không còn High/Critical chưa xử lý.
- [ ] Staging chứng minh health/readiness, Swagger private, media private, monitoring/alert, backup restore và rollback.
- [ ] API không lộ entity/hash/answer/token/PII/exception nội bộ theo contract tests.
- [ ] M6/M8/Notification được mô tả đúng trạng thái; không claim feature chưa có code + UI + E2E.
- [ ] Claims reconciliation được chạy lại và tài liệu phản ánh code/runtime hiện tại.
- [ ] Có biên bản delta audit và người chịu trách nhiệm phát hành ký quyết định GO.

## 14. Theo dõi tiến độ đóng finding

| Finding | Owner đề xuất | PR/Ticket | Bằng chứng test/runtime | Trạng thái |
| --- | --- | --- | --- | --- |
| F-001 | Security/Platform |  | Backend 20/20 pass; config guard pass | In progress — provider/history pending |
| F-002 | M3 Backend |  |  | Open |
| F-003 | M1 Backend |  | Clean backend 38/38 pass, gồm 18 OAuth tests; forged/replayed callbacks rejected before token exchange | Code fixed — staging/review pending |
| F-004 | M1 + M2 + Frontend |  |  | Open |
| F-005 | M2 Backend |  |  | Open |
| F-006 | M2 + M6 Backend |  |  | Open |
| F-007 | M1 Backend/Frontend |  |  | Open |
| F-008 | M1 Backend/Frontend |  |  | Open |
| F-009 | M3 Backend |  |  | Open |
| F-010 | M6 + M2 Backend |  |  | Open |
| F-011 | M8 + M3 Backend |  |  | Open |
| F-012 | M2 + Platform |  |  | Open |
| F-013 | M4/Data |  |  | Open |
| F-014 | M1 + Platform |  |  | Open |
| F-015 | M7 + Platform |  |  | Open |
| F-016 | Platform/Frontend/Data |  |  | Open |
| F-017 | M2 Backend |  |  | Open |
| F-018 | M5 + M4 Backend |  |  | Open |
| F-019 | M5 Backend/Data |  |  | Open |
| F-020 | Backend/Frontend dùng chung |  |  | Open |
| F-021 | M2 Backend |  |  | Open |
| F-022 | QA/All modules |  |  | Open |
| F-023 | Platform/Ops |  |  | Open |
| F-024 | Frontend + M2 Media |  |  | Open |
| F-025 | M4/Data |  |  | Open |
| F-026 | M4/Data |  |  | Open |
