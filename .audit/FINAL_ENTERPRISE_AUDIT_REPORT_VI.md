# SakuraLearn — Báo Cáo Kiểm Thử Doanh Nghiệp Phân Cấp Cuối Cùng (Final Enterprise Audit Report)

Ngày audit: **2026-08-03**  
Snapshot repository: **`develop@2175947f481493bcdbd1fb9c45c50a9755a52b85`**  
Quy trình: **AuditMaster v3.0, Phase 0 → 4**  
Chế độ: **Chỉ đọc mã nguồn (read-only source audit); không chỉnh sửa mã nguồn**

## 1. Kết luận điều hành

**Kết luận phát hành: NO-GO cho môi trường sản xuất (Production).**

Repository có nền tảng MVP đáng kể: module 1–5 có code thực, backend biên dịch và 14/14 test hiện có đều pass, frontend production build pass, Flyway quản lý schema, và tài liệu/backlog tương đối phong phú. Tuy nhiên, bốn vấn đề nguyên nhân gốc rễ Nghiêm trọng (Critical) và mười ba vấn đề Cao (High) khiến hệ thống chưa an toàn để xử lý người dùng thật, nội dung trả phí hoặc thông tin đăng nhập/khóa bí mật sản xuất.

Bốn blocker nghiêm trọng nhất:

1. Base configuration đang theo dõi một API key dạng thông tin bảo mật và giữ các cấu hình dự phòng bảo mật; giá trị đã được che khuất (redact) trong quá trình audit.
2. Quiz API trả trực tiếp JPA entity, làm lộ đáp án và thuộc tính `passwordHash` có thể serialize.
3. OAuth state cookie được native Java deserialization trực tiếp từ dữ liệu phía client mà không có chữ ký/xác thực.
4. Nội dung bài học (lesson) không được sanitize được render bằng `dangerouslySetInnerHTML`, trong khi access/refresh token nằm trong localStorage — tạo nên chuỗi khai thác Stored XSS → đánh cắp token.

Ngoài ra, mọi Teacher có thể sửa bài học/block/trắc nghiệm/AI syllabus của Teacher khác; nội dung có thể đọc mà không cần đăng ký học; tiến độ/XP/đăng ký học tin tưởng hoàn toàn vào client hoặc thiếu chính sách phân quyền; media công khai; migration sạch làm mất toàn bộ 3.003 quan hệ Kanji–bộ thủ; vết kiểm toán (audit trail) và độ bao phủ kiểm thử chưa đủ làm cơ chế kiểm soát sản xuất.

## 2. Phạm vi và độ bao phủ (Coverage)

| Hạng mục | Kết quả |
| --- | ---: |
| Các file được theo dõi (Tracked files) | 401 |
| Hướng dẫn kiểm thử ẩn bổ sung | 2 |
| Đọc ĐẦY ĐỦ (FULL) | 358 |
| Xem theo MỤC TIÊU (TARGETED) | 35 |
| Chỉ đọc METADATA (METADATA_ONLY) | 7 |
| KHÔNG THỂ ĐỌC (UNREADABLE) | 1 |
| Độ bao phủ tổng thể theo danh mục | 99,75% (400/401) |
| Độ bao phủ ĐẦY ĐỦ đối với các file quan trọng | 100% (105/105) |
| Tài liệu phát hiện được | 68 |
| Tài liệu có thể đọc đã xem xét | 67/67 |
| Tuyên bố tài liệu đã đối soát | 100/100 |

File không đọc được duy nhất là `diagram/sakuralearn_db@localhost.png`, đã ở trạng thái xóa trước khi audit bắt đầu. ERD còn lại đã được kiểm tra trực quan. Generated cache, lock/data maps, CSS và static assets dùng mức đọc thấp hơn đúng quy tắc AuditMaster; auth, authorization, controllers, business services, migrations, config, CI và tests đều được đọc ĐẦY ĐỦ (FULL).

## 3. Kiến trúc và triển khai thực tế

