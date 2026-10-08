# Giai đoạn 1 — Kiểm kê kho lưu trữ & Kiểm toán mã nguồn

**Ngày kiểm toán:** 2026-08-03  

**Snapshot:** `develop@2175947f481493bcdbd1fb9c45c50a9755a52b85`

## Kết quả cổng kiểm

**PHASE 1 HOÀN THÀNH.** Tất cả 401 tệp tin được theo dõi có trong `FILE_MANIFEST.md`; 400 đã được xem xét và một hình ảnh ERD đã bị xoá trước đó không thể đọc được. Độ bao phủ tệp tin quan trọng FULL đạt **100 % (105/105)**. Không tệp nguồn nào bị sửa đổi.

## Kiểm kê kho lưu trữ và bằng chứng công nghệ

| Khu vực | Thực tế được phát hiện | Bằng chứng chính |
| ------- | ---------------------- | ---------------- |
| **Backend** | Java 21, Spring Boot 4.0.5, Spring MVC/Security/Data JPA, Hibernate 7, MapStruct, Flyway, Spring AI | `pom.xml`, biên dịch Maven thành công, nguồn mã MapStruct sinh ra |
| **Frontend** | React 19.2.5, Vite 8.0.8, React Router 7.14.1, Axios 1.15.0, CSS tùy biến, Lucide, dnd-kit | `package.json`, `npm ls --all`, bản build production |
| **Database** | Schema hướng tới PostgreSQL, UUID/JSONB/mảng/enum, Flyway V1–V7; 44 câu lệnh `CREATE TABLE` | migrations và `docker‑compose.yml` |
| **Xác thực** | Email/mật khẩu, JWT bearer token truy cập, refresh‑token lưu trong DB, xác thực email/reset, Google OAuth2 | Các lớp và cấu hình Security/Auth |
| **Lưu trữ/Email** | Object storage MinIO và SMTP tương thích Mailpit | Compose, cấu hình, triển khai dịch vụ |
| **Kiểm thử** | JUnit 6/Mockito/H2; 6 lớp test, 14 trường hợp test | `src/test`, kết quả Maven Surefire |
| **CI/CD** | GitHub Actions: backend Maven `package`, frontend `npm ci` + build | `.github/workflows/*.yml` |
| **Được khai báo nhưng không dùng** | Redis, Kafka, AMQP/Rabbit, WebSocket | dependencies/Compose tồn tại; không thấy sử dụng trong code production |

### Bề mặt thực thi đo lường
- 19 controller, 80 ánh xạ HTTP rõ ràng, 26 entity, 40 file service layer, 25 repository.
- 23 khai báo `<Route>` React và 14 file service frontend.
- Seed migrations: 3 003 hàng Kanji, 21 792 từ vựng, 842 ghi chú ngữ pháp.

## Tổng hợp kiểm toán miền

### Kinh doanh & ủy quyền
- Các mô‑đun 1‑5 đã được triển khai đáng kể, nhưng một số “hoàn thành” được khẳng định quá mức. Kiểm tra/điều kiện giáo viên/chủ sở hữu không được thực thi; người dùng đã xác thực có thể lấy nội dung lesson/block/quiz mà không qua kiểm tra enrolment; media được cho phép truy cập công khai.
- Ngưỡng tiến độ chỉ tồn tại ở phía React; server chấp nhận cập nhật hoàn thành trực tiếp và có endpoint đánh dấu mọi lesson block hoàn thành.
- Mỗi lần thi quiz thành công sẽ cộng 10 XP; đáp án đúng được trả trong phản hồi quiz.

### Bảo mật
- Một dòng cấu hình theo dõi chứa **key** API Google dạng credential (được redact). Giá trị chưa được kiểm chứng.
- Các endpoint quiz trả thực thể JPA. Thuộc tính `QuizQuestion.correctAnswer` và `User.passwordHash` được serializable → rò rỉ đáp án và hash mật khẩu.
- HTML lesson do giáo viên cung cấp được lưu **không sanitize** và render bằng `dangerouslySetInnerHTML`. Token lưu trong `localStorage` → có khả năng tấn công XSS lưu trữ / đánh cắp token.
- OAuth success redirect trả access/refresh token và PII trong query URL. Yêu cầu OAuth được deserialize từ cookie Java không ký.
- Không có rate‑limiting hay throttling đăng nhập/forgot‑password. Forgot‑password tiết lộ existence của tài khoản; reset không thu hồi refresh‑token; refresh‑token không được quay vòng.
- Upload cho phép tối đa 500 MB mà không có whitelist MIME/extension và bucket được công khai.

