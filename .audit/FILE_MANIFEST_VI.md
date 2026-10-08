# Danh Mục File (File Manifest) — Giai đoạn 1

Ngày kiểm thử: 2026-08-03  
Snapshot repository: `develop@2175947f481493bcdbd1fb9c45c50a9755a52b85`

## Độ bao phủ (Coverage)

- Các file được theo dõi (Tracked files): **401**
- Các file ngoài phạm vi Git thuộc phạm vi audit bổ sung: **2**
- Đọc ĐẦY ĐỦ (FULL): **358**
- Xem theo MỤC TIÊU (TARGETED): **35**
- Chỉ đọc METADATA (METADATA_ONLY): **7**
- BỎ QUA (SKIPPED): **0**
- KHÔNG THỂ ĐỌC (UNREADABLE): **1**
- Độ bao phủ danh mục tổng thể: **99.75%** (400/401; tất cả các mức trừ SKIPPED/UNREADABLE)
- Tỷ lệ đọc đầy đủ nội dung: **89.28%**
- Độ bao phủ ĐẦY ĐỦ các file quan trọng: **100.00%** (105/105; ngoại trừ cache sinh ra và CSS giao diện auth)

File được theo dõi duy nhất không thể đọc là ảnh ERD bị xóa từ trước `diagram/sakuralearn_db@localhost.png`. Cache Vite sinh ra, lock/data maps, CSS và static assets sử dụng mức đọc thấp hơn được phép theo AuditMaster §3.2; tất cả các file security/business/database/API/test/CI đều được đọc ĐẦY ĐỦ (FULL).