| Phân vùng | Thực tế triển khai |
| --- | --- |
| Backend | Java 21, Spring Boot 4.0.5, MVC/Security/JPA, Hibernate 7, Flyway, MapStruct, Spring AI |
| Frontend | React 19.2.5, Vite 8.0.8, React Router 7.14.1, Axios 1.15.0, CSS tùy chỉnh |
| Cơ sở dữ liệu | PostgreSQL 16, UUID/JSONB/array/enums, Flyway V1–V7, 44 câu lệnh bảng |
| Auth | Email/mật khẩu, JWT, DB refresh token, xác minh/đặt lại email, Google OAuth2 |
| Hạ tầng thực tế sử dụng | PostgreSQL, MinIO, SMTP/Mailpit |
| Khai báo nhưng chưa dùng | Redis, Kafka, AMQP/Rabbit, WebSocket |
| Quy mô Backend | 19 controller, 80 HTTP mapping, 26 entity, 40 file service, 25 repository |
| Quy mô Frontend | 23 khai báo route, 14 file service |
| Quy mô dữ liệu mẫu | 3.003 Kanji, 21.792 từ vựng, 842 ngữ pháp |

Kiến trúc modular monolith/layered phù hợp với giai đoạn MVP, nhưng ranh giới service chưa duy trì nhất quán các kiểm tra phân quyền/nghiệp vụ. Persistence entities đôi khi trở thành API contract; client đang giữ nhiều quy tắc nghiệp vụ lẽ ra thuộc phía server.

## 4. Các phát hiện theo mức độ nghiêm trọng

| Mức độ | Số lượng | Ý nghĩa đối với môi trường sản xuất |
| --- | ---: | --- |
| Critical (Nghiêm trọng) | 4 | Có thể lộ credential/hash/token, rủi ro mức RCE hoặc chiếm đoạt tài khoản |
| High (Cao) | 13 | Lỗi BOLA/vượt quyền nội dung, sai quyền hạn/tiến độ/XP/dữ liệu, rủi ro phụ thuộc/vận hành lớn |
| Medium (Trung bình) | 8 | Lỗi giao dịch/API/quy mô/kiểm thử/contract đáng kể |
| Low (Thấp) | 1 | Lỗi chất lượng dữ liệu phạm vi hẹp |
| **Tổng cộng** | **26** | 20 Mới, 6 Tồn đọng |

### Mức độ Nghiêm trọng (Critical)

- **F-001:** Credential bị theo dõi và secret dự phòng không thất bại ngay (fail-fast).
- **F-002:** Quiz entity response làm lộ đáp án và password hash.
- **F-003:** Cookie OAuth không được ký đi trực tiếp vào native Java deserialization.
- **F-004:** Stored XSS kết hợp lưu trữ token ở localStorage.

### Mức độ Cao (High)

- **F-005:** Các thao tác sửa đổi của Teacher thiếu kiểm tra quyền sở hữu đối tượng.
- **F-006:** Nội dung/media thiếu phân quyền xuất bản/đăng ký học.
- **F-007:** OAuth đưa token/PII vào query parameter chuyển hướng (redirect).
- **F-008:** localStorage + UI logout không hủy session ở phía backend.
- **F-009:** Server cho phép client tự gửi trạng thái hoàn thành nội dung học.
- **F-010:** Đăng ký học bỏ qua trạng thái xuất bản/giá cả/thanh toán.
- **F-011:** Cày XP bài trắc nghiệm không giới hạn/không có sổ cái.
- **F-012:** Vòng đời tải lên/công khai/xóa media không an toàn.
- **F-013:** Mâu thuẫn bộ thủ V2/V3 làm null 3.003 `radical_id` trên migration sạch.
- **F-014:** Thiếu giới hạn tần suất (rate limit), phản hồi quên mật khẩu đồng nhất, quay vòng và thu hồi khi đặt lại mật khẩu.
- **F-015:** Audit bất đồng bộ không đảm bảo định danh người thực hiện/độ tin cậy chuyển giao.
- **F-016:** Lockfile của Frontend và script dữ liệu chứa các cảnh báo bảo mật mức Cao.
- **F-023:** Thiếu profile sản xuất/kiểm tra sức khỏe/giám sát/sao lưu/phục hồi; Swagger công khai.

