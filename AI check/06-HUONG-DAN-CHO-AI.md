# 06 — Hướng dẫn cho AI / Agent khi làm việc trên repo

## Trước khi sửa code

1. Đã đọc [01](./01-TONG-QUAN-DU-AN.md) → [05](./05-BACKLOG-UU-TIEN.md) trong thư mục này.
2. Biết module đang đụng thuộc M1–M8 và **M6/M8 chưa có implementation**.
3. Nếu sửa SQL/seed: đọc [`docs/development_guidelines.md`](../docs/development_guidelines.md).

## Quy tắc bắt buộc

### Flyway & dữ liệu

- **Không sửa** nội dung `V1`–`V7` đã deploy — chỉ thêm `V8__...sql` forward.
- **Không** gộp seed vào V1.
- ETL: không đoán index cột Anki — dùng heuristic ngôn ngữ (`isJapanese()`).
- Sau regen seed: soi 5 dòng `INSERT` đầu.

### Trung thực trạng thái

- Không viết trong PR/commit rằng Payment/Notification/Badge “đã xong” nếu chưa có controller + UI.
- Không trích `00_MASTER_SPEC` hoặc `PV/` làm bằng chứng feature đã implement.

### Scope thay đổi

- Sửa **tối thiểu** đúng module được yêu cầu — không refactor lan sang ApiResponse/Kafka trừ khi task yêu cầu.
- Khớp convention hiện có: Lombok, MapStruct, `@PreAuthorize`, DTO không expose entity.

### Frontend

- Mọi HTTP qua `services/api.js` hoặc `*Service.js` — **không** `fetch('http://localhost:8080/...')`.
- Dùng `VITE_API_BASE_URL` cho OAuth và API.

### Bảo mật

- Không commit secret thật vào `application.yml`.
- Cân nhắc ownership (notebook folder, progress, flashcard) khi thêm endpoint.

## Khi user hỏi “dự án này có gì?”

Trả lời theo template:

1. SakuraLearn = LMS + từ điển + SRS cho người Việt học JP.
2. **Đã code:** M1–M5 + admin cơ bản.
3. **Chưa code:** M6 payment, M8 gamification đầy đủ (chỉ schema).
4. **Rủi ro đã biết:** test mỏng, radical FK, media public, CI không test.

## Khi user yêu cầu implement feature

| Feature | Kiểm tra trước |
|---------|----------------|
| VNPay | Có entity/service chưa? → chưa, bắt đầu từ `MODULE_6_REMAINING_TASKS` |
| Badge/Quest | → `MODULE_8_REMAINING_TASKS` |
| Tailwind | Project dùng **custom CSS** — không thêm Tailwind trừ khi user đổi stack |
| ApiResponse wrapper | Phase 2 — hiện API trả DTO trực tiếp |

## Cập nhật tài liệu sau khi làm xong

1. Tick `[x]` trong `docs/MODULE_*_REMAINING_TASKS.md` hoặc task file liên quan.
2. Nếu đổi trạng thái module: cập nhật `docs/DOCS_CODE_CROSS_REFERENCE.md` (hoặc báo user).
3. Thay đổi lớn về architecture: cân nhắc cập nhật file `02-HIEN-TRANG-CODE.md` trong gói này.

## Prompt mẫu (copy vào Cursor Rules)

```text
Project: SakuraLearn (Japanese LMS). Before coding, read "AI đánh giá/README.md" files 01-06.
Truth order: code > HienTrang/PHASE_1_P0_STATUS.md > docs/*_REMAINING_TASKS.md > 00_MASTER_SPEC (vision only).
M6 Payment and M8 Gamification are NOT implemented (DB schema only).
Never edit applied Flyway versions; add V8+ only. No raw fetch to localhost — use VITE_API_BASE_URL.
```

## Liên hệ với repo khác

| Không nhầm với | Ghi chú |
|----------------|---------|
| `PV/` | Pitch phỏng vấn |
| `playbook/ApiResponse` | Target pattern, chưa trong code |
| `database/init_schema_v1.sql` | Reference; Flyway V1 là runtime truth |
