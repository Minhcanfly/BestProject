# 03 — Hiện trạng Tài liệu

> ~39 file markdown rải `docs/`, `playbook/`, `HienTrang/`, `PV/`, root.  
> Đã bổ sung `docs/README.md` + `docs/DOCS_CODE_CROSS_REFERENCE.md` (2026-05-23).

## Nguồn chân lý (thứ tự ưu tiên)

1. **Code** (`sakuralearn-backend`, `sakuralearn-frontend`)
2. **`HienTrang/PHASE_1_P0_STATUS.md`**
3. **`docs/MODULE_*_REMAINING_TASKS.md`** + task files xuyên suốt
4. **`docs/00_MASTER_SPECIFICATION.md`** — vision / roadmap (**không** = đã code)
5. **`PV/`**, `GRAND_ROADMAP_*` — portfolio

## Đánh giá nhanh từng vùng

| Vùng | Điểm /5 | Vai trò |
|------|---------|---------|
| `README.md` + `QUICK_START.md` | 4.5 | Onboarding tốt, gần code |
| `docs/` (spec + backlog) | 4 | Đủ sâu; dùng `docs/README.md` làm index |
| `development_guidelines.md` | 5 | **Bắt buộc** trước Flyway/ETL |
| `HienTrang/PHASE_1_P0_STATUS.md` | 4.5 | Truth map Phase 1 |
| `playbook/` | 3.5 | Hay nhưng `ApiResponse<T>` chưa có trong code |
| `00_MASTER_SPEC` | 3 | Vision tốt; dễ hiểu nhầm M6–M8 |
| `PV/` | N/A | Phỏng vấn — không spec deploy |

## Lệch pha docs ↔ code (quan trọng)

| Docs nói | Thực tế | Trạng thái sửa |
|----------|---------|----------------|
| `MODULE_6` §4: Payment ✅ | Không Java | ✅ Banner + Planned (2026-05-23) |
| `MODULE_8`: gamification đầy đủ | Chỉ cột User + quiz XP | ✅ Banner |
| `01_TECHNICAL_STACK`: Tailwind, SB 3.4 | Custom CSS, SB 4.0.5 | ⏳ `DOCS_MAINTENANCE_TASKS` |
| Playbook: `ApiResponse<T>` bắt buộc | Chưa implement | Phase 2 |
| `00_MASTER_SPEC`: M6–M8 như đã có | Schema only | ✅ Banner vision |

## Cấu trúc docs sau khi chuẩn hóa

```text
docs/
├── README.md                      # Index + link backlog
├── DOCS_CODE_CROSS_REFERENCE.md   # Bảng truth đầy đủ
├── 00_MASTER_SPECIFICATION.md     # Vision (có banner)
├── 01_TECHNICAL_STACK_....md
├── MODULE_1..8_*.md               # Deep dive
├── MODULE_*_REMAINING_TASKS.md    # M1–M8 đủ (M6–8 mới)
├── DATA_AND_MIGRATION_TASKS.md
├── INFRASTRUCTURE_AND_CI_TASKS.md
├── FRONTEND_REMAINING_TASKS.md
└── DOCS_MAINTENANCE_TASKS.md
```

## Đọc docs khi làm việc

| Việc | Đọc |
|------|-----|
| Onboarding nhanh (AI) | **`AI đánh giá/`** (thư mục này) |
| Implement module X | `docs/MODULE_X_*.md` + `MODULE_X_REMAINING_TASKS.md` |
| Sửa migration / seed | `development_guidelines.md` + `DATA_AND_MIGRATION_TASKS.md` |
| PR / chuẩn code | `playbook/` (ghi nhớ target vs current) |
| Demo / release | `HienTrang/PHASE_1_P0_STATUS.md` |

## Kết luận

Docs **đủ rộng** cho LMS portfolio; yếu điểm là **phân tầng truth** (đã cải thiện bằng cross-reference + task files). AI/agent **không nên** chỉ đọc `00_MASTER_SPEC` hoặc `PV/` khi estimate trạng thái triển khai.

Bảng rút gọn: [07-TRUTH-MAP-TOM-TAT.md](./07-TRUTH-MAP-TOM-TAT.md).