Chi tiết bằng chứng, nguyên nhân gốc rễ, tác động, khuyến nghị, nỗ lực và cách xác minh cho từng vấn đề có trong `FINDINGS_REGISTER.md`.

## 5. Mức độ sẵn sàng của các Module

| Module | Thực tế Mã nguồn | Mức độ sẵn sàng |
| --- | --- | --- |
| M1 Auth/User | Độ rộng tính năng tốt; các vấn đề giao/lưu token, secret, duyệt tài khoản/rate limit/thu hồi/trạng thái OAuth | **Chưa sẵn sàng sản xuất** |
| M2 Course/Lesson | CRUD/publish/media/AI/review có thật; thiếu ownership, quyền nội dung, đăng ký trả phí, chính sách media | **Chưa sẵn sàng sản xuất** |
| M3 Learning/Progress | UI/tiến độ/tiếp tục/quiz/ghi chú có thật; vượt quyền hoàn thành phía server, lộ quiz/lạm dụng XP | **Chưa sẵn sàng sản xuất** |
| M4 Dictionary/Notebook | Dữ liệu/tìm kiếm/sổ tay có thật; lỗi seed bộ thủ, tìm kiếm LIKE, xóa mục tùy chỉnh mồ côi, N+1 | **Beta sau khi sửa lỗi** |
| M5 SRS | Thuật toán/UI/lịch sử/giới hạn ngày có thật; truy vấn/sắp xếp hàng chờ/quy mô và vòng đời tùy chỉnh cần sửa | **Beta sau khi sửa lỗi** |
| M6 Payment/Notification | Chỉ mới có Schema CSDL | **Chưa triển khai** |
| M7 Administration | User/audit/thống kê cơ bản/API/UI có thật; đảm bảo audit, phân tích/kiểm duyệt/quản trị thanh toán còn thiếu | **Chỉ dành cho Demo nội bộ** |
| M8 Gamification | Chỉ có trường User + XP quiz; thiếu sổ cái/streak/huy hiệu/bảng xếp hạng/nhiệm vụ | **Phần lớn chưa triển khai** |
| “M9 Notification” | Không có tầng ứng dụng; chỉ có phân loại/kế hoạch không nhất quán | **Chưa triển khai** |

## 6. Xác minh Runtime

| Kiểm tra | Kết quả |
| --- | --- |
| Backend `mvnw.cmd test` | VƯỢT QUA — 181 nguồn chính biên dịch; 14 test, 0 thất bại/lỗi/bỏ qua |
| Frontend `npm run build` | VƯỢT QUA — 1.871 module; JS 494,89 KB / 149,27 KB gzip |
| Cây phụ thuộc Frontend | VƯỢT QUA để giải quyết |
| Frontend `npm audit` | THẤT BẠI — 6 node lỗ hổng mức Cao, đã có bản sửa lỗi |
| Script dữ liệu `npm audit` | THẤT BẠI — 2 node lỗ hổng mức Cao, đã có bản sửa lỗi |
| Cây phụ thuộc Backend | VƯỢT QUA để giải quyết |
| Bộ quét lỗ hổng Backend | Không có sẵn tại cục bộ |
| Tích hợp E2E PostgreSQL/MinIO/Mail | Chưa chạy; không có bộ test riêng biệt, tránh làm thay đổi dữ liệu cục bộ |
| Frontend lint/typecheck/test | Không có sẵn trong package scripts |

Điểm quan trọng: context test sử dụng H2, tắt Flyway và không kiểm tra JSONB/array/PostgreSQL enums. Do đó test thành công không xác nhận migration sạch V1→V7 hoặc tương thích CSDL sản xuất.

## 7. Đối soát Tài liệu

| Kết luận đối soát | Số lượng |
| --- | ---: |
| MATCHED (Khớp) | 59 |
| PARTIALLY_MATCHED (Khớp một phần) | 20 |
| MISMATCHED (Không khớp) | 19 |
| NOT_VERIFIABLE (Không thể xác minh) | 2 |
| **Độ chính xác tài liệu** | **60,20%** |

