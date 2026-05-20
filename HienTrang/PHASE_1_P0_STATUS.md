# SakuraLearn Phase 1 P0 Status

Last updated: 2026-05-20

This document is the current truth map for Phase 1 P0. It does not replace the older roadmap documents; it records what is now verified in code after the P0 hardening pass, and includes the detailed audit findings that drove every decision.

---

## 🔍 Đối Chiếu Thực Tế & Nhận Diện Lệch Pha (Audit Findings — Tháng 5/2026)

Trước khi bắt đầu đợt P0, đã thực hiện rà soát toàn bộ `docs/`, `PV/`, `README` và đối chiếu trực tiếp với codebase. Kết luận PM/Senior Dev: **dự án đang ở trạng thái MVP core khá mạnh cho Module 1-5, nhưng tài liệu đang "lạc pha" với code ở Module 6-8**.

### Các điểm lệch pha nghiêm trọng đã phát hiện:

1.  **Backend Test Coverage bị thổi phồng**: Tài liệu cũ tuyên bố *"core service tests xong"*, nhưng thực tế chỉ tìm thấy **1 file context test khói** (`SakuralearnBackendApplicationTests.java`). Không có unit test nào cho SRS, Progress hay Ownership.
2.  **Module 6 (Payment/Notification) — "hoàn thiện" trên giấy**: Tài liệu đánh dấu hoàn thiện, nhưng codebase **không có** Payment Controller, Payment Service, VNPay Entity, hay Notification Controller/Service nào. Chỉ có schema cơ sở dữ liệu sơ khai.
3.  **Module 8 (Gamification) — mới ở mức nền**: Tài liệu ghi hoàn chỉnh, nhưng code chỉ có các trường `xp`, `currentStreak` thô ở Entity, logic cộng XP đơn giản ở quiz. Chưa có XP Event table, streak server-side policy, badge rules, hay daily quests.
4.  **Lỗi Encoding (Mojibake)**: Nhiều tài liệu tiếng Việt cũ bị lỗi font nghiêm trọng, làm giảm tính chuyên nghiệp khi demo/phỏng vấn.
5.  **README lạc hậu**: README gốc ghi Java 17 / Spring Boot 3.2, thực tế đã là Java 21 / Spring Boot 4.0.5.

### Quyết định chiến lược dựa trên audit:

> **Ưu tiên đúng nhất:** Chốt Phase 1 bằng cách ổn định, kiểm chứng, làm demo flow thật mượt, **thay vì mở rộng ngay sang distributed/Kafka/K8s/Elasticsearch**. Dự án đã đủ rộng; điểm yếu hiện tại là độ chắc, test coverage, tài liệu bị mojibake, và một số module được ghi là "hoàn thiện" trong docs nhưng code chưa phản ánh đầy đủ.

---

## ✅ P0 Completed (Đã hoàn thành dựa trên kết quả audit)

