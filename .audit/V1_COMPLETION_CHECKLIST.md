# SakuraLearn V1 — Checklist hoàn thiện Module 1–8

Checklist này tập trung vào các vấn đề còn tồn tại của 8 Module ban đầu. Thực hiện theo thứ tự M1 → M5, sau đó M6 → M8.

## Nguyên tắc chung

- [ ] Không mở rộng sang Product Blueprint/vNext trước khi hoàn tất phạm vi V1.
- [ ] Security và data-integrity là blocker của module liên quan.
- [ ] Không sửa Flyway V1–V7; mọi thay đổi schema dùng migration forward.
- [ ] Không thêm Kafka, microservices, Kubernetes hoặc Elasticsearch chỉ để thử công nghệ.
- [ ] Docs phải phân biệt rõ `Implemented`, `Partial`, `Planned`.

## Module 1 — Authentication & User

- [ ] Viết integration tests cho login, refresh rotation, logout/revoke, reset password, email verify và role guard.
- [ ] Đồng bộ `AuthResponse` giữa FE/BE (`token`/`accessToken`).
- [ ] Logout frontend gọi server-side revoke, không chỉ xóa localStorage.
- [ ] Không đưa token/PII vào OAuth query parameter.
- [ ] Thay native Java deserialization trong OAuth state cookie bằng state/nonce an toàn.
- [ ] Rotate credential-shaped key đã từng xuất hiện; không log secret/password.
- [ ] Rate limit login/register/forgot-password/refresh và chống account enumeration.
- [ ] Refresh rotation, revoke khi reset password, access-token lifetime phù hợp.
- [ ] Dùng `VITE_API_BASE_URL`; loại hardcoded `localhost:8080`.
- [ ] Account locking và session revoke theo thiết bị nếu giữ trong V1.

**DoD:** Auth/RBAC không còn Critical finding và có test tự động cho các luồng chính.

## Module 2 — Course & Lesson Management

- [ ] Ownership check cho mọi mutation lesson/block/quiz/syllabus của teacher.
- [ ] Enforce publication/enrollment/access policy khi đọc course, lesson, block và media.
- [ ] Media có MIME allowlist, size limit, signed/private access và delete path nhất quán.
- [ ] Dùng DTO, không trả JPA entity hoặc field nội bộ/đáp án.
- [ ] Chuẩn hóa validation và error response.
- [ ] Không cho enroll thủ công paid course trước khi M6 sẵn sàng.
- [ ] Workflow draft → pending → admin approve → published.
- [ ] Kích hoạt AI Syllabus chỉ sau validation, timeout và không tự publish.
- [ ] Test ownership, publication, media access và teacher khác owner.

**DoD:** Teacher quản lý đúng quyền; student không đọc nội dung chưa publish/chưa enroll.

## Module 3 — Learning Experience & Progress

- [ ] Server tự xác định completion; không tin `completed` từ client.
- [ ] Sửa `completeLesson`/block completion không đánh dấu sai hoặc hàng loạt.
- [ ] Không lộ `correctAnswer`; chấm quiz ở server.
- [ ] Chống quiz repeat farming bằng attempt/reward policy và deduplication.
- [ ] Xử lý teacher sửa/xóa block khi student đang học.
- [ ] Kiểm tra enrollment/publication trước progress mutation.
- [ ] Chuẩn hóa Personal Notes, tránh trùng Notebook M4.
- [ ] Test resume Audio/Video, threshold, retry và concurrent progress.

**DoD:** Student học, pause, resume, hoàn thành và xem progress; completion không thể giả mạo.

## Module 4 — Knowledge Base / Dictionary / Notebook

- [ ] Sửa radical lookup mismatch `'7'`/`'一'`; xác nhận `radical_id` trên DB sạch.
- [ ] Chuẩn hóa U+001D trong V3 seed/import.
- [ ] Xóa custom notebook item không làm orphan SRS flashcard.
- [ ] Kiểm tra ownership custom item và DTO dictionary response.
- [ ] Tránh in-memory filtering/N+1 khi dữ liệu tăng.
- [ ] Đồng bộ search implementation với tài liệu; quyết định LIKE/ILIKE hay full-text.
- [ ] Test tra cứu chéo, custom item, notebook delete và radical trên DB sạch/nâng cấp.