Mâu thuẫn lớn tập trung ở mức độ hoàn thành module, quay vòng/thời hạn refresh token, tìm kiếm full-text/dung lượng bản ghi, AI multi-model/gia sư, ngữ nghĩa test CI, phân loại M9, profile prod và đường dẫn hướng dẫn onboarding. Mã nguồn đang chạy xác nhận `mvn package` có chạy test; vấn đề thực sự là bộ test quá hẹp, không phải quy trình bỏ qua test.

Audit cũ: **6 FIXED, 8 STILL_OPEN, 0 REGRESSED, 0 NOT_VERIFIABLE**. Các vấn đề vẫn mở bao gồm cấu hình mặc định bảo mật, dự phòng admin mặc định, localStorage, sai lệch tài liệu, trạng thái module không đồng đều, CI tối thiểu, ngân sách bundle và hạ tầng chưa sử dụng quá sớm.

## 8. Bảng điểm Mức độ Sẵn sàng Sản xuất (Scorecard)

| Phân loại | Điểm /10 | Tóm tắt bằng chứng | Độ tin cậy |
| --- | ---: | --- | --- |
| Kiến trúc | 5,5 | Kiến trúc layered modular monolith rõ ràng; ranh giới invariants/DTO không nhất quán | Cao |
| Backend | 4,5 | Độ rộng tính năng tốt; các lỗi BOLA, bộc lộ entity, hoàn thành/session | Cao |
| Frontend | 4,0 | Build thành công/UI rộng; stored XSS, localStorage, hardcode origin, không có test | Cao |
| Cơ sở dữ liệu | 4,0 | Flyway/schema phong phú; lỗi migration bộ thủ, thiếu full-text, chưa test migration PG | Cao |
| Bảo mật | 1,5 | 4 lỗi Critical, thiếu sót về authz/token/secret/upload/audit | Cao |
| Hiệu năng | 4,0 | SRS in-memory/N+1, quét LIKE, chưa có benchmark/sử dụng cache | Cao |
| DevOps | 3,0 | Có CI/build/Compose; thiếu prod/health/monitoring/backup/rollback | Cao |
| Kiểm thử | 2,5 | 14 test backend vượt qua; độ bao phủ critical/API/browser/PG gần như trống | Cao |
| Tài liệu | 7,0 | Nhiều tài liệu/backlog và thứ tự ưu tiên sự thật tốt | Cao |
| Độ chính xác tài liệu | 6,0 | 60,20% theo công thức AuditMaster | Cao |
| Khả năng bảo trì | 4,5 | Service/component dài, dùng map thô/entity, lỗ hổng mapper ẩn | Cao |
| Sẵn sàng sản xuất | 2,0 | Không thể phát hành khi các lỗi Critical/High còn mở | Cao |

**Độ sẵn sàng doanh nghiệp tổng thể: 2,8/10.** Đây là điểm số bị giới hạn bởi lỗi nghiêm trọng (critical-capped score), không phải trung bình cộng đơn giản. Các lỗi Bảo mật và Tính toàn vẹn dữ liệu ở mức Critical/High được ưu tiên cao hơn số lượng tính năng/kết quả build pass.

## 9. Lộ trình khắc phục (Remediation Roadmap)

### P0 — Khoanh vùng sự cố, 0–24 giờ

1. Xác minh người sở hữu và hủy/quay vòng credential bị theo dõi; không kiểm tra giá trị bằng cách gọi tới nhà cung cấp từ audit.
2. Tạm thời chặn/giới hạn các endpoint quiz entity và luồng OAuth nếu môi trường có người dùng thật.
3. Không triển khai sản xuất từ base profile hiện tại.

### P0 — Các blocker bảo mật cho đợt phát hành, 1–2 tuần