- SRS calculation was extracted from `NotebookService` into `SrsCalculatorService` (giải quyết code smell được phát hiện trong audit: logic tính toán nặng nằm sai class).
- SRS now has focused unit tests for first review, second review, later review, failed review reset, ease-factor floor, and invalid quality (giải quyết audit finding #1: test coverage bị thổi phồng).
- Notebook folder access now checks ownership before reading folder items, adding an item to a folder, adding custom items, and filtering SRS cards by folder.
- Flashcard review ownership now returns a dedicated forbidden error instead of a generic runtime failure.
- Learning progress now requires course enrollment before updating access, block progress, lesson completion, block progress reads, and completed lesson reads.
- Negative media resume timestamps are rejected.
- User-generated review content, notebook notes, folder names, folder descriptions, and custom notebook fields are sanitized with a shared `TextSanitizer`.
- Backend test profile no longer tries to auto-create a PostgreSQL-specific schema in H2.
- Maven wrapper was patched so it runs correctly on the current PowerShell environment.
- Documentation encoding standardized to UTF-8 (giải quyết audit finding #4).
- README replaced with accurate version info (giải quyết audit finding #5).

---

## Verified Tests

Backend command:

```powershell
cd sakuralearn-backend
.\mvnw.cmd test
```

Result:

```text
Tests run: 12, Failures: 0, Errors: 0, Skipped: 0
```

Covered areas:

- Spring context smoke test.
- SRS calculator logic (6 scenarios: first/second/later review, failed reset, ease-factor floor, invalid quality).
- Text sanitizer.
- Notebook ownership checks.
- Progress enrollment guard and course progress recalculation.

---

## Phase 1 Truth Map

### Hiện trạng thực tế của từng Module (Đối chiếu docs ↔ code)

Module 1 — Auth and Identity:

- Implemented: Auth/RBAC/JWT/email/reset/OAuth hooks.
- P0 status: stable enough for MVP demo.
- Remaining after P0: broader auth integration tests and production token-storage hardening (chuyển JWT từ localStorage sang HttpOnly Secure Cookie).

Module 2 — Course and Lesson Management:

- Implemented: core CRUD, lesson blocks, publishing basics, AI syllabus backend, review/rating course (cả backend lẫn frontend).
- P0 status: usable for demo.
- Remaining after P0: approval workflow `DRAFT -> PENDING -> PUBLISHED` and AI syllabus frontend UI (backend đã sẵn sàng).

Module 3 — Learning Experience and Progress:

- Implemented: learning view, block progress, resume timestamp, lesson/course progress, quiz, personal notes.
- P0 status: hardened with enrollment checks and progress tests.
- Remaining after P0: richer personal notes UI (Markdown editor), video/audio completion threshold policy (> 85%).

Module 4 — Dictionary and Notebook:

- Implemented: dictionary browsing/search (Kanji/Vocab/Grammar), notebook folders, saved items, romaji-to-hiragana conversion.
- P0 status: notebook folder ownership is now enforced.
- Remaining after P0: batch hydration to reduce N+1 queries, better search indexing (PostgreSQL GIN index trước, Elasticsearch sau).

Module 5 — SRS:

- Implemented: SM-2 style review, daily limit, review UI.
- P0 status: calculator extracted and tested with 6 unit test scenarios.
- Remaining after P0: optional FSRS upgrade and review insights (heatmap, forgetting curve).

Module 6 — Monetization and Notification:

- **⚠️ Cảnh báo lệch pha**: Tài liệu cũ đánh dấu "hoàn thiện" nhưng code **chưa có implementation**.
- Actual status: Chỉ có schema nền/planned. Không tìm thấy Payment Controller/Service/Entity, VNPay integration, hay Notification Service trong codebase.
- P0 status: **not part of Phase 1 release gate**.
- Next step: Thiết kế Payment State Machine + Idempotency Key (Phase 2 Design), implement VNPay sandbox + IPN webhook + auto enrollment unlock (Phase 3 Code).

Module 7 — Administration and Analytics:

- Implemented: user management (AdminUserController), dashboard statistics, audit logging foundation (AuditLogService).
- P0 status: enough for basic admin demo, not full analytics.
- Next step: admin audit log viewer UI, quick actions, and course moderation.

Module 8 — Gamification:

- **⚠️ Cảnh báo lệch pha**: Tài liệu ghi hoàn chỉnh nhưng chỉ ở mức nền.
- Actual status: Có trường `xp`, `currentStreak` ở Entity, UI hiển thị XP/streak, và quiz cộng XP. Chưa có XP event table, streak server-side policy, badge rules, hay daily quest system.
- P0 status: **not a Phase 1 blocker**.
- Next step: Define XP events, streak server policy, badge rules, and daily quests (Phase 3).

---

## Release Recommendation

Phase 1 can move toward beta demo after one manual demo pass:

1. Login.
2. Open course list.
3. Enroll in a course.
4. Learn a lesson.
5. Save progress with resume timestamp.
6. Search dictionary.
7. Save item to notebook.
8. Review item through SRS.

> [!IMPORTANT]
> **Do not market Module 6 or Module 8 as complete** until their code-level workflows exist. Tài liệu đã được sửa để phản ánh đúng trạng thái này.

---

## Khuyến Nghị Quyết Định (Tóm tắt từ Audit)

Không nên bắt đầu Phase 3/4 ngay. Các Release Blockers của Phase 1 đã được giải quyết trong đợt P0 này. Bước tiếp theo là **Phase 2 — Professionalization**: chuẩn hóa API Contract (`ApiResponse<T>`), áp dụng Design Patterns (Strategy, Factory), và nâng cấp chất lượng code trước khi mở rộng sang Module 6-8.

Sau khi Phase 2 xong, dự án sẽ thuyết phục hơn nhiều so với việc vội vàng thêm VNPay/Kafka/K8s nhưng core chưa được kiểm chứng.
