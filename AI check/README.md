# 🤖 SakuraLearn — Gói ngữ cảnh cho AI / IDE

> **Mục đích:** Bất kỳ Chat AI, Copilot, hay IDE agent nào chỉ cần đọc **thư mục này** (~15 phút) để nắm **~90%** dự án — còn lại là đọc code chi tiết khi implement.

**Cập nhật:** 2026-05-23 · **Repo:** `BestProject` / SakuraLearn

---

## ⚡ Đọc theo thứ tự (bắt buộc)

| # | File | Thời gian | Nội dung |
|---|------|-----------|----------|
| 1 | **[01-TONG-QUAN-DU-AN.md](./01-TONG-QUAN-DU-AN.md)** | 3 phút | SakuraLearn là gì, stack, cấu trúc repo, chạy local |
| 2 | **[02-HIEN-TRANG-CODE.md](./02-HIEN-TRANG-CODE.md)** | 5 phút | Module nào đã code, điểm mạnh/yếu, bug đã biết |
| 3 | **[03-HIEN-TRANG-DOCS.md](./03-HIEN-TRANG-DOCS.md)** | 3 phút | Docs nào tin được, docs nào lệch code |
| 4 | **[04-KIEN-TRUC-NHANH.md](./04-KIEN-TRUC-NHANH.md)** | 4 phút | API, package, file quan trọng, luồng demo |
| 5 | **[05-BACKLOG-UU-TIEN.md](./05-BACKLOG-UU-TIEN.md)** | 2 phút | Việc P0/P1 — làm gì trước |
| 6 | **[06-HUONG-DAN-CHO-AI.md](./06-HUONG-DAN-CHO-AI.md)** | 2 phút | Quy tắc khi sửa repo (Flyway, M6/M8, v.v.) |

**Tùy chọn (1 file):** [07-TRUTH-MAP-TOM-TAT.md](./07-TRUTH-MAP-TOM-TAT.md) — bảng docs ↔ code rút gọn.

---

## 🎯 Một câu mô tả dự án

**SakuraLearn** = nền tảng học tiếng Nhật (JLPT) cho người Việt: **LMS** + **từ điển** (~20k+ từ) + **sổ tay** + **SRS (SM-2)** + admin; monolith **React 19 + Spring Boot 4 + PostgreSQL**.

---

## ✅ Phase 1 release (cái gì “xong” thật)

| Có trong code | Chưa có / chỉ DB |
|---------------|------------------|
| M1 Auth, M2 Course, M3 Learning, M4 Dictionary, M5 SRS | M6 Payment, Notification |
| M7 Admin cơ bản (user, audit, stats) | M8 Gamification đầy đủ |
| MinIO, Mailpit, Flyway V1–V7 | Redis/Kafka trong pom **không dùng** |

**Không được marketing** thanh toán / gamification hoàn chỉnh cho đến khi có Java + UI tương ứng.

---

## 📂 Đọc sâu hơn (khi cần implement)

| Nhu cầu | Đường dẫn |
|---------|-----------|
| Backlog đầy đủ theo module | [`docs/README.md`](../docs/README.md) |
| Bảng docs ↔ code chi tiết | [`docs/DOCS_CODE_CROSS_REFERENCE.md`](../docs/DOCS_CODE_CROSS_REFERENCE.md) |
| Truth map Phase 1 | [`HienTrang/PHASE_1_P0_STATUS.md`](../HienTrang/PHASE_1_P0_STATUS.md) |
| Onboarding dev | [`README.md`](../README.md), [`QUICK_START.md`](../QUICK_START.md) |
| Flyway / ETL (bắt buộc trước khi sửa SQL) | [`docs/development_guidelines.md`](../docs/development_guidelines.md) |
| Portfolio / phỏng vấn | [`PV/`](../PV/) — **không** dùng làm spec triển khai |

---

## 🔧 Đã cấu hình trong repo (Cursor)

| File | Tác dụng |
|------|----------|
| [`.cursorignore`](../.cursorignore) | Loại seed SQL lớn, `node_modules`, `data/raw` khỏi index/context |
| [`.cursor/rules/sakuralearn-context.mdc`](../.cursor/rules/sakuralearn-context.mdc) | Rule ngắn: ưu tiên `@AI đánh giá/`, tiết kiệm token |
| [`AGENTS.md`](../AGENTS.md) | Hướng dẫn agent ở root (GitHub/Cursor đọc tự động) |

## 🔧 Gợi ý thêm (tùy chọn)

**Cursor / Windsurf / Copilot:** Có thể bổ sung prompt:

```text
Trước khi sửa SakuraLearn, đọc thư mục "AI đánh giá/" theo README.md (file 01→06).
Ưu tiên truth: code > HienTrang/PHASE_1_P0_STATUS.md > docs/*_REMAINING_TASKS.md > 00_MASTER_SPEC (vision only).
Module 6–8 chưa implement — đừng giả định Payment/Notification/Badge đã có.
Không sửa file Flyway đã migrate (V1–V7); chỉ thêm V8+.
```

---

## 📁 Cấu trúc thư mục này

```text
AI đánh giá/
├── README.md                 ← BẠN ĐANG Ở ĐÂY
├── 01-TONG-QUAN-DU-AN.md
├── 02-HIEN-TRANG-CODE.md
├── 03-HIEN-TRANG-DOCS.md
├── 04-KIEN-TRUC-NHANH.md
├── 05-BACKLOG-UU-TIEN.md
├── 06-HUONG-DAN-CHO-AI.md
└── 07-TRUTH-MAP-TOM-TAT.md
```

*Nội dung từ các bản nháp cũ (`Hiện trạng Project`, `Các docs hiện tại`) đã được chuẩn hóa thành bộ `.md` có số thứ tự ở trên.*