1. Chuyển Quiz API sang chỉ dùng DTO; loại bỏ `passwordHash`/đáp án khỏi mọi response.
2. Thay thế việc serialize OAuth cookie tự nhiên bằng state phía server không thể đọc công khai (opaque); loại bỏ token khỏi URL.
3. Sanitize HTML bài học/từ điển + cấu hình CSP; chuyển refresh/session token sang Secure HttpOnly cookie.
4. Thêm kiểm tra sở hữu Teacher (Owner-or-admin guard) cho bài học/block/quiz/AI; ma trận phân quyền truy cập đăng ký/nội dung/media.
5. Đảm bảo các quy tắc bất biến về hoàn thành bài học/quiz ở phía server.

### P1 — Tính toàn vẹn Nghiệp vụ/Dữ liệu, 1–3 tuần

1. Tạo migration tiến (forward V8+) sửa Kanji–bộ thủ và các ký tự điều khiển; thử nghiệm migration sạch trên PostgreSQL.
2. Đăng ký học trả phí/đã xuất bản + tính định đẳng (idempotency) thanh toán trước khi gọi M6 hoàn thành.
3. Sổ cái XP/cấp thưởng định đẳng; sửa lỗi mục SRS tùy chỉnh mồ côi.
4. Media riêng tư, xác thực tải lên, vòng đời object-key.
5. Cơ chế quay vòng refresh token/phát hiện tái sử dụng, giới hạn tần suất, thu hồi khi đặt lại mật khẩu, outbox kiểm toán.
6. Nâng cấp các thư viện phụ thuộc có lỗ hổng và bổ sung cổng kiểm tra bảo mật (security gate).

### P2 — Chất lượng/Quy mô/Vận hành, 2–6 tuần

1. Định nghĩa chuẩn contract API/error/validation có kiểu dữ liệu rõ ràng và test cho mapper.
2. Tích hợp PostgreSQL + ma trận phân quyền MockMvc + luồng chuẩn (golden flow) Frontend/E2E.
3. Phân trang SRS CSDL và benchmark/chỉ mục cho tìm kiếm từ điển.
4. `application-prod.yml`, fail-fast secrets, Swagger riêng tư, health/readiness, metrics/alerts, diễn tập sao lưu/phục hồi/rollback.
5. Đồng bộ tài liệu về trạng thái module, số lượng, ngữ nghĩa search/AI/CI và đường dẫn onboarding.

## 10. Tiêu chuẩn thoát (Exit criteria) để chuyển NO-GO thành GO

- 0 lỗi Critical và không có lỗi bảo mật/tính toàn vẹn dữ liệu mức High nào chưa được chấp nhận rủi ro bằng ký duyệt (risk sign-off).
- Sự cố credential được đóng với bằng chứng hủy/quay vòng/xử lý lịch sử.
- Ma trận phân quyền và vòng đời session có các test tự động phủ kịch bản phủ định (negative tests).
- Migration mới PostgreSQL V1→mới nhất vượt qua và xác nhận tính toàn vẹn bộ thủ Kanji.
- Browser E2E vượt qua cho đăng nhập/OAuth, quyền khóa học, học tập/quiz/tiến độ, sổ tay/SRS.
- Quét phụ thuộc không còn lỗ hổng High/Critical chưa xử lý.
- Môi trường Staging chứng minh được health, monitoring, tài liệu/media riêng tư, sao lưu phục hồi và rollback.
- Độ chính xác tài liệu được cập nhật theo mã nguồn đang chạy; module 6/8/9 không được quảng bá là đã triển khai trước khi có code/E2E.

## 11. Các nguyên tắc bảo vệ audit và giới hạn

- Không chỉnh sửa mã nguồn, migration, cấu hình hay lockfile.
- Chỉ tạo các artifact trong thư mục `.audit/`.
- Không triển khai, không chạy migration sản xuất, không reset Docker volume, không quay vòng secret và không gửi request kiểm tra credential.
- Không khởi động môi trường persistent local Compose để tránh tác động đến dữ liệu người dùng.
- Các phát hiện dựa trên snapshot nêu trên; mọi thay đổi sau commit cần thực hiện delta audit.
