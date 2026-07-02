# 📝 Bảo trì Tài liệu — Công việc còn lại

> Sinh ra từ đối chiếu docs ↔ code (2026-05-23).  
> **Mục tiêu:** Docs phản ánh đúng code; aspirational content được gắn nhãn rõ.

## 1. Sửa lệch pha nghiêm trọng (ưu tiên cao)

- [x] **`MODULE_6_MONETIZATION_NOTIFICATION.md`:** Đổi bảng §4 + banner (2026-05-23).
- [x] **`MODULE_8_GAMIFICATION_ENHANCEMENT.md`:** Banner trạng thái thực tế (2026-05-23).
- [x] **`00_MASTER_SPECIFICATION.md`:** Banner vision vs MVP (2026-05-23).
- [ ] **`01_TECHNICAL_STACK_AND_STANDARDS.md`:** Spring Boot **4.0.5**; frontend **custom CSS** (bỏ Tailwind nếu không dùng).
- [x] **`README.md`:** Link Phase 1, V6/V7 migrations, `docs/README.md` (2026-05-23).

## 2. Cấu trúc & chỉ mục

- [x] **`docs/README.md`** — chỉ mục tài liệu + backlog (đã tạo 2026-05-23).
- [x] **`docs/DOCS_CODE_CROSS_REFERENCE.md`** — truth map (đã tạo).
- [ ] **Root README:** Mục "Documentation" trỏ tới `docs/README.md`.
- [ ] **`playbook/README.md`:** Đổi link `file:///d:/...` → relative `./01_backend_standards.md`.

## 3. Đồng bộ module remaining tasks

- [x] Tạo `MODULE_1`, `6`, `7`, `8` remaining tasks (thiếu trước đây).
- [x] **`MODULE_4_REMAINING_TASKS.md`:** Thêm mục radical FK (2026-05-23).
- [ ] Tránh duplicate: `MODULE_1_AUTHENTICATION_USER.md` § Remaining — trỏ sang `MODULE_1_REMAINING_TASKS.md` hoặc gộp một nơi.

## 4. Encoding & ngôn ngữ

- [ ] Rà soát file `.md` tiếng Việt còn mojibake (grep `Ã`, `á»`).
- [ ] `FRONTEND_DESIGN_PACKAGE_STYLE_GUIDE.md` — thêm dấu tiếng Việt hoặc chuyển sang English nhất quán.

## 5. Portfolio vs product (tách vai trò)

- [ ] **`PV/`:** Thêm `PV/README.md` — "Tài liệu phỏng vấn; không dùng làm spec triển khai".
- [ ] **`HienTrang/`:** Ghi chú `PHASE_1_P0_STATUS` là operational truth map.

## 6. Quy trình duy trì

- [ ] Mỗi PR lớn: tick ít nhất một mục trong `*_REMAINING_TASKS.md` hoặc cập nhật `DOCS_CODE_CROSS_REFERENCE.md`.
- [ ] Release demo: kiểm tra `PHASE_1_P0_STATUS` § Release Recommendation — không claim M6/M8 complete.

## 7. Tiêu chí "Docs đã khớp code"

- [ ] Không còn dòng "✅ Hoàn thiện" cho feature không có class Java/JSX tương ứng.
- [ ] Stack versions khớp `pom.xml` / `package.json`.
- [ ] Mọi module 1–8 có file `MODULE_*_REMAINING_TASKS.md`.
- [ ] Một người mới vào đọc `docs/README.md` và biết việc cần làm tiếp theo.