| File | Phân loại | Số dòng | Số byte | Mức độ đọc | Trạng thái | Lý do |
| --- | --- | ---: | ---: | --- | --- | --- |
| `.cursor/rules/sakuralearn-context.mdc` | Tài liệu | 14 | 730 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `.cursorignore` | Cấu hình | 36 | 805 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `.env.example` | Cấu hình | 33 | 913 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `.github/workflows/backend-ci.yml` | CI/CD | 58 | 1452 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `.github/workflows/frontend-ci.yml` | CI/CD | 36 | 805 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `.gitignore` | Cấu hình | 50 | 576 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AGENTS.md` | Tài liệu | 14 | 926 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/01-TONG-QUAN-DU-AN.md` | Tài liệu | 77 | 3289 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/02-HIEN-TRANG-CODE.md` | Tài liệu | 119 | 4212 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/03-HIEN-TRANG-DOCS.md` | Tài liệu | 66 | 3017 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/04-KIEN-TRUC-NHANH.md` | Tài liệu | 117 | 3955 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/05-BACKLOG-UU-TIEN.md` | Tài liệu | 50 | 2416 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/06-HUONG-DAN-CHO-AI.md` | Tài liệu | 77 | 3342 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/07-TRUTH-MAP-TOM-TAT.md` | Tài liệu | 47 | 1434 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/README.md` | Tài liệu | 90 | 4236 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AI check/SakuraLearn_Interview_Preparation.md` | Tài liệu | 917 | 39970 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `HienTrang/BanCu.txt` | Tài liệu | 103 | 5288 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `HienTrang/COMPREHENSIVE_UPGRADE_PLAN_MODULES_1-5.md` | Tài liệu | 145 | 9029 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `HienTrang/GRAND_ROADMAP_V4.md` | Tài liệu | 81 | 6753 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `HienTrang/PHASE_1_P0_STATUS.md` | Tài liệu | 146 | 8334 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `HienTrang/PHASE_2_STEP_1_PLAN.md` | Tài liệu | 470 | 20326 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | Tài liệu | 357 | 15174 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `HienTrang/STABILIZATION_AND_REFACTORING_TASKS.md` | Tài liệu | 99 | 7684 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `HienTrang/Task.txt` | Tài liệu | 53 | 3157 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/Engineering_Review_Honest.md` | Tài liệu | 70 | 5388 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/Interview_Pitch_Summaries.md` | Tài liệu | 39 | 5068 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/Module1_Auth_Identity.md` | Tài liệu | 16 | 1327 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/Module2_3_LMS_Progress.md` | Tài liệu | 18 | 1407 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/Module4_Knowledge_Notebook.md` | Tài liệu | 16 | 1385 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/Module5_SRS_Engine.md` | Tài liệu | 17 | 1380 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/Overview_Architecture.md` | Tài liệu | 14 | 1274 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/Project_Interview_Answers_Amigo.md` | Tài liệu | 332 | 23038 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `PV/SakuraLearn_Interview_DeepDive.md` | Tài liệu | 295 | 21943 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `QUICK_START.md` | Tài liệu | 46 | 1341 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `README.md` | Tài liệu | 307 | 12705 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/check_levels.js` | Script | 20 | 556 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/check_tags.js` | Script | 25 | 889 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/consolidate_grammar.js` | Script | 118 | 5201 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/consolidate_kanji.js` | Script | 131 | 6246 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/consolidate_vocab.js` | Script | 204 | 8639 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/debug_kanji.js` | Script | 19 | 674 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/extract_grammar.js` | Script | 45 | 1855 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/generate_seeds.js` | Script | 107 | 4562 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/jlpt_kanji_map.json` | Phụ thuộc/Dữ liệu | 2138 | 34179 | TARGETED | ĐÃ XEM XÉT | Cấu trúc phụ thuộc/dữ liệu và các phiên bản/bản phân phối liên quan đã kiểm tra |
| `data/scripts/package-lock.json` | Phụ thuộc/Dữ liệu | 129 | 4448 | TARGETED | ĐÃ XEM XÉT | Cấu trúc phụ thuộc/dữ liệu và các phiên bản/bản phân phối liên quan đã kiểm tra |
| `data/scripts/package.json` | Phụ thuộc/Dữ liệu | 19 | 394 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/parse_kanji.js` | Script | 87 | 3175 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/parse_vocab.js` | Script | 39 | 1554 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/peek_anki.js` | Script | 41 | 1338 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/peek_grammar.js` | Script | 16 | 661 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/peek_vocab_anki.js` | Script | 29 | 1125 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/rebalance_master.js` | Script | 74 | 3167 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/restore_vocab.js` | Script | 63 | 3026 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/search_anki.js` | Script | 27 | 988 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/update_kanji_vi.js` | Script | 37 | 1518 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `data/scripts/update_vocab_vi.js` | Script | 40 | 1754 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `database/init_schema_v1.sql` | Cơ sở dữ liệu | 631 | 31865 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `diagram/sakuralearn_db.png` | Binary | — | 2218853 | FULL | ĐÃ XEM XÉT | Sơ đồ ERD được kiểm tra trực quan |
| `diagram/sakuralearn_db@localhost.png` | Binary | — | — | UNREADABLE | KHÔNG THỂ ĐỌC | Đã bị xóa từ trước; nội dung không có sẵn |
| `docker-compose.yml` | Cấu hình | 77 | 2424 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/00_MASTER_SPECIFICATION.md` | Tài liệu | 179 | 13276 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/01_TECHNICAL_STACK_AND_STANDARDS.md` | Tài liệu | 130 | 9176 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/DATA_AND_MIGRATION_TASKS.md` | Tài liệu | 42 | 2497 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/DOCS_CODE_CROSS_REFERENCE.md` | Tài liệu | 113 | 6928 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/DOCS_MAINTENANCE_TASKS.md` | Tài liệu | 47 | 2564 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/FRONTEND_DESIGN_PACKAGE_STYLE_GUIDE.md` | Tài liệu | 118 | 3997 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/FRONTEND_REMAINING_TASKS.md` | Tài liệu | 49 | 2731 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/INFRASTRUCTURE_AND_CI_TASKS.md` | Tài liệu | 44 | 2031 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_1_AUTHENTICATION_USER.md` | Tài liệu | 55 | 3385 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_1_REMAINING_TASKS.md` | Tài liệu | 35 | 2160 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_2_COURSE_LESSON_MANAGEMENT.md` | Tài liệu | 110 | 8411 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_2_REMAINING_TASKS.md` | Tài liệu | 20 | 1728 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_3_LEARNING_EXPERIENCE_PROGRESS.md` | Tài liệu | 88 | 6398 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_3_REMAINING_TASKS.md` | Tài liệu | 18 | 1732 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_4_KNOWLEDGE_BASE_DICTIONARY.md` | Tài liệu | 109 | 6723 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_4_REMAINING_TASKS.md` | Tài liệu | 20 | 2070 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_5_REMAINING_TASKS.md` | Tài liệu | 17 | 1563 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_5_REVIEW_PRACTICE_SRS.md` | Tài liệu | 91 | 5625 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_6_MONETIZATION_NOTIFICATION.md` | Tài liệu | 90 | 5961 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_6_REMAINING_TASKS.md` | Tài liệu | 52 | 3016 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_7_ADMINISTRATION_ANALYTICS.md` | Tài liệu | 91 | 5266 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_7_REMAINING_TASKS.md` | Tài liệu | 45 | 2073 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_8_GAMIFICATION_ENHANCEMENT.md` | Tài liệu | 97 | 5813 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/MODULE_8_REMAINING_TASKS.md` | Tài liệu | 50 | 2433 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/README.md` | Tài liệu | 50 | 3473 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `docs/development_guidelines.md` | Tài liệu | 43 | 4312 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `playbook/01_backend_standards.md` | Tài liệu | 91 | 4598 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `playbook/02_frontend_standards.md` | Tài liệu | 68 | 3897 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `playbook/03_database_standards.md` | Tài liệu | 61 | 4236 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `playbook/04_infrastructure_ops.md` | Tài liệu | 53 | 3598 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `playbook/README.md` | Tài liệu | 54 | 2929 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/.gitattributes` | Backend | 2 | 38 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/.gitignore` | Backend | 33 | 394 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/.mvn/wrapper/maven-wrapper.properties` | Cấu hình/Phụ thuộc | 3 | 168 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/mvnw` | Cấu hình/Phụ thuộc | 295 | 11790 | TARGETED | ĐÃ XEM XÉT | Script Maven wrapper tiêu chuẩn; kiểm tra metadata và cách gọi |
| `sakuralearn-backend/mvnw.cmd` | Cấu hình/Phụ thuộc | 190 | 8575 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/pom.xml` | Cấu hình/Phụ thuộc | 286 | 8659 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/SakuralearnBackendApplication.java` | Backend | 55 | 1806 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/AiConfig.java` | Backend | 71 | 2259 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/AuditAwareImpl.java` | Backend | 23 | 918 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/DataSeeder.java` | Backend | 62 | 2405 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/I18nConfig.java` | Backend | 35 | 1190 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/MinioConfig.java` | Backend | 27 | 731 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/OpenApiConfig.java` | Backend | 28 | 1039 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AdminAuditLogController.java` | Backend/Controller | 32 | 1352 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AdminStatisticsController.java` | Backend/Controller | 24 | 993 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AdminUserController.java` | Backend/Controller | 47 | 1753 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AuthController.java` | Bảo mật | 61 | 2819 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/CourseController.java` | Backend/Controller | 94 | 4548 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/DictionaryController.java` | Backend/Controller | 117 | 4804 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/EnrollmentController.java` | Backend/Controller | 46 | 1929 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/FileController.java` | Backend/Controller | 28 | 1008 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/LessonBlockController.java` | Backend/Controller | 54 | 2154 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/LessonController.java` | Backend/Controller | 58 | 2381 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/MediaController.java` | Backend/Controller | 62 | 2625 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/NoteController.java` | Backend/Controller | 65 | 2683 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/NotebookController.java` | Backend/Controller | 122 | 5253 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/ProfileController.java` | Backend/Controller | 39 | 1692 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/ProgressController.java` | Backend/Controller | 75 | 3321 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/QuizController.java` | Backend/Controller | 44 | 1783 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/ReviewController.java` | Backend/Controller | 52 | 2100 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/SRSController.java` | Backend/Controller | 47 | 2104 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/VerificationController.java` | Backend/Controller | 34 | 1419 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/AddToNotebookRequest.java` | Backend/Data/API | 16 | 409 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/CourseRequest.java` | Backend/Data/API | 43 | 1509 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/LessonBlockProgressRequest.java` | Backend/Data/API | 17 | 375 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/LessonBlockRequest.java` | Backend/Data/API | 32 | 1107 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/LessonRequest.java` | Backend/Data/API | 33 | 1090 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/LoginRequest.java` | Backend/Data/API | 17 | 432 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/NotebookFolderRequest.java` | Backend/Data/API | 11 | 254 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/PersonalNoteRequest.java` | Backend/Data/API | 20 | 494 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/QuizQuestionRequest.java` | Backend/Data/API | 13 | 328 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/QuizRequest.java` | Backend/Data/API | 16 | 441 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/QuizSubmissionRequest.java` | Backend/Data/API | 11 | 285 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/RefreshTokenRequest.java` | Backend/Data/API | 12 | 263 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/RegisterRequest.java` | Backend/Data/API | 30 | 1058 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/ResetPasswordRequest.java` | Backend/Data/API | 25 | 901 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/ReviewRequest.java` | Backend/Data/API | 16 | 488 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/SRSReviewRequest.java` | Backend/Data/API | 17 | 433 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/AdminDashboardResponse.java` | Backend/Data/API | 21 | 510 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/AuditLogResponse.java` | Backend/Data/API | 25 | 621 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/AuthResponse.java` | Bảo mật | 28 | 691 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/CourseResponse.java` | Backend/Data/API | 32 | 829 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/DictionaryStatsResponse.java` | Backend/Data/API | 15 | 361 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/EnrollmentResponse.java` | Backend/Data/API | 25 | 623 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/ErrorResponse.java` | Backend/Data/API | 20 | 421 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/FlashcardResponse.java` | Backend/Data/API | 23 | 661 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/LessonBlockProgressResponse.java` | Backend/Data/API | 23 | 574 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/LessonBlockResponse.java` | Backend/Data/API | 25 | 625 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/LessonProgressResponse.java` | Backend/Data/API | 20 | 445 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/LessonResponse.java` | Backend/Data/API | 23 | 567 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/NotebookFolderResponse.java` | Backend/Data/API | 16 | 373 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/NotebookItemResponse.java` | Backend/Data/API | 20 | 616 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/PersonalNoteResponse.java` | Backend/Data/API | 22 | 520 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/ProfileResponse.java` | Backend/Data/API | 23 | 545 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/ReviewResponse.java` | Backend/Data/API | 21 | 490 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/SrsStatsResponse.java` | Backend/Data/API | 17 | 385 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/TokenRefreshResponse.java` | Backend/Data/API | 15 | 332 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/UserAdminResponse.java` | Backend/Data/API | 27 | 668 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/srs/SrsReviewSchedule.java` | Backend/Data/API | 12 | 283 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/AuditLog.java` | Backend/Data/API | 54 | 1372 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Course.java` | Backend/Data/API | 91 | 2333 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Enrollment.java` | Backend/Data/API | 49 | 1242 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Flashcard.java` | Backend/Data/API | 58 | 1450 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/FlashcardReview.java` | Backend/Data/API | 50 | 1199 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/GrammarPoint.java` | Backend/Data/API | 40 | 1004 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Kanji.java` | Backend/Data/API | 76 | 2108 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Lesson.java` | Backend/Data/API | 70 | 1759 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/LessonBlock.java` | Backend/Data/API | 66 | 1664 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/LessonBlockProgress.java` | Backend/Data/API | 51 | 1380 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/LessonProgress.java` | Backend/Data/API | 44 | 1053 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/NotebookFolder.java` | Backend/Data/API | 39 | 981 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/PasswordResetToken.java` | Backend/Data/API | 36 | 865 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/PersonalNote.java` | Backend/Data/API | 42 | 1078 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Quiz.java` | Backend/Data/API | 67 | 1801 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/QuizAttempt.java` | Backend/Data/API | 44 | 1009 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/QuizQuestion.java` | Backend/Data/API | 44 | 1141 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/oauth2/HttpCookieOAuth2AuthorizationRequestRepository.java` | Bảo mật | 54 | 2930 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/oauth2/OAuth2AuthenticationFailureHandler.java` | Bảo mật | 28 | 1220 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/oauth2/OAuth2AuthenticationSuccessHandler.java` | Bảo mật | 75 | 3785 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AdminAuditLogService.java` | Backend/Nghiệp vụ | 9 | 362 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AdminStatisticsService.java` | Backend/Nghiệp vụ | 7 | 237 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AiSyllabusService.java` | Backend/Nghiệp vụ | 12 | 411 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AuditLogService.java` | Backend/Nghiệp vụ | 62 | 2641 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AuthService.java` | Bảo mật | 17 | 830 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/CourseService.java` | Backend/Nghiệp vụ | 18 | 991 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/DictionaryService.java` | Backend/Nghiệp vụ | 127 | 5495 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/EnrollmentService.java` | Backend/Nghiệp vụ | 14 | 590 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/FileStorageService.java` | Backend/Nghiệp vụ | 14 | 616 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/JwtService.java` | Bảo mật | 14 | 532 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/LessonBlockService.java` | Backend/Nghiệp vụ | 14 | 656 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/LessonService.java` | Backend/Nghiệp vụ | 15 | 723 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/MailService.java` | Backend/Nghiệp vụ | 7 | 220 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/NoteService.java` | Backend/Nghiệp vụ | 15 | 661 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/NotebookService.java` | Backend/Nghiệp vụ | 467 | 20931 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/ProgressService.java` | Backend/Nghiệp vụ | 19 | 945 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/QuizService.java` | Backend/Nghiệp vụ | 14 | 583 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/RefreshTokenService.java` | Backend/Nghiệp vụ | 12 | 418 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/ReviewService.java` | Backend/Nghiệp vụ | 14 | 549 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/SrsCalculatorService.java` | Backend/Nghiệp vụ | 71 | 2613 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/TextSanitizer.java` | Backend/Nghiệp vụ | 20 | 700 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/UserService.java` | Backend/Nghiệp vụ | 19 | 830 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AdminAuditLogServiceImpl.java` | Backend/Nghiệp vụ | 68 | 2984 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AdminStatisticsServiceImpl.java` | Backend/Nghiệp vụ | 32 | 1396 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AiSyllabusServiceImpl.java` | Backend/Nghiệp vụ | 230 | 12448 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AuthServiceImpl.java` | Bảo mật | 228 | 10854 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/CourseServiceImpl.java` | Backend/Nghiệp vụ | 209 | 9378 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/EnrollmentServiceImpl.java` | Backend/Nghiệp vụ | 87 | 3803 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/FileStorageServiceImpl.java` | Backend/Nghiệp vụ | 138 | 5256 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/JwtServiceImpl.java` | Bảo mật | 82 | 2735 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/LessonBlockServiceImpl.java` | Backend/Nghiệp vụ | 136 | 6202 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/LessonServiceImpl.java` | Backend/Nghiệp vụ | 168 | 7477 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/MailServiceImpl.java` | Backend/Nghiệp vụ | 47 | 1763 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/NoteServiceImpl.java` | Backend/Nghiệp vụ | 77 | 3333 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/ProgressServiceImpl.java` | Backend/Nghiệp vụ | 196 | 9457 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/QuizServiceImpl.java` | Backend/Nghiệp vụ | 138 | 5978 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/RefreshTokenServiceImpl.java` | Backend/Nghiệp vụ | 63 | 2582 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/ReviewServiceImpl.java` | Backend/Nghiệp vụ | 101 | 4385 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/UserDetailsServiceImpl.java` | Backend/Nghiệp vụ | 34 | 1595 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/UserServiceImpl.java` | Backend/Nghiệp vụ | 123 | 5477 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/util/CookieUtils.java` | Backend | 58 | 1983 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/util/RomajiConverter.java` | Backend | 108 | 5848 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/application-dev.yml` | Cấu hình/Phụ thuộc | 14 | 290 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/application-test.yml` | Cấu hình/Phụ thuộc | 27 | 690 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/application.yml` | Cấu hình/Phụ thuộc | 102 | 2994 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/db/migration/V1__Initial_Database_Schema.sql` | Cơ sở dữ liệu | 633 | 22630 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/db/migration/V2__Seed_Radicals.sql` | Cơ sở dữ liệu | 431 | 51535 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/db/migration/V3__Seed_Kanji_Master.sql` | Cơ sở dữ liệu | 3007 | 1874304 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/db/migration/V4__Seed_Vocab_Master.sql` | Cơ sở dữ liệu | 21797 | 4871688 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/db/migration/V5__Seed_Grammar_Master.sql` | Cơ sở dữ liệu | 846 | 764867 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/db/migration/V6__Create_Reviews_Table.sql` | Cơ sở dữ liệu | 12 | 473 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/db/migration/V7__Add_SRS_Daily_Limit_To_Users.sql` | Cơ sở dữ liệu | 1 | 66 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/messages_en.properties` | Cấu hình/Phụ thuộc | 7 | 415 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/messages_ja.properties` | Cấu hình/Phụ thuộc | 7 | 665 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/messages_vi.properties` | Cấu hình/Phụ thuộc | 12 | 899 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/templates/auth/verify-result.html` | Bảo mật | 55 | 1774 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/templates/mail/password-reset.html` | Cấu hình/Phụ thuộc | 38 | 2203 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/resources/templates/mail/verification-email.html` | Cấu hình/Phụ thuộc | 38 | 2168 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/SakuralearnBackendApplicationTests.java` | Kiểm thử | 15 | 334 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/NotebookServiceSecurityTest.java` | Kiểm thử | 82 | 3760 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/SrsCalculatorServiceTest.java` | Kiểm thử | 63 | 2314 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/TextSanitizerTest.java` | Kiểm thử | 21 | 576 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/impl/AdminAuditLogServiceImplTest.java` | Kiểm thử | 81 | 3148 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/impl/ProgressServiceImplTest.java` | Kiểm thử | 134 | 6673 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/.gitignore` | Frontend/Cấu hình | 24 | 277 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/.vite/deps/_metadata.json` | Sinh tự động | 8 | 153 | METADATA_ONLY | ĐÃ XEM XÉT | Cache Vite sinh ra được theo dõi; kiểm tra cấu trúc/phiên bản |
| `sakuralearn-frontend/.vite/deps/package.json` | Sinh tự động | 3 | 26 | METADATA_ONLY | ĐÃ XEM XÉT | Cache Vite sinh ra được theo dõi; kiểm tra cấu trúc/phiên bản |
| `sakuralearn-frontend/index.html` | Frontend/Cấu hình | 16 | 370 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/package-lock.json` | Phụ thuộc | 1353 | 46506 | TARGETED | ĐÃ XEM XÉT | Cấu trúc phụ thuộc/dữ liệu và các phiên bản/bản phân phối liên quan đã kiểm tra |
| `sakuralearn-frontend/package.json` | Frontend/Cấu hình | 26 | 608 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/public/favicon.svg` | Frontend/Cấu hình | 1 | 9522 | METADATA_ONLY | ĐÃ XEM XÉT | Tài sản tĩnh/binary; kiểm tra metadata |
| `sakuralearn-frontend/public/icons.svg` | Frontend/Cấu hình | 24 | 5055 | METADATA_ONLY | ĐÃ XEM XÉT | Tài sản tĩnh/binary; kiểm tra metadata |
| `sakuralearn-frontend/src/App.jsx` | Frontend | 17 | 374 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/assets/hero.png` | Binary/Static | — | 44919 | METADATA_ONLY | ĐÃ XEM XÉT | Tài sản tĩnh/binary; kiểm tra metadata |
| `sakuralearn-frontend/src/assets/typescript.svg` | Binary/Static | 1 | 1304 | METADATA_ONLY | ĐÃ XEM XÉT | Tài sản tĩnh/binary; kiểm tra metadata |
| `sakuralearn-frontend/src/assets/vite.svg` | Binary/Static | 1 | 8710 | METADATA_ONLY | ĐÃ XEM XÉT | Tài sản tĩnh/binary; kiểm tra metadata |
| `sakuralearn-frontend/src/components/AuthCard.css` | Bảo mật | 57 | 967 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/AuthCard.jsx` | Bảo mật | 18 | 458 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/Button.css` | Frontend/Style | 73 | 1432 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/Button.jsx` | Frontend | 19 | 542 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/Input.css` | Frontend/Style | 58 | 1031 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/Input.jsx` | Frontend | 26 | 839 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/common/StatusMessage.jsx` | Frontend | 14 | 333 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/courses/BlockRenderer.jsx` | Frontend | 182 | 7010 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/courses/CourseCard.css` | Frontend/Style | 124 | 2356 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/courses/CourseCard.jsx` | Frontend | 48 | 1637 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/courses/NoteComponent.css` | Frontend/Style | 216 | 4387 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/courses/NoteComponent.jsx` | Frontend | 160 | 5833 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/courses/QuizBlock.css` | Frontend/Style | 249 | 4980 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/courses/QuizBlock.jsx` | Frontend | 212 | 7267 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/courses/QuizEditor.css` | Frontend/Style | 147 | 2670 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/courses/QuizEditor.jsx` | Frontend | 112 | 4014 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/dictionary/DictionaryDetailPopup.css` | Frontend/Style | 720 | 14359 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/dictionary/DictionaryDetailPopup.jsx` | Frontend | 438 | 19086 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/components/dictionary/SaveToNotebookPopup.css` | Frontend/Style | 244 | 4758 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/components/dictionary/SaveToNotebookPopup.jsx` | Frontend | 161 | 5658 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/constants/routes.js` | Frontend | 25 | 942 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/contexts/AuthContext.jsx` | Bảo mật | 57 | 1782 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/index.css` | Frontend/Style | 76 | 1595 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/layouts/AuthLayout.css` | Bảo mật | 71 | 1316 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/layouts/AuthLayout.jsx` | Bảo mật | 19 | 461 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/layouts/MainLayout.css` | Frontend/Style | 54 | 1018 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/layouts/MainLayout.jsx` | Frontend | 28 | 953 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/layouts/Navbar.css` | Frontend/Style | 164 | 2713 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/layouts/Navbar.jsx` | Frontend | 67 | 2101 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/layouts/Sidebar.css` | Frontend/Style | 136 | 2462 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/layouts/Sidebar.jsx` | Frontend | 114 | 3573 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/main.jsx` | Frontend | 10 | 245 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/Dashboard.css` | Frontend/Style | 400 | 7341 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/Dashboard.jsx` | Frontend | 364 | 14283 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/ForgotPassword.jsx` | Frontend | 95 | 4097 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/Login.jsx` | Frontend | 99 | 3536 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/OAuth2RedirectHandler.jsx` | Bảo mật | 60 | 2097 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/Profile.css` | Frontend/Style | 198 | 3695 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/Profile.jsx` | Frontend | 204 | 6674 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/Register.jsx` | Frontend | 120 | 4079 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/ResetPassword.jsx` | Frontend | 139 | 6108 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/admin/AuditLogs.css` | Frontend/Style | 340 | 5636 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/admin/AuditLogs.jsx` | Frontend | 260 | 8498 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/admin/UserManagement.css` | Frontend/Style | 296 | 5929 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/admin/UserManagement.jsx` | Frontend | 242 | 9104 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/courses/CourseDetail.css` | Frontend/Style | 383 | 6563 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/courses/CourseDetail.jsx` | Frontend | 260 | 10270 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/courses/CourseForm.css` | Frontend/Style | 174 | 3163 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/courses/CourseForm.jsx` | Frontend | 222 | 8034 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/courses/CourseList.css` | Frontend/Style | 141 | 2532 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/courses/CourseList.jsx` | Frontend | 106 | 3557 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/courses/LearningView.css` | Frontend/Style | 549 | 10483 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/courses/LearningView.jsx` | Frontend | 412 | 16722 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/courses/MyCourses.css` | Frontend/Style | 148 | 2694 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/courses/MyCourses.jsx` | Frontend | 101 | 3938 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/courses/SyllabusManager.css` | Frontend/Style | 399 | 7281 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/courses/SyllabusManager.jsx` | Frontend | 603 | 22604 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/courses/TeacherDashboard.css` | Frontend/Style | 334 | 6366 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/courses/TeacherDashboard.jsx` | Frontend | 202 | 8302 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/dictionary/DictionaryList.css` | Frontend/Style | 233 | 4662 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/dictionary/DictionaryList.jsx` | Frontend | 197 | 6424 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/dictionary/FolderDetail.css` | Frontend/Style | 456 | 9101 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/dictionary/FolderDetail.jsx` | Frontend | 294 | 12298 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/dictionary/Library.css` | Frontend/Style | 281 | 6058 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/dictionary/Library.jsx` | Frontend | 217 | 7520 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/dictionary/MyNotebook.css` | Frontend/Style | 381 | 7359 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/dictionary/MyNotebook.jsx` | Frontend | 246 | 10681 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/dictionary/PracticeModePopup.css` | Frontend/Style | 252 | 4767 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/dictionary/PracticeModePopup.jsx` | Frontend | 96 | 3457 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/pages/dictionary/PracticeSession.css` | Frontend/Style | 276 | 5784 | TARGETED | ĐÃ XEM XÉT | Bộ chọn/bố cục và hành vi URL/nội dung liên quan đến bảo mật đã kiểm tra |
| `sakuralearn-frontend/src/pages/dictionary/PracticeSession.jsx` | Frontend | 230 | 8783 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/routes/AppRoutes.jsx` | Frontend | 221 | 7164 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/adminService.js` | Frontend | 28 | 1022 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/api.js` | Frontend | 66 | 2018 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/authService.js` | Bảo mật | 10 | 471 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/courseService.js` | Frontend | 26 | 1216 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/dictionaryService.js` | Frontend | 51 | 1518 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/enrollmentService.js` | Frontend | 7 | 276 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/fileService.js` | Frontend | 15 | 367 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/lessonService.js` | Frontend | 23 | 1265 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/noteService.js` | Frontend | 9 | 433 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/notebookService.js` | Frontend | 29 | 1052 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/progressService.js` | Frontend | 10 | 593 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/quizService.js` | Frontend | 7 | 282 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/srsService.js` | Frontend | 13 | 407 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/services/userService.js` | Frontend | 21 | 681 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/utils/apiError.js` | Frontend | 14 | 456 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/src/utils/formatters.js` | Frontend | 32 | 827 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-frontend/vite.config.js` | Frontend/Cấu hình | 11 | 226 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Radical.java` | Backend/Data/API | 33 | 698 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/RefreshToken.java` | Backend/Data/API | 34 | 741 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Review.java` | Backend/Data/API | 47 | 1199 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Role.java` | Backend/Data/API | 26 | 475 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/User.java` | Backend/Data/API | 112 | 3095 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/UserAnswer.java` | Backend/Data/API | 37 | 835 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/UserNotebook.java` | Backend/Data/API | 51 | 1271 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/VerificationToken.java` | Backend/Data/API | 36 | 862 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Vocabulary.java` | Backend/Data/API | 54 | 1399 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/enums/AiModelProvider.java` | Backend/Data/API | 26 | 684 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/enums/ItemType.java` | Backend/Data/API | 8 | 138 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/enums/LessonBlockType.java` | Backend/Data/API | 10 | 167 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/enums/QuizType.java` | Backend/Data/API | 9 | 176 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/BadRequestException.java` | Backend/Exception | 7 | 204 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/ConflictException.java` | Backend/Exception | 7 | 200 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/ForbiddenException.java` | Backend/Exception | 7 | 202 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/GlobalExceptionHandler.java` | Backend/Exception | 106 | 4916 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/ResourceNotFoundException.java` | Backend/Exception | 7 | 216 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/AuthMapper.java` | Bảo mật | 15 | 543 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/CourseMapper.java` | Backend/Nghiệp vụ | 18 | 705 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/EnrollmentMapper.java` | Backend/Nghiệp vụ | 21 | 914 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/LessonBlockMapper.java` | Backend/Nghiệp vụ | 14 | 547 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/LessonBlockProgressMapper.java` | Backend/Nghiệp vụ | 18 | 761 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/LessonMapper.java` | Backend/Nghiệp vụ | 14 | 514 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/LessonProgressMapper.java` | Backend/Nghiệp vụ | 17 | 663 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/PersonalNoteMapper.java` | Backend/Nghiệp vụ | 18 | 708 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/UserMapper.java` | Backend/Nghiệp vụ | 31 | 1119 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/AuditLogRepository.java` | Backend/Data/API | 29 | 1178 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/CourseRepository.java` | Backend/Data/API | 25 | 1218 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/EnrollmentRepository.java` | Backend/Data/API | 18 | 704 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/FlashcardRepository.java` | Backend/Data/API | 25 | 1258 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/FlashcardReviewRepository.java` | Backend/Data/API | 15 | 689 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/GrammarPointRepository.java` | Backend/Data/API | 20 | 933 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/KanjiRepository.java` | Backend/Data/API | 25 | 1114 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/LessonBlockProgressRepository.java` | Backend/Data/API | 16 | 816 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/LessonBlockRepository.java` | Backend/Data/API | 28 | 1432 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/LessonProgressRepository.java` | Backend/Data/API | 17 | 784 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/LessonRepository.java` | Backend/Data/API | 24 | 1211 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/NotebookFolderRepository.java` | Backend/Data/API | 12 | 468 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/PasswordResetTokenRepository.java` | Backend/Data/API | 15 | 566 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/PersonalNoteRepository.java` | Backend/Data/API | 16 | 663 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/QuizAttemptRepository.java` | Backend/Data/API | 13 | 482 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/QuizQuestionRepository.java` | Backend/Data/API | 13 | 442 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/QuizRepository.java` | Backend/Data/API | 15 | 543 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/RefreshTokenRepository.java` | Backend/Data/API | 18 | 618 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/ReviewRepository.java` | Backend/Data/API | 21 | 789 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/RoleRepository.java` | Backend/Data/API | 13 | 416 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/UserAnswerRepository.java` | Backend/Data/API | 11 | 361 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/UserNotebookRepository.java` | Backend/Data/API | 23 | 1119 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/UserRepository.java` | Backend/Data/API | 20 | 1040 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/VerificationTokenRepository.java` | Backend/Data/API | 16 | 618 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/VocabularyRepository.java` | Backend/Data/API | 20 | 940 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/JwtAuthFilter.java` | Bảo mật | 72 | 3240 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/SecurityConfig.java` | Bảo mật | 86 | 4937 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/UserDetailsImpl.java` | Bảo mật | 80 | 2119 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/oauth2/CustomOAuth2UserService.java` | Bảo mật | 77 | 3216 | FULL | ĐÃ XEM XÉT | Đã đọc toàn bộ nội dung văn bản; xem xét hành vi liên quan đến rủi ro |
| `AuditMaster.md` | Hướng dẫn Audit (ngoài Git) | — | — | FULL | ĐÃ XEM XÉT | Quy trình kiểm thử chi phối; đã đọc toàn bộ |
| `.cursor/rules/audit-rule.mdc` | Hướng dẫn Audit (ngoài Git) | — | — | FULL | ĐÃ XEM XÉT | Quy tắc audit bổ sung ngoài Git; đã đọc toàn bộ |
