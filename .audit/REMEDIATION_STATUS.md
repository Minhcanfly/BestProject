# Bàn giao remediation — 2026-10-06

## Phạm vi phiên này

User yêu cầu đọc BestProject và triển khai tiếp công việc dở. Onboarding thực tế ở `AI check/` (README và 01–06); đường dẫn `AI đánh giá/` trong AGENTS.md đã cũ.

- Working tree đầu phiên đã có remediation F-001, hồ sơ audit và hai file bị xóa (`database/init_schema_v1.sql`, `diagram/sakuralearn_db@localhost.png`). Các thay đổi đó được giữ nguyên.
- Xác minh baseline F-001: `mvnw.cmd -B test` đạt 20/20. Không truy cập provider, thử credential, rewrite Git history hay đóng F-001.
- Tiếp tục Module 1 theo `V1_COMPLETION_CHECKLIST.md`: xử lý F-003 trước, không mở rộng refactor Phase 2.

## F-003 — Code đã sửa, chờ staging/review

- `HttpCookieOAuth2AuthorizationRequestRepository`: cookie chỉ chứa handle ngẫu nhiên 256-bit; request nằm trong bounded in-memory store, TTL 180 giây, capacity 10.000. Xóa nguyên tử trước token exchange, kiểm tra state và callback URI/provider, từ chối replay và handle không hợp lệ.
- `CookieUtils`: bỏ hoàn toàn native serialization/deserialization; cookie có HttpOnly/SameSite=Lax, Secure trên HTTPS hoặc prod, xóa với cùng thuộc tính/path.
- `OAuth2AuthenticationFailureHandler`: dọn state/cookie khi lỗi và trả mã lỗi cố định, không đưa exception nội bộ vào URL.
- `application-prod.yml`: bắt buộc Secure cho OAuth state cookie.
- Hai test class mới có 18 ca: round trip, giả mạo/serialized input, thiếu cookie, cookie browser khác, state sai/thiếu, provider/host/scheme/path sai, hết hạn, capacity/cleanup, cancel/replace, concurrent consume, cookie flags, callback filter trước token exchange, failure cleanup.
- Tests được Maven Surefire chạy tự động trong backend CI hiện tại (`mvn clean package` bao gồm phase test).

## Giới hạn và bước tiếp theo

1. Smoke Google OAuth thật trên staging HTTPS qua reverse proxy; xác nhận callback URI chính xác, Secure cookie, success/failure/replay. Chưa thử gọi Google trong phiên này.
2. Store chỉ nằm trong một process: restart làm mất login đang chờ; nhiều replica phải sticky routing hoặc dùng shared store có consume nguyên tử. Mỗi browser giữ một lần login đang chờ.
3. Review độc lập rồi mới đóng F-003 trong checklist; báo cáo audit gốc giữ nguyên như snapshot lịch sử.
4. Tiếp theo Module 1: F-007 (bỏ token/PII khỏi success redirect URL), F-008 (session/refresh/logout), phối hợp cookie/CSRF của F-004. Success redirect và Web Storage chưa được sửa trong phiên này.
5. F-001 vẫn chờ provider owner revoke/rotate và cleanup history theo `F001_INCIDENT_RECORD_VI.md`; không tự force-push/rewrite lịch sử.

## Xác minh cuối phiên

- `mvnw.cmd -B clean test`: **38 tests, 0 failures, 0 errors, 0 skipped; BUILD SUCCESS**.
- Lượt chạy incremental trước đó thiếu bean MapStruct `UserMapper`; clean build sinh lại mapper và context smoke test đã pass. Không sửa mapper hoặc business logic để né lỗi.
- `rg` trên `src/main/java` không còn `SerializationUtils`, `ObjectInputStream` hay `CookieUtils.serialize/deserialize`.
- `git diff --check`: pass.
- Chưa chạy Google OAuth/browser E2E hoặc kiểm chứng production/staging. F-003 chưa được đánh dấu đóng hoàn toàn; F-001 vẫn chờ bằng chứng provider/history.
