# Sổ Đăng Ký Tuyên Bố (Claims Registry) — Giai đoạn 0

Ngày kiểm thử: 2026-08-03  
Trạng thái: **HOÀN THÀNH cho Checkpoint P0**

Mỗi hàng đại diện cho một `[DOC-CLAIM]`. Giai đoạn 0 cố ý chưa đưa ra quyết định `MATCHED` (Khớp), `PARTIALLY_MATCHED` (Khớp một phần), `MISMATCHED` (Không khớp), hoặc `NOT_VERIFIABLE` (Không thể xác minh). Các tuyên bố mâu thuẫn được giữ lại thành các bản ghi riêng biệt cho giai đoạn đối soát 2.

| Claim ID | Nguồn | Tuyên bố | Phân loại | Độ tin cậy nguồn |
| -------- | ------ | ----- | -------- | ----------------- |
| C001 | `README.md` | SakuraLearn là nền tảng học tiếng Nhật dành cho người Việt kết hợp LMS, từ điển, sổ tay, trắc nghiệm, SRS và quản trị. | Tính năng | Trung bình |
| C002 | `AI check/01-TONG-QUAN-DU-AN.md` | Các vai trò đang hoạt động là STUDENT, TEACHER, và ADMIN với cơ chế RBAC. | Bảo mật | Cao |
| C003 | `AI check/01-TONG-QUAN-DU-AN.md` | Frontend sử dụng React 19, Vite 8, React Router 7, Axios, CSS tùy chỉnh, Lucide, và @dnd-kit. | Phân công công nghệ | Cao |
| C004 | `AI check/01-TONG-QUAN-DU-AN.md` | Backend sử dụng Java 21, Spring Boot 4.0.5, Spring Security, JPA, Flyway, MapStruct, và Lombok. | Phân công công nghệ | Cao |
| C005 | `AI check/01-TONG-QUAN-DU-AN.md` | Cơ sở dữ liệu là PostgreSQL 16 với khóa chính UUID và Flyway V1–V7. | Phân công công nghệ | Cao |
| C006 | `AI check/01-TONG-QUAN-DU-AN.md` | MinIO và Mailpit đang được sử dụng; local Compose cũng định nghĩa Redis và Kafka. | Hạ tầng | Cao |
| C007 | `PV/Overview_Architecture.md` | Hệ thống là một modular monolith được lựa chọn để đảm bảo tính nhất quán cao giữa Auth, Course, Notebook, và SRS. | Kiến trúc | Thấp |
| C008 | `AI check/02-HIEN-TRANG-CODE.md` | Backend có 19 controller, khoảng 82 endpoint, 25 entity, khoảng 40 service, và 6 lớp test. | Chỉ số | Cao |
| C009 | `AI check/02-HIEN-TRANG-CODE.md` | Frontend có khoảng 20 route và 14 module service Axios, sử dụng AuthContext mà không có Redux hoặc React Query. | Chỉ số | Cao |
| C010 | `AI check/04-KIEN-TRUC-NHANH.md` | Backend tuân theo kiến trúc phân tầng controller → service/impl → repository → entity. | Kiến trúc | Cao |
| C011 | `AI check/04-KIEN-TRUC-NHANH.md` | Tất cả các REST API đều sử dụng tiền tố `/api/v1`. | API | Cao |
| C012 | `AI check/04-KIEN-TRUC-NHANH.md` | Điểm khởi chạy ứng dụng bật cơ chế JPA auditing và thực thi bất đồng bộ. | Kiến trúc | Cao |
| C013 | `README.md` | Các file Flyway migration hiện bao gồm V1 schema ban đầu, V2 bộ thủ (radicals), V3 hán tự (kanji), V4 từ vựng, V5 ngữ pháp, V6 đánh giá, và V7 giới hạn ngày SRS. | CSDL | Trung bình |
| C014 | `README.md` | Hibernate chạy với `ddl-auto=validate`; mọi thay đổi schema phải thực hiện qua Flyway. | CSDL | Trung bình |
| C015 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 1 triển khai Auth/RBAC/JWT/email/reset/OAuth hook và đủ ổn định cho bản demo MVP. | Trạng thái Module | Cao |
| C016 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 2 triển khai CRUD cốt lõi, block bài học, xuất bản cơ bản, AI syllabus backend, và review trên cả backend và frontend. | Trạng thái Module | Cao |
| C017 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 3 triển khai giao diện học tập, tiến độ block/bài học/khóa học, mốc thời gian tiếp tục, trắc nghiệm và ghi chú cá nhân. | Trạng thái Module | Cao |
| C018 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 4 triển khai tìm kiếm Kanji/từ vựng/ngữ pháp, thư mục sổ tay, mục đã lưu, và chuyển đổi Romaji sang Hiragana. | Trạng thái Module | Cao |
| C019 | `HienTrang/PHASE_1_P0_STATUS.md` | Module 5 triển khai ôn tập kiểu SM-2, giới hạn hàng ngày và UI ôn tập. | Trạng thái Module | Cao |
| C020 | `docs/MODULE_6_REMAINING_TASKS.md` | Module 6 có các bảng thanh toán và thông báo nhưng chưa có tầng Java/React cho Thanh toán/VNPay hoặc thông báo. | Trạng thái Module | Cao |
| C021 | `docs/MODULE_7_REMAINING_TASKS.md` | Module 7 có quản lý người dùng, API/UI audit-log, và thống kê cơ bản, nhưng thiếu phân tích đầy đủ, kiểm duyệt và quản trị thanh toán. | Trạng thái Module | Cao |
| C022 | `docs/MODULE_8_REMAINING_TASKS.md` | Module 8 có schema XP/chuỗi ngày (streak) và XP/UI trắc nghiệm đơn giản, nhưng chưa có entity sổ cái XP, chính sách streak máy chủ, huy hiệu, bảng xếp hạng hay nhiệm vụ. | Trạng thái Module | Cao |
| C023 | `docs/00_MASTER_SPECIFICATION.md` | Module 1 ở trạng thái "Sẵn sàng Demo" với đăng ký/đăng nhập, xác minh email, quay vòng/thu hồi refresh token lưu CSDL, hồ sơ, RBAC, xóa mềm và theo dõi audit. | Trạng thái Module | Trung bình |
| C024 | `docs/MODULE_2_COURSE_LESSON_MANAGEMENT.md` | Khóa học, Bài học, LessonBlock, tải lên media, tìm kiếm, đăng ký học, kiểm soát trạng thái và chế độ xem trước đã hoàn thành. | Trạng thái Module | Trung bình |
| C025 | `docs/MODULE_3_LEARNING_EXPERIENCE_PROGRESS.md` | Trình phát LessonBlock, theo dõi tiến độ, tự động tính toán, truy cập lần cuối, hoàn thành thủ công, ghi chú và tiếp tục học đã hoàn thành. | Trạng thái Module | Trung bình |
| C026 | `docs/MODULE_4_KNOWLEDGE_BASE_DICTIONARY.md` | Thư viện dữ liệu gốc, tìm kiếm đa ngôn ngữ toàn văn, sổ tay, CRUD mục tùy chỉnh, ghi chú cá nhân, media và liên kết SRS đã hoàn thành. | Trạng thái Module | Trung bình |
| C027 | `docs/MODULE_5_REVIEW_PRACTICE_SRS.md` | Engine SRS, UI flashcard, trắc nghiệm luyện tập, lọc thẻ đến hạn, tự động tạo thẻ và lịch sử ôn tập đã hoàn thành. | Trạng thái Module | Trung bình |
| C028 | `docs/MODULE_6_MONETIZATION_NOTIFICATION.md` | Tích hợp thanh toán, IPN, mở khóa đăng ký học, lịch sử thanh toán và thông báo trong ứng dụng được lập kế hoạch; email chỉ dùng cho auth. | Trạng thái Module | Trung bình |
| C029 | `docs/MODULE_7_ADMINISTRATION_ANALYTICS.md` | Phạm vi Admin bao gồm quản lý người dùng/nội dung/thanh toán, kiểm thử chi tiết tự động, phân tích, xuất dữ liệu và kiểm duyệt. | Tính năng | Trung bình |
| C030 | `docs/MODULE_8_GAMIFICATION_ENHANCEMENT.md` | Bảng trạng thái chi tiết đánh dấu XP, lên cấp, streak, huy hiệu, bình luận, cache Redis và chế độ tối (dark mode) là đã hoàn thành. | Trạng thái Module | Trung bình |
| C031 | `AI check/SakuraLearn_Interview_Preparation.md` | Dự án có 9 module và 7 module đã triển khai, bao gồm module M9 Notification đã triển khai. | Trạng thái Module | Thấp |
| C032 | `PV/SakuraLearn_Interview_DeepDive.md` | Dự án có 9 module; M9 notification được mô tả riêng, trong khi M6 payment và M8 gamification chỉ mới có schema. | Trạng thái Module | Thấp |
| C033 | `README.md` | Auth bao gồm đăng ký, xác minh email, đăng nhập, refresh token, đăng xuất, quên/đặt lại mật khẩu, hook OAuth2 Google và RBAC. | Tính năng | Trung bình |
| C034 | `docs/MODULE_1_AUTHENTICATION_USER.md` | Đăng nhập trả về access token và refresh token lưu CSDL thời hạn 7 ngày có quay vòng; đăng xuất xóa refresh token. | Bảo mật | Trung bình |
| C035 | `docs/MODULE_1_REMAINING_TASKS.md` | Frontend hiện lưu trữ token cục bộ, đăng xuất chỉ xóa state cục bộ, và auth thiếu các test tích hợp. | Bảo mật | Cao |
| C036 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | Đợt kiểm thử trước phát hiện chức năng đặt lại mật khẩu truyền mật khẩu mới qua query parameter. | Bảo mật | Trung bình (cũ) |
| C037 | `HienTrang/PHASE_1_P0_STATUS.md` | Vấn đề query-string khi đặt lại mật khẩu đã được khắc phục trong P0. | Bảo mật | Cao |
| C038 | `AI check/02-HIEN-TRANG-CODE.md` | `/api/v1/media/**` cho phép truy cập không cần xác thực (permit-all). | Bảo mật | Cao |
| C039 | `AI check/02-HIEN-TRANG-CODE.md` | `application.yml` chứa các secret hoặc API key dự phòng/mặc định. | Bảo mật | Cao |
| C040 | `AI check/02-HIEN-TRANG-CODE.md` | Một JWT không hợp lệ vẫn tiếp tục đi qua chuỗi filter và chỉ bị từ chối ở bảo mật endpoint sau đó nếu có áp dụng. | Bảo mật | Cao |
| C041 | `HienTrang/PHASE_1_P0_STATUS.md` | P0 đã bổ sung các kiểm tra quyền sở hữu đối với thư mục sổ tay, ôn tập flashcard và tiến độ học tập. | Bảo mật | Cao |
| C042 | `HienTrang/PHASE_1_P0_STATUS.md` | P0 áp dụng xử lý TextSanitizer dùng chung cho đánh giá, ghi chú sổ tay, dữ liệu thư mục và trường tùy chỉnh sổ tay. | Bảo mật | Cao |
| C043 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | Đợt kiểm thử trước phát hiện tài khoản admin mặc định với mật khẩu đã biết và ghi log mật khẩu dạng văn bản thuần. | Bảo mật | Trung bình (cũ) |
| C044 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | Báo cáo đó sau đó đánh dấu profile, dọn dẹp secret, hạn chế seeder, đổi body đặt lại mật khẩu, dọn log debug và test trọng tâm là đã hoàn thành. | Lộ trình | Trung bình (cũ) |
| C045 | `docs/DATA_AND_MIGRATION_TASKS.md` | V2 thay đổi ký tự bộ thủ từ mã số Kangxi sang dạng chữ đồ họa trong khi V3 vẫn tra cứu giá trị số, dẫn đến nhiều giá trị `kanji.radical_id` bị null sau khi migration sạch. | CSDL | Cao |
| C046 | `docs/DATA_AND_MIGRATION_TASKS.md` | `database/init_schema_v1.sql` trùng lặp với V1 và có nguy cơ sai lệch so với schema runtime của Flyway. | CSDL | Cao |
| C047 | `database/init_schema_v1.sql` | Schema tham chiếu định nghĩa các bảng dựa trên UUID cho auth, LMS, progress, dictionary, SRS, payment, notification, gamification, AI, analytics và event logging. | CSDL | Trung bình (chỉ tham chiếu) |
| C048 | `database/init_schema_v1.sql` | Schema tham chiếu bao gồm các chỉ mục GIN cho mảng âm đọc Kanji nhưng không có các chỉ mục full-text từ vựng được đề xuất. | CSDL | Trung bình (chỉ tham chiếu) |
| C049 | `docs/MODULE_4_KNOWLEDGE_BASE_DICTIONARY.md` | Tìm kiếm từ điển sử dụng `tsvector` của PostgreSQL và chỉ mục GIN. | Hiệu năng | Trung bình |
| C050 | `README.md` | Từ điển chứa 300K+ bản ghi và sử dụng EntityGraph/JOIN kết hợp tìm kiếm full-text dựa trên GIN dưới 500 ms. | Hiệu năng | Trung bình |
| C051 | `AI check/01-TONG-QUAN-DU-AN.md` | Từ điển chứa khoảng 20K+ từ. | Chỉ số | Cao |
| C052 | `AI check/04-KIEN-TRUC-NHANH.md` | Dữ liệu mẫu (seed) có khoảng 3K Kanji và 22K mục từ vựng. | Chỉ số | Cao |
| C053 | `PV/SakuraLearn_Interview_DeepDive.md` | Từ điển có khoảng 3K Kanji, 21K từ vựng, và 847 mẫu ngữ pháp. | Chỉ số | Thấp |
| C054 | `AI check/SakuraLearn_Interview_Preparation.md` | Cơ sở dữ liệu có 20 bảng, 14 bảng triển khai đầy đủ và 6 bảng chỉ có schema. | Chỉ số | Thấp |
| C055 | `PV/SakuraLearn_Interview_DeepDive.md` | Cơ sở dữ liệu có 30 bảng. | Chỉ số | Thấp |
| C056 | `AI check/02-HIEN-TRANG-CODE.md` | Backend có 6 lớp test và 12 test vượt qua, bao phủ khoảng 7% diện tích 82 endpoint. | Kiểm thử | Cao |
| C057 | `HienTrang/PHASE_1_P0_STATUS.md` | `mvnw test` vượt qua với 12 test, 0 thất bại, lỗi hay bỏ qua. | Kiểm thử | Cao |
| C058 | `README.md` | Bản build sản xuất frontend cục bộ và các test trọng tâm backend mới nhất đã vượt qua. | Kiểm thử | Trung bình |
| C059 | `docs/FRONTEND_REMAINING_TASKS.md` | `npm run build` thành công với bundle JavaScript khoảng 495 KB. | Kiểm thử | Cao |
| C060 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | Vào 2026-04-30, build frontend và test Spring context đã vượt qua, chỉ có một test backend. | Kiểm thử | Trung bình (cũ) |
| C061 | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` | CI Backend chạy `mvn package` nhưng không chạy hoặc chặn theo `mvn test`; CI frontend chạy build. | Hạ tầng | Cao |
| C062 | `docs/FRONTEND_REMAINING_TASKS.md` | Frontend không có ESLint, TypeScript, test tự động, hay `.env.example`. | Kiểm thử | Cao |
| C063 | `AI check/02-HIEN-TRANG-CODE.md` | Không có controller test hoặc auth integration test nào. | Kiểm thử | Cao |
| C064 | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` | PostgreSQL, MinIO, và Mailpit được mã nguồn ứng dụng sử dụng, trong khi các phụ thuộc Redis, Kafka, Rabbit/AMQP, và WebSocket không được dùng. | Hạ tầng | Cao |
| C065 | `docs/01_TECHNICAL_STACK_AND_STANDARDS.md` | Redis/Spring Cache lưu dữ liệu từ điển, hàng chờ SRS, và session; Kafka hỗ trợ các sự kiện phân tán. | Hạ tầng | Trung bình |
| C066 | `README.md` | Docker Compose cung cấp PostgreSQL, Redis, Mailpit, MinIO, và Kafka cho môi trường phát triển cục bộ. | Hạ tầng | Trung bình |
| C067 | `README.md` | CI Backend khởi động PostgreSQL/Redis và chạy Maven package; CI frontend cài đặt và build. | Hạ tầng | Trung bình |
| C068 | `docs/01_TECHNICAL_STACK_AND_STANDARDS.md` | CI chạy Maven test và đóng gói artifact khi push/PR vào main và develop. | Hạ tầng | Trung bình |
| C069 | `README.md` | AI syllabus sử dụng Spring AI với OpenAI/Gemini và cơ chế dự phòng đa mô hình về template cục bộ. | Tính năng | Trung bình |
| C070 | `README.md` | Trình tạo AI syllabus thử GPT-4o, Gemini Pro, và Grok trước khi dự phòng về cục bộ. | Tính năng | Trung bình |
| C071 | `AI check/SakuraLearn_Interview_Preparation.md` | AI cung cấp giải thích ngữ pháp, bối cảnh từ vựng và gia sư hội thoại có lưu trữ lịch sử chat. | Tính năng | Thấp |
| C072 | `PV/SakuraLearn_Interview_DeepDive.md` | Tính năng AI syllabus tồn tại, nhưng bảng AI chat và lịch sử gia sư 10 tin nhắn cũng được mô tả. | Tính năng | Thấp |
| C073 | `README.md` | Phát media hỗ trợ lưu trữ đối tượng MinIO và phản hồi theo dải HTTP (range headers). | Tính năng | Trung bình |
| C074 | `docs/MODULE_2_COURSE_LESSON_MANAGEMENT.md` | Tải lên media trả về URL đã ký giới hạn thời gian và đăng ký khóa học trả phí yêu cầu thanh toán thành công. | Tính năng | Trung bình |
| C075 | `docs/MODULE_3_LEARNING_EXPERIENCE_PROGRESS.md` | Video tự động hoàn thành ở 85%, audio ở 80%, trắc nghiệm ở 70%, và tiến độ loại trừ các block đã xóa mềm. | Tính năng | Trung bình |
| C076 | `HienTrang/STABILIZATION_AND_REFACTORING_TASKS.md` | Ngưỡng hoàn thành video/audio vẫn là một nhiệm vụ còn lại. | Tính năng | Cao |
| C077 | `docs/MODULE_5_REVIEW_PRACTICE_SRS.md` | SRS tuân theo SM-2 với chất lượng 1–5, khoảng thời gian 1 và 6 ngày, sau đó nhân với hệ số dễ (ease factor), hệ số dễ tối thiểu là 1.3. | Tính năng | Trung bình |
| C078 | `HienTrang/PHASE_1_P0_STATUS.md` | Tính toán SRS được tách thành `SrsCalculatorService` và bao phủ bởi 6 kịch bản kiểm thử trọng tâm. | Kiểm thử | Cao |
| C079 | `docs/FRONTEND_REMAINING_TASKS.md` | `SaveToNotebookPopup.jsx` và `Login.jsx` hardcode URL backend thay vì dùng đồng nhất URL gốc API/môi trường tập trung. | API | Cao |
| C080 | `docs/FRONTEND_REMAINING_TASKS.md` | Tên trường trả về token của Frontend có thể không đồng nhất (`token` so với `accessToken`). | API | Cao |
| C081 | `HienTrang/PHASE_2_STEP_1_PLAN.md` | 14 trong 19 controller dùng `ResponseEntity<?>` kiểu đại diện (wildcard); DictionaryController bộc lộ trực tiếp entity. | API | Thấp |
| C082 | `HienTrang/PHASE_2_STEP_1_PLAN.md` | NotebookController sử dụng map thô cho 2 request body, một số request DTO thiếu validation, và định dạng response thành công không nhất quán. | API | Thấp |
| C083 | `playbook/01_backend_standards.md` | Chuẩn contract bắt buộc là `ResponseEntity<ApiResponse<T>>`, chỉ bộc lộ DTO qua API, xử lý exception an toàn tập trung, và kiểm tra quyền sở hữu. | Kiến trúc | Trung bình |
| C084 | `AI check/02-HIEN-TRANG-CODE.md` | `NotebookService` dài khoảng 467 dòng và ôm đồm nhiều trách nhiệm; các file frontend chính dài từ khoảng 400 đến 600 dòng. | Kiến trúc | Cao |
| C085 | `HienTrang/PHASE_2_STEP_1_PLAN.md` | Việc nạp dữ liệu notebook trùng lặp switch theo loại mục và gọi repository theo từng mục; tiền xử lý tìm kiếm từ điển bị trùng lặp. | Hiệu năng | Thấp |
| C086 | `PV/Engineering_Review_Honest.md` | Nạp dữ liệu notebook có nguy cơ truy vấn N+1, tìm kiếm cơ bản dùng LIKE, và một số kiểm tra quyền sở hữu/sanitization bị thiếu tại thời điểm đánh giá đó. | Hiệu năng | Thấp |
| C087 | `HienTrang/PROJECT_REVIEW_ISSUES_AND_RECOMMENDATIONS_VN.md` | Đợt kiểm thử trước ghi nhận 14 vấn đề trải dài từ secret, admin mặc định, query đặt lại MK, lưu token, test profile, logging, sai lệch tài liệu, encoding, log debug, test SRS, trạng thái module, CI, dung lượng bundle, đến hạ tầng quá sớm. | Bảo mật | Trung bình (cũ) |
| C088 | `HienTrang/PHASE_1_P0_STATUS.md` | Giai đoạn 1 chỉ có thể tiến tới demo beta sau khi vượt qua thử nghiệm luôn quy trình thủ công (golden-flow) từ đăng nhập đến SRS. | Lộ trình | Cao |
| C089 | `HienTrang/GRAND_ROADMAP_V4.md` | Giai đoạn 2 hướng tới chuyên nghiệp hóa API; Giai đoạn 3 hướng tới VNPay/gamification/search; Giai đoạn 4 hướng tới hạ tầng phân tán. | Lộ trình | Thấp |
| C090 | `docs/MODULE_6_REMAINING_TASKS.md` | Hoàn thành thanh toán yêu cầu sandbox E2E init → VNPay → IPN → kích hoạt đăng ký học kèm email/thông báo, với tính định đẳng (idempotency) và xác minh số tiền. | Lộ trình | Cao |
| C091 | `docs/MODULE_8_GAMIFICATION_ENHANCEMENT.md` | Gamification MVP yêu cầu sổ cái XP có thể kiểm toán, streak phía máy chủ, ít nhất 5 quy tắc huy hiệu, và hành vi mở khóa trên UI. | Lộ trình | Cao |
| C092 | `README.md` | Cấu hình mặc định cục bộ là cổng frontend 3000, backend 8080, PostgreSQL 5433, Mailpit UI 8025, và MinIO 9000/9001. | Triển khai | Trung bình |
| C093 | `QUICK_START.md` | Lệnh reset được ghi nhận trong tài liệu sẽ xóa sạch các Docker volume trước khi khởi động lại hạ tầng. | Triển khai | Trung bình |
| C094 | `docs/development_guidelines.md` | Các file Flyway migration đã áp dụng tuyệt đối không được chỉnh sửa; các thay đổi yêu cầu tạo migration tiến về phía trước (forward-only) và dữ liệu seed sinh ra phải được kiểm tra mẫu thủ công. | CSDL | Quy trình |
| C095 | `docs/DOCS_CODE_CROSS_REFERENCE.md` | Thứ tự ưu tiên sự thật tài liệu là mã nguồn đang chạy, trạng thái Phase 1, các nhiệm vụ còn lại, master specification, sau đó đến hồ sơ/lộ trình. | Lộ trình | Cao |
| C096 | `docs/DOCS_MAINTENANCE_TASKS.md` | Tài liệu công nghệ vẫn cần sửa đổi cho Spring Boot 4.0.5 và CSS tùy chỉnh, cộng với việc dọn dẹp liên kết/encoding còn lại. | Lộ trình | Cao |
| C097 | `README.md` | Thư mục hướng dẫn của repository có tên là `AI đánh giá/`. | Kiến trúc | Trung bình |
| C098 | `AI check/README.md` | Bản thân thư mục hướng dẫn cũng được ghi nhận trong tài liệu là `AI đánh giá/`. | Kiến trúc | Cao |
| C099 | `HienTrang/COMPREHENSIVE_UPGRADE_PLAN_MODULES_1-5.md` | Các profile Spring dev/test/prod đã tồn tại. | Hạ tầng | Thấp |
| C100 | `docs/INFRASTRUCTURE_AND_CI_TASKS.md` | Việc tạo các Spring profile tách biệt dev/test/prod vẫn là nhiệm vụ P1. | Hạ tầng | Cao |

## Ghi chú đối soát Giai đoạn 2 (không phải kết luận)

Các nhóm sau đây cố ý giữ lại các xung đột cần có bằng chứng mã nguồn/runtime sau này:

- **Phân loại/Trạng thái Module:** C015–C032.
- **Sửa lỗi bảo mật so với nhiệm vụ vẫn đang mở:** C035–C044.
- **Quy mô CSDL/Tìm kiếm và Chỉ mục:** C045–C055.
- **Kiểm thử và CI:** C056–C068.
- **Phạm vi triển khai AI:** C069–C072.
- **Ngưỡng hoàn thành:** C075–C076.
- **Contract API và hành vi URL/Token ở Frontend:** C079–C083.
- **Đường dẫn hướng dẫn Repository:** C097–C098.
- **Spring profiles:** C099–C100.