### Cơ sở dữ liệu & tính toàn vẹn
- V2 chuyển đổi số radic thành glyph, nhưng 3 003 hàng Kanji V3 vẫn tra `radicals.character` → radic_id bị null.
- Schema không có vector/index full‑text cho vocabulary/grammar; tìm kiếm dùng `LIKE/ILIKE` thay vì GIN full‑text.
- V3–V5 đã được quét đầy đủ; mọi câu lệnh không‑comment đều kết thúc; V3 chứa hai ký tự điều khiển U+001D. V4 và V5 bắt đầu bằng DELETE toàn bộ seed migration (immutable).

### API & khả năng bảo trì
- Kiểu trả về wildcard, map raw, expose entity trực tiếp, thiếu `@Valid`, phản hồi exception phản chiếu rộng rãi.
- MapStruct sinh ra `CourseResponse.teacherName`, `LessonResponse.courseId`, `LessonBlockResponse.lessonId` nhưng không được populate.
- `NotebookService` kết hợp thư mục, hydration, custom items, lên lịch SRS và review. Thực hiện lọc/pagination trong memory + lookup per‑card.
- URL media cứng được đặt thành localhost; delete mong đợi URL MinIO khác → avatar/thumbnail bị bỏ lại.

### DevOps & sẵn sàng sản xuất
- Không có `application‑prod.yml`, health‑check container, monitoring, backup, rollback, hoặc manifest triển khai.
- Swagger/OpenAPI cho phép công khai và log runtime xác nhận cả hai endpoint được bật mặc định.
- Cấu hình ứng dụng có fallback development cho các giá trị nhạy cảm; không có validation “fail‑fast” cho production.
- Frontend không có script lint/test/type‑check. Có fetch đến localhost trực tiếp ngoài service Axios trung tâm.

## Xác minh runtime

| Thứ tự | Kiểm tra / Lệnh | Kết quả | Bằng chứng / Ảnh hưởng |
| -----: | --------------- | ------ | ---------------------- |
| 1 | Kiểm tra manifest / phụ thuộc | **PASS** | Cây Maven và `npm ls --all` được giải quyết |
| 2 | Tìm kiếm tĩnh & kiểm tra mã sinh | **PASS with findings** | XSS, exposure entity, config, migrations, hardcoded URL, … |
| 3–4 | `mvnw.cmd test` | **PASS** | 181 nguồn chính biên dịch; 14 test, 0 lỗi/bỏ qua |
| 3 | `npm run build` | **PASS** | 1 871 module; JS 494.89 KB (149.27 KB gzip), CSS 101.91 KB |
| 5 | Kiểm thử tích hợp/E2E trên PostgreSQL/MinIO/Mail | **NOT RUN** | Không có suite tích hợp; khởi động Docker Compose có thể thay đổi hạ tầng/dữ liệu người dùng |
| 6 | Lint/type‑check/test frontend | **NOT AVAILABLE** | Không có script/config tương ứng |
| 7 | `npm audit --json` | **FAIL (findings)** | 6 node package mức cao trong cây phụ thuộc frontend |
| 7 | `npm audit --package-lock-only --json` | **FAIL (findings)** | 2 node package mức cao |
| 7 | Trình quét lỗ hổng backend | **NOT AVAILABLE** | Chỉ có cây phụ thuộc; không có công cụ OSV/Trivy/Grype/Dependency‑Check |

> **Lưu ý:** Kiểm thử H2 không thực thi Flyway và không xác thực hành vi PostgreSQL‑specific như JSONB/array/enum, cũng như không kiểm tra hành vi migration V1→V7 sạch.

### Giới hạn Giai đoạn 1
- Không có credential thật được thử và không sao chép giá trị secret nào.
- Không thực hiện docker reset, migration production, triển khai, hoặc ghi đè dữ liệu bên ngoài.
- Hình ảnh ERD đã bị xoá trước khi audit, vẫn không đọc được.

