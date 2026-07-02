# 07 — Truth map tóm tắt (docs ↔ code)

> Bản đầy đủ: [`docs/DOCS_CODE_CROSS_REFERENCE.md`](../docs/DOCS_CODE_CROSS_REFERENCE.md)

## Module

| Mod | Code | Docs tin được |
|-----|------|---------------|
| M1 | ✅ MVP | `MODULE_1_*`, README |
| M2 | ✅ MVP | `MODULE_2_*` |
| M3 | ✅ MVP | `MODULE_3_*` |
| M4 | ✅ + bug FK | `MODULE_4_*`, `DATA_AND_MIGRATION_TASKS` |
| M5 | ✅ MVP | `MODULE_5_*` |
| M6 | ❌ schema | `MODULE_6_REMAINING_TASKS` (spec = design only) |
| M7 | 🟡 | `MODULE_7_REMAINING_TASKS` |
| M8 | ❌ partial XP | `MODULE_8_REMAINING_TASKS` |

## Stack claims

| Claim | Đúng? |
|-------|-------|
| Java 21, SB 4.0.5, React 19 | ✅ |
| Custom CSS (not Tailwind) | ✅ |
| Flyway V1–V7 | ✅ |
| Redis/Kafka used in app | ❌ configured only |
| ApiResponse<T> everywhere | ❌ Phase 2 target |
| 12 backend tests | ✅ |
| CI runs tests | ❌ package only |

## Demo flow

| Step | Works? |
|------|--------|
| Login / OAuth | ✅ |
| Course / learn / progress | ✅ |
| Dictionary / notebook / SRS | ✅ |
| Pay VNPay | ❌ |

## File task theo chủ đề

| Chủ đề | Path |
|--------|------|
| Data / Flyway | `docs/DATA_AND_MIGRATION_TASKS.md` |
| CI / Docker | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` |
| Frontend | `docs/FRONTEND_REMAINING_TASKS.md` |
| Sửa docs | `docs/DOCS_MAINTENANCE_TASKS.md` |
| Stabilization | `HienTrang/STABILIZATION_AND_REFACTORING_TASKS.md` |
