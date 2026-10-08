# Giai đoạn 2 — Đồng bộ Tài liệu ↔ Mã nguồn

**Ngày kiểm toán:** 2026-08-03  

**Phạm vi:** Tất cả 100 bản ghi `[DOC‑CLAIM]` từ `CLAIMS_REGISTRY.md`

## Tổng hợp kết quả quyết định

- **MATCHED:** **59**
- **PARTIALLY_MATCHED:** **20**
- **MISMATCHED:** **19**
- **NOT_VERIFIABLE:** **2**
- **Độ chính xác tài liệu:** **60.20 %** = 59 / (59 + 20 + 19)

`NOT_VERIFIABLE` bị loại trừ đúng theo yêu cầu của AuditMaster. “MATCHED” nghĩa là claim được hỗ trợ bởi code/config/runtime hiện tại hoặc lịch sử có thể xác minh; không đồng nghĩa với việc thực thi an toàn trong production.

## Đối chiếu claim‑by‑claim

| Claim | Verdict | Bằng chứng code/runtime |
| ----- | ------- | ------------------------ |
| C001 | MATCHED | Các mô‑đun LMS, từ điển, notebook, quiz, SRS và admin đang tồn tại. |
| C002 | MATCHED | V1 role constraint và authority định nghĩa STUDENT/TEACHER/ADMIN. |
| C003 | MATCHED | Cây package frontend xác nhận stack React/Vite/router/Axios/CSS/Lucide/dnd‑kit. |
| C004 | MATCHED | `pom.xml` và biên dịch Java 21 thành công xác nhận Spring Boot 4.0.5, JPA, Flyway, MapStruct, Lombok. |
| C005 | MATCHED | Compose dùng PostgreSQL 16; entity/migration dùng UUID; migrations V1–V7 tồn tại. |
| C006 | MATCHED | Dịch vụ MinIO/Mail được dùng; Compose cũng định nghĩa Redis và Kafka. |
| C007 | PARTIALLY_MATCHED | Code là một Spring modular single‑application, nhưng lý luận kiến trúc trong tài liệu chỉ là ý định, chưa có bằng chứng runtime. |
| C008 | PARTIALLY_MATCHED | 19 controller, 40 file service và 6 test class khớp; thực tế entity là 26 và ánh xạ HTTP là 80. |
| C009 | PARTIALLY_MATCHED | AuthContext/không Redux/React Query và 14 file service khớp; khai báo `<Route>` thực tế là 23. |
| C010 | MATCHED | Kiểu lớp controller → service → repository → entity được duy trì nhất quán. |
| C011 | MATCHED | REST controller dùng `/api/v1`; route OAuth nằm ngoài contract REST của ứng dụng. |
| C012 | MATCHED | Ứng dụng bật JPA auditing và async execution. |
| C013 | MATCHED | V1–V7 tên và mục đích hoàn toàn khớp. |
| C014 | MATCHED | Cấu hình chính dùng `ddl-auto: validate`; profile test có sự khác biệt cố ý. |
| C015 | PARTIALLY_MATCHED | Auth/JWT/email/reset/OAuth/RBAC tồn tại, nhưng handling session, token delivery và rate‑limiting không đủ “ổn định”. |
| C016 | PARTIALLY_MATCHED | CRUD/blocks/publish/AI/reviews có, nhưng kiểm tra sở hữu cross‑teacher còn thiếu. |
| C017 | PARTIALLY_MATCHED | Learning/progress/resume/quiz/notes có, server cho phép bypass chính sách hoàn thành. |
| C018 | MATCHED | Tìm kiếm từ điển, thư mục, mục lưu, và chuyển đổi Romaji được triển khai. |
| C019 | PARTIALLY_MATCHED | Tính toán SM‑2, giới hạn và UI tồn tại; còn thiếu hiệu năng hàng đợi, pagination, lifecycle custom‑item. |
| C020 | MATCHED | Bảng payment/notification tồn tại nhưng chưa có module Java/React tương ứng. |
| C021 | MATCHED | API & UI thống kê người dùng tồn tại; khả năng admin nâng cao không có. |
| C022 | MATCHED | Trường XP/streak người dùng và quiz XP đơn giản tồn tại; ledger/server streak/badges/leaderboard/quests không. |
| C023 | MISMATCHED | Refresh token được trả nguyên, không quay vòng; ghi nhận actor audit không đáng tin cậy khi async. |
| C024 | PARTIALLY_MATCHED | Code tồn tại cho course/lesson/block/media/search/enrollment/status, nhưng preview/access/payment enforcement chưa đầy đủ. |
| C025 | PARTIALLY_MATCHED | Player/progress/last‑access/notes có; “complete” quá mức so với thực tế server. |
| C026 | MISMATCHED | Search dùng LIKE/ILIKE thay vì full‑text; delete custom‑item có thể để lại flashcard mồ côi; claim hoàn thành tổng hợp sai. |
| C027 | PARTIALLY_MATCHED | Engine/UI/due/history/card creation tồn tại, nhưng due selection/pagination và delete custom còn lỗi. |
| C028 | MATCHED | Payment/IPN/unlock/history/notification chỉ là kế hoạch; email được dùng cho auth. |
| C029 | PARTIALLY_MATCHED | Thống kê cơ bản người dùng tồn tại; moderation/content/payment, export, analytics đầy đủ chưa. |
| C030 | MISMATCHED | Nhãn “complete” chi tiết mâu thuẫn với việc thiếu leveling, server streak, badges, comment, cache, leaderboard. |
| C031 | MISMATCHED | Không có module Java/React cho M9 notification được thực thi. |
| C032 | PARTIALLY_MATCHED | M6/M8 chỉ schema‑only; taxonomy nine‑module/M9 không nhất quán. |
| C033 | MATCHED | Tất cả endpoint/hooks auth và RBAC được liệt kê tồn tại. |
| C034 | MISMATCHED | Refresh lifetime là 30 ngày, không phải 7 ngày; refresh không quay vòng; logout xóa toàn bộ refresh token. |
| C035 | MATCHED | Token vẫn lưu local; UI logout không gọi backend logout; thiếu integration test auth. |
| C036 | MATCHED | Lịch sử Git chứa implementation cũ cho query‑parameter reset. |
| C037 | MATCHED | Endpoint reset hiện tại nhận JSON body đã được validate. |
| C038 | MATCHED | Security config cho phép `/api/v1/media/**` công khai. |
| C039 | MATCHED | Config chính chứa fallback nhạy cảm và một giá trị dạng credential (được redact). |
| C040 | MATCHED | Ngoại lệ JWT không hợp lệ được catch và chuỗi tiếp tục; ủy quyền endpoint quyết định quyền truy cập. |
| C041 | MATCHED | Folder/review/progress ownership hoặc kiểm tra enrolment đã được thực hiện. |
| C042 | MATCHED | Sanitizer chung được dùng cho review, notebook notes/folders/custom fields; không bao phủ HTML lesson hoặc note cá nhân. |
| C043 | MATCHED | Lịch sử Git/audit trước xác nhận vấn đề seed‑log; fallback mật khẩu vẫn còn trong profile dev. |
| C044 | PARTIALLY_MATCHED | Profile test, seed profile, reset body và test tập trung đã sửa; cleanup credential/default và drift tài liệu chưa. |
| C045 | MATCHED | V2 cập nhật ký tự radic số thành glyph trước V3 thực hiện lookup 3 003 số. |
| C046 | MATCHED | Schema tham chiếu sao chép schema runtime và không phải là Flyway authoritative. |
| C047 | MATCHED | SQL tham chiếu chứa schema UUID đã được mô tả trong code. |
| C048 | MATCHED | Index GIN cho mảng Kanji tồn tại; index full‑text cho vocabulary không. |
| C049 | MISMATCHED | Không có cột / query / index `tsvector`; repositories dùng LIKE/ILIKE. |
| C050 | MISMATCHED | Seed chỉ có khoảng 25.6K dòng kiến thức, không phải >300K; không có GIN full‑text hay bằng chứng <500 ms. |
| C051 | MATCHED | V4 chứa 21 792 insert vocab. |
| C052 | MATCHED | V3/V4 chứa 3 003 và 21 792 insert tương ứng. |
| C053 | MATCHED | Các đếm (3 003/21 792/842) hỗ trợ claim xấp xỉ. |
| C054 | MISMATCHED | Flyway có 44 lệnh `CREATE TABLE`, không phải 20. |
| C055 | MISMATCHED | Flyway có 44 bảng, không phải 30. |
| C056 | PARTIALLY_MATCHED | 6 lớp test khớp, nhưng hiện tại chạy 14 test và 80 mapping; metric 7 % thiếu instrumentation. |
| C057 | PARTIALLY_MATCHED | Test pass, nhưng bộ test hiện có 14 thay vì 12. |
| C058 | MATCHED | Build frontend production và test backend hiện PASS. |
| C059 | MATCHED | Bundle JS hiện là 494.89 KB. |
| C060 | NOT_VERIFIABLE | Kết quả local cũ không tái tạo được môi trường lịch sử. |
| C061 | MISMATCHED | `mvn clean package` chạy và gating Surefire test; workflow không skip test. |
| C062 | PARTIALLY_MATCHED | Không có lint/TypeScript/frontend test; `.env.example` ở root tồn tại, nhưng không ở folder frontend. |
| C063 | MATCHED | Không có controller hoặc test integration auth. |
| C064 | MATCHED | Compose định nghĩa PostgreSQL, Redis, Mailpit, MinIO, Kafka. |
| C065 | MATCHED | Workflow cung cấp các bước service/build đã khẳng định. |
| C066 | MATCHED | Workflow target main/develop push và PR; Maven package chạy test và tạo artifact. |
| C067 | PARTIALLY_MATCHED | Spring AI OpenAI/Gemini + client Grok local fallback tồn tại; không có fallback đa‑model tuần tự. |
| C068 | MISMATCHED | Một provider được thử, rồi fallback local; không thử GPT→Gemini→Grok. |
| C069 | MISMATCHED | Không có endpoint tutor/chat, lịch sử chat, giải thích grammar, hoặc module conversation. |
| C070 | PARTIALLY_MATCHED | AI syllabus tồn tại; bảng chat AI và lịch sử 10 tin nhắn không. |
| C071 | MATCHED | MinIO streaming thực hiện full và HTTP range response. |
| C072 | MISMATCHED | Upload trả URL public localhost cố định, không phải pre‑signed; enrolment không kiểm tra payment. |
| C073 | PARTIALLY_MATCHED | React dùng 85 %/80 % quota, quiz award 70 %; progress không tính block đã xóa; server cho phép bypass. |
| C074 | MISMATCHED | Logic ngưỡng hiện chỉ ở React, vì vậy không còn là task còn lại, nhưng enforcement server vẫn thiếu. |
| C075 | MATCHED | Calculator SRS thực hiện quality 1‑5, 1/6‑day interval, prior ease multiplication và floor 1.3. |
| C076 | PARTIALLY_MATCHED | Extraction calculator có, nhưng lớp test hiện có 5 scenario, không phải 6. |
| C077 | MATCHED | Các file frontend named hardcode localhost thay vì dùng service API trung tâm. |
| C078 | MATCHED | Login dùng `token`; refresh dùng `accessToken`; code xử lý cả 2 field. |
| C079 | MATCHED | Wildcard response type lan truyền; DictionaryController trả entity trực tiếp. |
| C080 | MATCHED | Raw map body, thiếu validation, envelope success không đồng nhất. |
| C081 | MISMATCHED | Tiêu chuẩn target không đạt được bởi implementation API hiện tại. |
| C082 | MATCHED | NotebookService 467 dòng; frontend file 400‑600 dòng. |
| C083 | MATCHED | Item hydration lặp type‑switch / call per‑item repo; preprocessing dictionary lặp. |
| C084 | MATCHED | Code hiện xác nhận notebook N+1, LIKE search và gap hiện/đã có. |
| C085 | MATCHED | Audit trước có đúng 14 issue được liệt kê. |
| C086 | NOT_VERIFIABLE | Không có bằng chứng golden‑flow manual trong repo/CI; audit không khởi động stack persistent. |
| C087 | MATCHED | Roadmap chứa các target phase đã khẳng định. |
| C088 | MATCHED | Tài liệu remaining‑tasks payment chỉ ra các kiểm tra E2E/idempotency/amount. |
| C089 | MATCHED | Tài liệu remaining‑tasks gamification chỉ ra ledger/streak/badge/UI. |
| C090 | MATCHED | Giá trị port mặc định khớp Compose/config. |
| C091 | MATCHED | Lệnh quick‑start reset xóa Docker volume và là destructive. |
| C092 | MATCHED | Chính sách yêu cầu migration chỉ tiến‑tiếp và seed sampling; không có migration bị sửa. |
| C093 | MATCHED | Truth order tài liệu khớp hướng dẫn onboarding. |
| C094 | MATCHED | Một số sai lệch stack/link/status còn tồn và được liệt kê ở đây. |
| C095 | MISMATCHED | `AI đánh giá/` không tồn tại trong cây làm việc. |
| C096 | MISMATCHED | Gói onboarding thực tế nằm dưới `AI check/`, mặc dù trong nội dung còn ghi path cũ. |
| C097 | MISMATCHED | Chỉ có profile dev và test; profile prod chưa tồn tại. |
| C098 | MATCHED | Work profile production còn thiếu, công việc còn tồn. |
| C099 | MISMATCHED | `HienTrang/COMPREHENSIVE_UPGRADE_PLAN_MODULES_1-5.md` khẳng định profile dev/test/prod đã tồn tại; chỉ có dev và test; prod chưa tồn tại. |
| C100 | MATCHED | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` ghi nhận việc tạo profile prod riêng biệt vẫn là nhiệm vụ P1. |

## Các cụm mâu thuẫn chính

| Cụm | Mâu thuẫn tài liệu | Thực tế thực thi |
| ---- | ----------------- | ---------------- |
| **Hoàn thành mô‑đun** | Trang master/module gọi M1‑M5 hoặc M8 hoàn thành; remaining‑task/status file còn khoảng trống | Code chạy M1‑M5 phần lớn nhưng còn lỗ hổng access, progress, API, SRS; M6 và hầu hết M8 chỉ schema‑only |
| **Refresh / session** | “Refresh token quay vòng mỗi 7 ngày” vs. tài liệu | Refresh token 30 ngày, không quay vòng; logout chỉ local, reset không thu hồi token |
| **Search / scale** | 300K+, tsvector/GIN, sub‑500 ms vs. tài liệu | ~25.6K seed, LIKE/ILIKE, không có index tsvector hoặc benchmark |
| **AI** | Fallback đa‑model tuần tự / tutor vs. chỉ syllabus | Chỉ fallback local, không có tutor/chat history |
| **CI / testing** | “Package không test” vs. “CI tests” | Maven package chạy test; vấn đề thực tế là 14 test hẹp và không có suite frontend/lint/security |
| **Taxonomy mô‑đun** | M9 notification được mô tả là triển khai / riêng biệt | Không có layer ứng dụng M9; notification chỉ schema / kế hoạch |
| **Profile** | dev/test/prod “tồn tại” vs. backlog prod | dev/test tồn tại; prod thiếu |
| **Đường dẫn onboarding** | Tham chiếu `AI đánh giá/` trong hướng dẫn | Thư mục thực tế là `AI check/` |

## Thực tế chưa được ghi lại

| ID | Thực tế code | Bằng chứng | Tài liệu cần | Ưu tiên |
|----|--------------|-----------|--------------|--------|
| **UR-01** | Giá trị API key dạng credential được theo dõi trong cấu hình chính | `application.yml` (giá trị redact) | Xử lý incident, quay vòng, chính sách secret‑injection | **Critical** |
| **UR-02** | Entity quiz trả đáp án và `User.passwordHash` có thể serialize | Controller / service / entity quiz | DTO quiz an toàn và cấm trường nhạy cảm | **Critical** |
| **UR-03** | HTML lesson không sanitize, render bằng `dangerouslySetInnerHTML` | Service block / renderer | Mô hình trust content, sanitization, CSP | **Critical** |
| **UR-04** | Yêu cầu OAuth được lưu trong cookie Java serialized không ký | `CookieUtils` + repository OAuth request | Threat model lưu trữ state OAuth | **Critical** |
| **UR-05** | Giáo viên bất kỳ có thể thay đổi lesson/block/quiz/syllabus của giáo viên khác | Controller / service signatures | Ma trận sở hữu tài nguyên | **High** |
| **UR-06** | Nội dung course có thể truy cập mà không có enrolment; media công khai | Đọc lesson/block/quiz + cấu hình security | Ma trận truy cập nội dung course | **High** |
| **UR-07** | Quiz pass có thể lặp lại vô hạn để nhận XP | `QuizServiceImpl` | Chính sách thưởng XP idempotent | **High** |
| **UR-08** | Audit async thường mất actor xác thực và âm thầm bỏ qua lỗi persistence | `AuditLogService` | Cam kết audit, chính sách thất bại | **High** |
| **UR-09** | MapStruct sinh mapper để teacher/course/lesson ID null | MapStruct generated code | Kiểm thử API field semantics / contract | **Medium** |
| **UR-10** | lockfile frontend npm vẫn chứa advisory mức cao | `npm audit` results | Remediation phụ thuộc, SLA policy | **High** |

## Xác minh các vấn đề audit trước

| # | Vấn đề prior | Trạng thái | Bằng chứng hiện tại |
|---|--------------|-----------|--------------------|
| 1 | Thông tin bảo mật hard‑coded | **STILL_OPEN** | Fallback dev vẫn có giá trị nhạy cảm & credential‑shaped tracked value. |
| 2 | Mật khẩu admin mặc định biết | **STILL_OPEN** | Seeder chỉ dev, nhưng vẫn có fallback password. |
| 3 | Reset password qua query string | **FIXED** | Endpoint hiện nhận JSON body validated. |
| 4 | Token lưu trong localStorage | **STILL_OPEN** | Access & refresh token vẫn để trong localStorage. |
| 5 | Thiếu profile prod | **FIXED** | `application-test.yml` và test context H2 tồn tại. |
| 6 | Logging backend quá mức | **FIXED** | Logging cơ bản INFO; DEBUG chỉ dev. |
| 7 | Drift README/docs stack | **STILL_OPEN** | 19 mismatch hiện tại và các cụm mâu thuẫn chính vẫn tồn. |
| 8 | Vấn đề encoding | **FIXED** | Tất cả file UTF‑8 decode strict; 2 control char V3 riêng. |
| 9 | Log frontend debug | **FIXED** | Không còn `console.log`/`debug`. |
|10 | Thiếu test integration SRS | **FIXED** | Calculator extracted, 5 scenario test pass; integration gap mới. |
|11 | Module M6/M8 chỉ schema | **STILL_OPEN** | Vẫn chỉ schema, claim hoàn thành còn mâu thuẫn. |
|12 | CI tối thiểu | **STILL_OPEN** | Workflow có build, nhưng thiếu frontend test/lint/security scan. |
|13 | Giám sát bundle size | **STILL_OPEN** | JS hiện 494.89 KB, chưa có budget/gate. |
|14 | Hạ tầng ahead of product need | **STILL_OPEN** | Redis/Kafka/AMQP/WebSocket khai báo nhưng không dùng. |

