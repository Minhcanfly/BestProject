# File Manifest — Phase 1

Audit date: 2026-08-03  
Repository snapshot: `develop@2175947f481493bcdbd1fb9c45c50a9755a52b85`

## Coverage

- Tracked files: **401**
- Supplemental untracked audit-scope files: **2**
- FULL: **358**
- TARGETED: **35**
- METADATA_ONLY: **7**
- SKIPPED: **0**
- UNREADABLE: **1**
- Overall manifest coverage: **99.75%** (400/401; every level except SKIPPED/UNREADABLE)
- Full-read rate: **89.28%**
- Critical-file FULL coverage: **100.00%** (105/105; excludes generated cache and auth-only CSS styling)

The only unreadable tracked file is the pre-existing deleted ERD image `diagram/sakuralearn_db@localhost.png`. Generated Vite cache, lock/data maps, CSS, and static assets use the lower read levels permitted by AuditMaster §3.2; all security/business/database/API/test/CI files are FULL.

| File | Category | Lines | Bytes | Read Level | Status | Reason |
| --- | --- | ---: | ---: | --- | --- | --- |
| `.cursor/rules/sakuralearn-context.mdc` | Documentation | 14 | 730 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `.cursorignore` | Configuration | 36 | 805 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `.env.example` | Configuration | 33 | 913 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `.github/workflows/backend-ci.yml` | CI/CD | 58 | 1452 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `.github/workflows/frontend-ci.yml` | CI/CD | 36 | 805 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `.gitignore` | Configuration | 50 | 576 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AGENTS.md` | Documentation | 14 | 926 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/01-TONG-QUAN-DU-AN.md` | Documentation | 77 | 3289 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/02-HIEN-TRANG-CODE.md` | Documentation | 119 | 4212 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/03-HIEN-TRANG-DOCS.md` | Documentation | 66 | 3017 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/04-KIEN-TRUC-NHANH.md` | Documentation | 117 | 3955 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/05-BACKLOG-UU-TIEN.md` | Documentation | 50 | 2416 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/06-HUONG-DAN-CHO-AI.md` | Documentation | 77 | 3342 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/07-TRUTH-MAP-TOM-TAT.md` | Documentation | 47 | 1434 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/README.md` | Documentation | 90 | 4236 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AI check/SakuraLearn_Interview_Preparation.md` | Documentation | 917 | 39970 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `HienTrang/BanCu.txt` | Documentation | 103 | 5288 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `HienTrang/COMPREHENSIVE_UPGRADE_PLAN_MODULES_1-5.md` | Documentation | 145 | 9029 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `HienTrang/GRAND_ROADMAP_V4.md` | Documentation | 81 | 6753 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `HienTrang/PHASE_1_P0_STATUS.md` | Documentation | 146 | 8334 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `HienTrang/PHASE_2_STEP_1_PLAN.md` | Documentation | 470 | 20326 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | Documentation | 357 | 15174 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `HienTrang/STABILIZATION_AND_REFACTORING_TASKS.md` | Documentation | 99 | 7684 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `HienTrang/Task.txt` | Documentation | 53 | 3157 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/Engineering_Review_Honest.md` | Documentation | 70 | 5388 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/Interview_Pitch_Summaries.md` | Documentation | 39 | 5068 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/Module1_Auth_Identity.md` | Documentation | 16 | 1327 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/Module2_3_LMS_Progress.md` | Documentation | 18 | 1407 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/Module4_Knowledge_Notebook.md` | Documentation | 16 | 1385 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/Module5_SRS_Engine.md` | Documentation | 17 | 1380 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/Overview_Architecture.md` | Documentation | 14 | 1274 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/Project_Interview_Answers_Amigo.md` | Documentation | 332 | 23038 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `PV/SakuraLearn_Interview_DeepDive.md` | Documentation | 295 | 21943 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `QUICK_START.md` | Documentation | 46 | 1341 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `README.md` | Documentation | 307 | 12705 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/check_levels.js` | Script | 20 | 556 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/check_tags.js` | Script | 25 | 889 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/consolidate_grammar.js` | Script | 118 | 5201 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/consolidate_kanji.js` | Script | 131 | 6246 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/consolidate_vocab.js` | Script | 204 | 8639 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/debug_kanji.js` | Script | 19 | 674 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/extract_grammar.js` | Script | 45 | 1855 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/generate_seeds.js` | Script | 107 | 4562 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/jlpt_kanji_map.json` | Dependency/Data | 2138 | 34179 | TARGETED | REVIEWED | Dependency/data structure and relevant versions/distributions inspected |
| `data/scripts/package-lock.json` | Dependency/Data | 129 | 4448 | TARGETED | REVIEWED | Dependency/data structure and relevant versions/distributions inspected |
| `data/scripts/package.json` | Dependency/Data | 19 | 394 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/parse_kanji.js` | Script | 87 | 3175 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/parse_vocab.js` | Script | 39 | 1554 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/peek_anki.js` | Script | 41 | 1338 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/peek_grammar.js` | Script | 16 | 661 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/peek_vocab_anki.js` | Script | 29 | 1125 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/rebalance_master.js` | Script | 74 | 3167 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/restore_vocab.js` | Script | 63 | 3026 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/search_anki.js` | Script | 27 | 988 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/update_kanji_vi.js` | Script | 37 | 1518 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `data/scripts/update_vocab_vi.js` | Script | 40 | 1754 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `database/init_schema_v1.sql` | Database | 631 | 31865 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `diagram/sakuralearn_db.png` | Binary | — | 2218853 | FULL | REVIEWED | ERD visually inspected |
| `diagram/sakuralearn_db@localhost.png` | Binary | — | — | UNREADABLE | UNREADABLE | Pre-existing tracked deletion; content unavailable |
| `docker-compose.yml` | Configuration | 77 | 2424 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/00_MASTER_SPECIFICATION.md` | Documentation | 179 | 13276 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/01_TECHNICAL_STACK_AND_STANDARDS.md` | Documentation | 130 | 9176 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/DATA_AND_MIGRATION_TASKS.md` | Documentation | 42 | 2497 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/DOCS_CODE_CROSS_REFERENCE.md` | Documentation | 113 | 6928 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/DOCS_MAINTENANCE_TASKS.md` | Documentation | 47 | 2564 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/FRONTEND_DESIGN_PACKAGE_STYLE_GUIDE.md` | Documentation | 118 | 3997 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/FRONTEND_REMAINING_TASKS.md` | Documentation | 49 | 2731 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/INFRASTRUCTURE_AND_CI_TASKS.md` | Documentation | 44 | 2031 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_1_AUTHENTICATION_USER.md` | Documentation | 55 | 3385 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_1_REMAINING_TASKS.md` | Documentation | 35 | 2160 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_2_COURSE_LESSON_MANAGEMENT.md` | Documentation | 110 | 8411 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_2_REMAINING_TASKS.md` | Documentation | 20 | 1728 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_3_LEARNING_EXPERIENCE_PROGRESS.md` | Documentation | 88 | 6398 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_3_REMAINING_TASKS.md` | Documentation | 18 | 1732 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_4_KNOWLEDGE_BASE_DICTIONARY.md` | Documentation | 109 | 6723 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_4_REMAINING_TASKS.md` | Documentation | 20 | 2070 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_5_REMAINING_TASKS.md` | Documentation | 17 | 1563 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_5_REVIEW_PRACTICE_SRS.md` | Documentation | 91 | 5625 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_6_MONETIZATION_NOTIFICATION.md` | Documentation | 90 | 5961 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_6_REMAINING_TASKS.md` | Documentation | 52 | 3016 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_7_ADMINISTRATION_ANALYTICS.md` | Documentation | 91 | 5266 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_7_REMAINING_TASKS.md` | Documentation | 45 | 2073 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_8_GAMIFICATION_ENHANCEMENT.md` | Documentation | 97 | 5813 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/MODULE_8_REMAINING_TASKS.md` | Documentation | 50 | 2433 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/README.md` | Documentation | 50 | 3473 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `docs/development_guidelines.md` | Documentation | 43 | 4312 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `playbook/01_backend_standards.md` | Documentation | 91 | 4598 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `playbook/02_frontend_standards.md` | Documentation | 68 | 3897 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `playbook/03_database_standards.md` | Documentation | 61 | 4236 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `playbook/04_infrastructure_ops.md` | Documentation | 53 | 3598 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `playbook/README.md` | Documentation | 54 | 2929 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/.gitattributes` | Backend | 2 | 38 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/.gitignore` | Backend | 33 | 394 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/.mvn/wrapper/maven-wrapper.properties` | Configuration/Dependency | 3 | 168 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/mvnw` | Configuration/Dependency | 295 | 11790 | TARGETED | REVIEWED | Standard Maven wrapper script; metadata and invocation inspected |
| `sakuralearn-backend/mvnw.cmd` | Configuration/Dependency | 190 | 8575 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/pom.xml` | Configuration/Dependency | 286 | 8659 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/SakuralearnBackendApplication.java` | Backend | 55 | 1806 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/AiConfig.java` | Backend | 71 | 2259 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/AuditAwareImpl.java` | Backend | 23 | 918 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/DataSeeder.java` | Backend | 62 | 2405 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/I18nConfig.java` | Backend | 35 | 1190 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/MinioConfig.java` | Backend | 27 | 731 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/OpenApiConfig.java` | Backend | 28 | 1039 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AdminAuditLogController.java` | Backend/Controller | 32 | 1352 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AdminStatisticsController.java` | Backend/Controller | 24 | 993 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AdminUserController.java` | Backend/Controller | 47 | 1753 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AuthController.java` | Security | 61 | 2819 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/CourseController.java` | Backend/Controller | 94 | 4548 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/DictionaryController.java` | Backend/Controller | 117 | 4804 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/EnrollmentController.java` | Backend/Controller | 46 | 1929 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/FileController.java` | Backend/Controller | 28 | 1008 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/LessonBlockController.java` | Backend/Controller | 54 | 2154 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/LessonController.java` | Backend/Controller | 58 | 2381 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/MediaController.java` | Backend/Controller | 62 | 2625 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/NoteController.java` | Backend/Controller | 65 | 2683 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/NotebookController.java` | Backend/Controller | 122 | 5253 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/ProfileController.java` | Backend/Controller | 39 | 1692 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/ProgressController.java` | Backend/Controller | 75 | 3321 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/QuizController.java` | Backend/Controller | 44 | 1783 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/ReviewController.java` | Backend/Controller | 52 | 2100 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/SRSController.java` | Backend/Controller | 47 | 2104 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/VerificationController.java` | Backend/Controller | 34 | 1419 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/AddToNotebookRequest.java` | Backend/Data/API | 16 | 409 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/CourseRequest.java` | Backend/Data/API | 43 | 1509 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/LessonBlockProgressRequest.java` | Backend/Data/API | 17 | 375 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/LessonBlockRequest.java` | Backend/Data/API | 32 | 1107 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/LessonRequest.java` | Backend/Data/API | 33 | 1090 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/LoginRequest.java` | Backend/Data/API | 17 | 432 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/NotebookFolderRequest.java` | Backend/Data/API | 11 | 254 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/PersonalNoteRequest.java` | Backend/Data/API | 20 | 494 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/QuizQuestionRequest.java` | Backend/Data/API | 13 | 328 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/QuizRequest.java` | Backend/Data/API | 16 | 441 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/QuizSubmissionRequest.java` | Backend/Data/API | 11 | 285 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/RefreshTokenRequest.java` | Backend/Data/API | 12 | 263 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/RegisterRequest.java` | Backend/Data/API | 30 | 1058 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/ResetPasswordRequest.java` | Backend/Data/API | 25 | 901 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/ReviewRequest.java` | Backend/Data/API | 16 | 488 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/request/SRSReviewRequest.java` | Backend/Data/API | 17 | 433 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/AdminDashboardResponse.java` | Backend/Data/API | 21 | 510 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/AuditLogResponse.java` | Backend/Data/API | 25 | 621 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/AuthResponse.java` | Security | 28 | 691 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/CourseResponse.java` | Backend/Data/API | 32 | 829 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/DictionaryStatsResponse.java` | Backend/Data/API | 15 | 361 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/EnrollmentResponse.java` | Backend/Data/API | 25 | 623 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/ErrorResponse.java` | Backend/Data/API | 20 | 421 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/FlashcardResponse.java` | Backend/Data/API | 23 | 661 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/LessonBlockProgressResponse.java` | Backend/Data/API | 23 | 574 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/LessonBlockResponse.java` | Backend/Data/API | 25 | 625 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/LessonProgressResponse.java` | Backend/Data/API | 20 | 445 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/LessonResponse.java` | Backend/Data/API | 23 | 567 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/NotebookFolderResponse.java` | Backend/Data/API | 16 | 373 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/NotebookItemResponse.java` | Backend/Data/API | 20 | 616 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/PersonalNoteResponse.java` | Backend/Data/API | 22 | 520 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/ProfileResponse.java` | Backend/Data/API | 23 | 545 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/ReviewResponse.java` | Backend/Data/API | 21 | 490 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/SrsStatsResponse.java` | Backend/Data/API | 17 | 385 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/TokenRefreshResponse.java` | Backend/Data/API | 15 | 332 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/response/UserAdminResponse.java` | Backend/Data/API | 27 | 668 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/dto/srs/SrsReviewSchedule.java` | Backend/Data/API | 12 | 283 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/AuditLog.java` | Backend/Data/API | 54 | 1372 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Course.java` | Backend/Data/API | 91 | 2333 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Enrollment.java` | Backend/Data/API | 49 | 1242 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Flashcard.java` | Backend/Data/API | 58 | 1450 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/FlashcardReview.java` | Backend/Data/API | 50 | 1199 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/GrammarPoint.java` | Backend/Data/API | 40 | 1004 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Kanji.java` | Backend/Data/API | 76 | 2108 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Lesson.java` | Backend/Data/API | 70 | 1759 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/LessonBlock.java` | Backend/Data/API | 66 | 1664 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/LessonBlockProgress.java` | Backend/Data/API | 51 | 1380 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/LessonProgress.java` | Backend/Data/API | 44 | 1053 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/NotebookFolder.java` | Backend/Data/API | 39 | 981 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/PasswordResetToken.java` | Backend/Data/API | 36 | 865 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/PersonalNote.java` | Backend/Data/API | 42 | 1078 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Quiz.java` | Backend/Data/API | 67 | 1801 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/QuizAttempt.java` | Backend/Data/API | 44 | 1009 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/QuizQuestion.java` | Backend/Data/API | 44 | 1141 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/oauth2/HttpCookieOAuth2AuthorizationRequestRepository.java` | Security | 54 | 2930 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/oauth2/OAuth2AuthenticationFailureHandler.java` | Security | 28 | 1220 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/oauth2/OAuth2AuthenticationSuccessHandler.java` | Security | 75 | 3785 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AdminAuditLogService.java` | Backend/Business | 9 | 362 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AdminStatisticsService.java` | Backend/Business | 7 | 237 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AiSyllabusService.java` | Backend/Business | 12 | 411 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AuditLogService.java` | Backend/Business | 62 | 2641 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/AuthService.java` | Security | 17 | 830 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/CourseService.java` | Backend/Business | 18 | 991 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/DictionaryService.java` | Backend/Business | 127 | 5495 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/EnrollmentService.java` | Backend/Business | 14 | 590 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/FileStorageService.java` | Backend/Business | 14 | 616 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/JwtService.java` | Security | 14 | 532 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/LessonBlockService.java` | Backend/Business | 14 | 656 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/LessonService.java` | Backend/Business | 15 | 723 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/MailService.java` | Backend/Business | 7 | 220 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/NoteService.java` | Backend/Business | 15 | 661 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/NotebookService.java` | Backend/Business | 467 | 20931 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/ProgressService.java` | Backend/Business | 19 | 945 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/QuizService.java` | Backend/Business | 14 | 583 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/RefreshTokenService.java` | Backend/Business | 12 | 418 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/ReviewService.java` | Backend/Business | 14 | 549 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/SrsCalculatorService.java` | Backend/Business | 71 | 2613 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/TextSanitizer.java` | Backend/Business | 20 | 700 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/UserService.java` | Backend/Business | 19 | 830 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AdminAuditLogServiceImpl.java` | Backend/Business | 68 | 2984 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AdminStatisticsServiceImpl.java` | Backend/Business | 32 | 1396 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AiSyllabusServiceImpl.java` | Backend/Business | 230 | 12448 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AuthServiceImpl.java` | Security | 228 | 10854 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/CourseServiceImpl.java` | Backend/Business | 209 | 9378 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/EnrollmentServiceImpl.java` | Backend/Business | 87 | 3803 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/FileStorageServiceImpl.java` | Backend/Business | 138 | 5256 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/JwtServiceImpl.java` | Security | 82 | 2735 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/LessonBlockServiceImpl.java` | Backend/Business | 136 | 6202 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/LessonServiceImpl.java` | Backend/Business | 168 | 7477 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/MailServiceImpl.java` | Backend/Business | 47 | 1763 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/NoteServiceImpl.java` | Backend/Business | 77 | 3333 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/ProgressServiceImpl.java` | Backend/Business | 196 | 9457 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/QuizServiceImpl.java` | Backend/Business | 138 | 5978 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/RefreshTokenServiceImpl.java` | Backend/Business | 63 | 2582 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/ReviewServiceImpl.java` | Backend/Business | 101 | 4385 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/UserDetailsServiceImpl.java` | Backend/Business | 34 | 1595 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/UserServiceImpl.java` | Backend/Business | 123 | 5477 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/util/CookieUtils.java` | Backend | 58 | 1983 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/util/RomajiConverter.java` | Backend | 108 | 5848 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/application-dev.yml` | Configuration/Dependency | 14 | 290 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/application-test.yml` | Configuration/Dependency | 27 | 690 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/application.yml` | Configuration/Dependency | 102 | 2994 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/db/migration/V1__Initial_Database_Schema.sql` | Database | 633 | 22630 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/db/migration/V2__Seed_Radicals.sql` | Database | 431 | 51535 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/db/migration/V3__Seed_Kanji_Master.sql` | Database | 3007 | 1874304 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/db/migration/V4__Seed_Vocab_Master.sql` | Database | 21797 | 4871688 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/db/migration/V5__Seed_Grammar_Master.sql` | Database | 846 | 764867 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/db/migration/V6__Create_Reviews_Table.sql` | Database | 12 | 473 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/db/migration/V7__Add_SRS_Daily_Limit_To_Users.sql` | Database | 1 | 66 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/messages_en.properties` | Configuration/Dependency | 7 | 415 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/messages_ja.properties` | Configuration/Dependency | 7 | 665 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/messages_vi.properties` | Configuration/Dependency | 12 | 899 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/templates/auth/verify-result.html` | Security | 55 | 1774 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/templates/mail/password-reset.html` | Configuration/Dependency | 38 | 2203 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/resources/templates/mail/verification-email.html` | Configuration/Dependency | 38 | 2168 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/SakuralearnBackendApplicationTests.java` | Testing | 15 | 334 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/NotebookServiceSecurityTest.java` | Testing | 82 | 3760 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/SrsCalculatorServiceTest.java` | Testing | 63 | 2314 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/TextSanitizerTest.java` | Testing | 21 | 576 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/impl/AdminAuditLogServiceImplTest.java` | Testing | 81 | 3148 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/test/java/com/sakuralearn/sakuralearn_backend/service/impl/ProgressServiceImplTest.java` | Testing | 134 | 6673 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/.gitignore` | Frontend/Configuration | 24 | 277 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/.vite/deps/_metadata.json` | Generated | 8 | 153 | METADATA_ONLY | REVIEWED | Tracked generated Vite cache; structure/version inspected |
| `sakuralearn-frontend/.vite/deps/package.json` | Generated | 3 | 26 | METADATA_ONLY | REVIEWED | Tracked generated Vite cache; structure/version inspected |
| `sakuralearn-frontend/index.html` | Frontend/Configuration | 16 | 370 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/package-lock.json` | Dependency | 1353 | 46506 | TARGETED | REVIEWED | Dependency/data structure and relevant versions/distributions inspected |
| `sakuralearn-frontend/package.json` | Frontend/Configuration | 26 | 608 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/public/favicon.svg` | Frontend/Configuration | 1 | 9522 | METADATA_ONLY | REVIEWED | Static/binary asset; metadata inspected |
| `sakuralearn-frontend/public/icons.svg` | Frontend/Configuration | 24 | 5055 | METADATA_ONLY | REVIEWED | Static/binary asset; metadata inspected |
| `sakuralearn-frontend/src/App.jsx` | Frontend | 17 | 374 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/assets/hero.png` | Binary/Static | — | 44919 | METADATA_ONLY | REVIEWED | Static/binary asset; metadata inspected |
| `sakuralearn-frontend/src/assets/typescript.svg` | Binary/Static | 1 | 1304 | METADATA_ONLY | REVIEWED | Static/binary asset; metadata inspected |
| `sakuralearn-frontend/src/assets/vite.svg` | Binary/Static | 1 | 8710 | METADATA_ONLY | REVIEWED | Static/binary asset; metadata inspected |
| `sakuralearn-frontend/src/components/AuthCard.css` | Security | 57 | 967 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/AuthCard.jsx` | Security | 18 | 458 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/Button.css` | Frontend/Style | 73 | 1432 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/Button.jsx` | Frontend | 19 | 542 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/Input.css` | Frontend/Style | 58 | 1031 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/Input.jsx` | Frontend | 26 | 839 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/common/StatusMessage.jsx` | Frontend | 14 | 333 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/courses/BlockRenderer.jsx` | Frontend | 182 | 7010 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/courses/CourseCard.css` | Frontend/Style | 124 | 2356 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/courses/CourseCard.jsx` | Frontend | 48 | 1637 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/courses/NoteComponent.css` | Frontend/Style | 216 | 4387 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/courses/NoteComponent.jsx` | Frontend | 160 | 5833 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/courses/QuizBlock.css` | Frontend/Style | 249 | 4980 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/courses/QuizBlock.jsx` | Frontend | 212 | 7267 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/courses/QuizEditor.css` | Frontend/Style | 147 | 2670 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/courses/QuizEditor.jsx` | Frontend | 112 | 4014 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/dictionary/DictionaryDetailPopup.css` | Frontend/Style | 720 | 14359 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/dictionary/DictionaryDetailPopup.jsx` | Frontend | 438 | 19086 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/components/dictionary/SaveToNotebookPopup.css` | Frontend/Style | 244 | 4758 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/components/dictionary/SaveToNotebookPopup.jsx` | Frontend | 161 | 5658 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/constants/routes.js` | Frontend | 25 | 942 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/contexts/AuthContext.jsx` | Security | 57 | 1782 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/index.css` | Frontend/Style | 76 | 1595 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/layouts/AuthLayout.css` | Security | 71 | 1316 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/layouts/AuthLayout.jsx` | Security | 19 | 461 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/layouts/MainLayout.css` | Frontend/Style | 54 | 1018 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/layouts/MainLayout.jsx` | Frontend | 28 | 953 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/layouts/Navbar.css` | Frontend/Style | 164 | 2713 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/layouts/Navbar.jsx` | Frontend | 67 | 2101 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/layouts/Sidebar.css` | Frontend/Style | 136 | 2462 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/layouts/Sidebar.jsx` | Frontend | 114 | 3573 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/main.jsx` | Frontend | 10 | 245 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/Dashboard.css` | Frontend/Style | 400 | 7341 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/Dashboard.jsx` | Frontend | 364 | 14283 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/ForgotPassword.jsx` | Frontend | 95 | 4097 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/Login.jsx` | Frontend | 99 | 3536 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/OAuth2RedirectHandler.jsx` | Security | 60 | 2097 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/Profile.css` | Frontend/Style | 198 | 3695 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/Profile.jsx` | Frontend | 204 | 6674 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/Register.jsx` | Frontend | 120 | 4079 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/ResetPassword.jsx` | Frontend | 139 | 6108 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/admin/AuditLogs.css` | Frontend/Style | 340 | 5636 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/admin/AuditLogs.jsx` | Frontend | 260 | 8498 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/admin/UserManagement.css` | Frontend/Style | 296 | 5929 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/admin/UserManagement.jsx` | Frontend | 242 | 9104 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/courses/CourseDetail.css` | Frontend/Style | 383 | 6563 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/courses/CourseDetail.jsx` | Frontend | 260 | 10270 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/courses/CourseForm.css` | Frontend/Style | 174 | 3163 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/courses/CourseForm.jsx` | Frontend | 222 | 8034 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/courses/CourseList.css` | Frontend/Style | 141 | 2532 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/courses/CourseList.jsx` | Frontend | 106 | 3557 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/courses/LearningView.css` | Frontend/Style | 549 | 10483 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/courses/LearningView.jsx` | Frontend | 412 | 16722 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/courses/MyCourses.css` | Frontend/Style | 148 | 2694 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/courses/MyCourses.jsx` | Frontend | 101 | 3938 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/courses/SyllabusManager.css` | Frontend/Style | 399 | 7281 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/courses/SyllabusManager.jsx` | Frontend | 603 | 22604 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/courses/TeacherDashboard.css` | Frontend/Style | 334 | 6366 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/courses/TeacherDashboard.jsx` | Frontend | 202 | 8302 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/dictionary/DictionaryList.css` | Frontend/Style | 233 | 4662 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/dictionary/DictionaryList.jsx` | Frontend | 197 | 6424 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/dictionary/FolderDetail.css` | Frontend/Style | 456 | 9101 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/dictionary/FolderDetail.jsx` | Frontend | 294 | 12298 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/dictionary/Library.css` | Frontend/Style | 281 | 6058 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/dictionary/Library.jsx` | Frontend | 217 | 7520 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/dictionary/MyNotebook.css` | Frontend/Style | 381 | 7359 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/dictionary/MyNotebook.jsx` | Frontend | 246 | 10681 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/dictionary/PracticeModePopup.css` | Frontend/Style | 252 | 4767 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/dictionary/PracticeModePopup.jsx` | Frontend | 96 | 3457 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/pages/dictionary/PracticeSession.css` | Frontend/Style | 276 | 5784 | TARGETED | REVIEWED | Selectors/layout and security-relevant URL/content behavior inspected |
| `sakuralearn-frontend/src/pages/dictionary/PracticeSession.jsx` | Frontend | 230 | 8783 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/routes/AppRoutes.jsx` | Frontend | 221 | 7164 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/adminService.js` | Frontend | 28 | 1022 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/api.js` | Frontend | 66 | 2018 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/authService.js` | Security | 10 | 471 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/courseService.js` | Frontend | 26 | 1216 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/dictionaryService.js` | Frontend | 51 | 1518 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/enrollmentService.js` | Frontend | 7 | 276 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/fileService.js` | Frontend | 15 | 367 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/lessonService.js` | Frontend | 23 | 1265 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/noteService.js` | Frontend | 9 | 433 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/notebookService.js` | Frontend | 29 | 1052 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/progressService.js` | Frontend | 10 | 593 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/quizService.js` | Frontend | 7 | 282 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/srsService.js` | Frontend | 13 | 407 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/services/userService.js` | Frontend | 21 | 681 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/utils/apiError.js` | Frontend | 14 | 456 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/src/utils/formatters.js` | Frontend | 32 | 827 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-frontend/vite.config.js` | Frontend/Configuration | 11 | 226 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Radical.java` | Backend/Data/API | 33 | 698 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/RefreshToken.java` | Backend/Data/API | 34 | 741 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Review.java` | Backend/Data/API | 47 | 1199 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Role.java` | Backend/Data/API | 26 | 475 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/User.java` | Backend/Data/API | 112 | 3095 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/UserAnswer.java` | Backend/Data/API | 37 | 835 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/UserNotebook.java` | Backend/Data/API | 51 | 1271 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/VerificationToken.java` | Backend/Data/API | 36 | 862 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/Vocabulary.java` | Backend/Data/API | 54 | 1399 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/enums/AiModelProvider.java` | Backend/Data/API | 26 | 684 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/enums/ItemType.java` | Backend/Data/API | 8 | 138 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/enums/LessonBlockType.java` | Backend/Data/API | 10 | 167 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/entity/enums/QuizType.java` | Backend/Data/API | 9 | 176 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/BadRequestException.java` | Backend/Exception | 7 | 204 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/ConflictException.java` | Backend/Exception | 7 | 200 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/ForbiddenException.java` | Backend/Exception | 7 | 202 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/GlobalExceptionHandler.java` | Backend/Exception | 106 | 4916 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/exception/ResourceNotFoundException.java` | Backend/Exception | 7 | 216 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/AuthMapper.java` | Security | 15 | 543 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/CourseMapper.java` | Backend/Business | 18 | 705 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/EnrollmentMapper.java` | Backend/Business | 21 | 914 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/LessonBlockMapper.java` | Backend/Business | 14 | 547 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/LessonBlockProgressMapper.java` | Backend/Business | 18 | 761 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/LessonMapper.java` | Backend/Business | 14 | 514 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/LessonProgressMapper.java` | Backend/Business | 17 | 663 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/PersonalNoteMapper.java` | Backend/Business | 18 | 708 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/mapper/UserMapper.java` | Backend/Business | 31 | 1119 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/AuditLogRepository.java` | Backend/Data/API | 29 | 1178 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/CourseRepository.java` | Backend/Data/API | 25 | 1218 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/EnrollmentRepository.java` | Backend/Data/API | 18 | 704 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/FlashcardRepository.java` | Backend/Data/API | 25 | 1258 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/FlashcardReviewRepository.java` | Backend/Data/API | 15 | 689 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/GrammarPointRepository.java` | Backend/Data/API | 20 | 933 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/KanjiRepository.java` | Backend/Data/API | 25 | 1114 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/LessonBlockProgressRepository.java` | Backend/Data/API | 16 | 816 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/LessonBlockRepository.java` | Backend/Data/API | 28 | 1432 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/LessonProgressRepository.java` | Backend/Data/API | 17 | 784 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/LessonRepository.java` | Backend/Data/API | 24 | 1211 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/NotebookFolderRepository.java` | Backend/Data/API | 12 | 468 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/PasswordResetTokenRepository.java` | Backend/Data/API | 15 | 566 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/PersonalNoteRepository.java` | Backend/Data/API | 16 | 663 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/QuizAttemptRepository.java` | Backend/Data/API | 13 | 482 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/QuizQuestionRepository.java` | Backend/Data/API | 13 | 442 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/QuizRepository.java` | Backend/Data/API | 15 | 543 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/RefreshTokenRepository.java` | Backend/Data/API | 18 | 618 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/ReviewRepository.java` | Backend/Data/API | 21 | 789 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/RoleRepository.java` | Backend/Data/API | 13 | 416 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/UserAnswerRepository.java` | Backend/Data/API | 11 | 361 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/UserNotebookRepository.java` | Backend/Data/API | 23 | 1119 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/UserRepository.java` | Backend/Data/API | 20 | 1040 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/VerificationTokenRepository.java` | Backend/Data/API | 16 | 618 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/repository/VocabularyRepository.java` | Backend/Data/API | 20 | 940 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/JwtAuthFilter.java` | Security | 72 | 3240 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/SecurityConfig.java` | Security | 86 | 4937 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/UserDetailsImpl.java` | Security | 80 | 2119 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/security/oauth2/CustomOAuth2UserService.java` | Security | 77 | 3216 | FULL | REVIEWED | Entire textual content read; risk-relevant behavior reviewed |
| `AuditMaster.md` | Audit Instruction (untracked) | — | — | FULL | REVIEWED | Controlling audit procedure; read in full |
| `.cursor/rules/audit-rule.mdc` | Audit Instruction (untracked) | — | — | FULL | REVIEWED | Relevant untracked audit rule; read in full |