**Không bắt buộc V1:** stroke animation nâng cao, handwriting recognition, Elasticsearch, community moderation.

**DoD:** Dữ liệu tra cứu đúng; radical không null do migration lỗi; xóa notebook không phá SRS.

## Module 5 — Review & Practice / SRS

- [ ] Sửa queue query, ordering/filtering; tránh in-memory/N+1.
- [ ] Xử lý lifecycle flashcard khi notebook/custom item xóa hoặc khôi phục.
- [ ] Server enforce daily limit, ownership và review eligibility.
- [ ] Không cho review/quiz lặp lại tạo XP vô hạn; phối hợp ledger M8.
- [ ] Test SM-2 interval/ease factor đủ 5 mức và timezone.
- [ ] Test due/new/empty queue, retry, concurrent review và ngày mới.
- [ ] Chỉ làm Smart Schedule/Deep mode sau khi queue correctness ổn định.

**DoD:** Review đúng lịch, giới hạn server-side, không orphan/duplicate/reward abuse.

## Module 6 — Monetization & Notification

- [ ] Đổi docs từ “Hoàn thiện” thành Planned cho đến khi có code.
- [ ] Payment state machine `PENDING → SUCCESS/FAILED/CANCELLED/REFUNDED`.
- [ ] Payment entity/service/controller và forward migration.
- [ ] VNPay sandbox, HMAC-SHA512, IPN verification.
- [ ] IPN kiểm tra amount/course/user; chỉ IPN thành công mới unlock enrollment.
- [ ] Idempotency duplicate IPN và amount mismatch.
- [ ] Return URL chỉ hiển thị kết quả.
- [ ] Notification API, email/in-app, payment result/history và bell UI.
- [ ] E2E: mua → IPN → enrollment → notification.

**DoD:** Payment sandbox end-to-end, idempotent và audit được.

## Module 7 — Administration & Analytics

- [ ] Tách docs Implemented/Partial/Planned.
- [ ] Admin-only cho user, audit, statistics, moderation và quick actions.
- [ ] Audit async giữ actor context, không swallow lỗi.
- [ ] Course moderation pending → approve/reject → published.
- [ ] Audit filter/pagination; dashboard registrations/courses/enrollments.
- [ ] Quick actions reset progress/manual unlock có audit.
- [ ] Test forbidden cho non-admin và audit query.

**DoD:** Admin vận hành được user, moderation, audit và statistics cơ bản.

## Module 8 — Gamification

- [ ] Đổi docs từ “Hoàn thiện” thành Partial/Planned.
- [ ] Tạo `XpTransaction` ledger và forward migration nếu cần.
- [ ] Mọi XP đi qua ledger; chống duplicate bằng unique event/idempotency.
- [ ] Streak server-side theo timezone `Asia/Ho_Chi_Minh`.
- [ ] `GamificationService`: award XP, update streak, check badge.
- [ ] Hook lesson, quiz và SRS sau khi M3/M5 đúng.
- [ ] Ít nhất 5 badge có rule, API và UI.
- [ ] Dashboard chỉ hiển thị server ledger; không là nguồn sự thật.

**DoD:** XP audit được, streak đúng ngày học thật, badge unlock đúng và không duplicate.

## Thứ tự release

1. M1 auth/security.
2. M2 ownership/content access.
3. M3 progress/quiz integrity.
4. M4 data/radical/notebook integrity.
5. M5 SRS correctness.
6. Regression M1–M5 trên DB sạch và DB nâng cấp V1–V7.
7. M6 payment/notification.
8. M7 admin/moderation.
9. M8 XP/streak/badges.
10. Cập nhật cross-reference, E2E và tag V1.

## Tham chiếu

- `.audit/FINAL_ENTERPRISE_AUDIT_REPORT.md`
- `.audit/FINDINGS_REGISTER.md`
- `docs/DOCS_CODE_CROSS_REFERENCE.md`
- `docs/MODULE_1_REMAINING_TASKS.md` … `docs/MODULE_8_REMAINING_TASKS.md`
- `HienTrang/PHASE_1_P0_STATUS.md`
