# Hướng dẫn toàn tập: Quy trình Setup Backend "Production-Grade" từ con số 0
*(Tài liệu đào tạo dành cho SakuraLearn Project - Định hướng Junior Backend / BrSE)*

Chào bạn, đây là tài liệu được biên soạn lại chi tiết nhằm tổng hợp kiến thức từ những bước đầu tiên của dự án. Với vai trò là một Lập trình viên / Kỹ sư Cầu nối (BrSE), bạn KHÔNG làm việc theo bản năng (nghĩ gì code nấy), mà phải theo một quy trình chuẩn doanh nghiệp. 

Bộ Khung (Tech Stack) của dự án: **Java 21, Spring Boot 3.4, PostgreSQL, Redis, Docker, Github Actions.**

Dưới đây là 7 bước "chuẩn chỉ" để Setup mọi dự án Backend từ đầu:

---

## Bước 1: Khởi tạo Bộ Khung & Quản lý Mã Nguồn (Version Control)
Thay vì tạo file bừa bãi, dự án luôn bắt đầu bằng:
1. Sinh source code tự động qua **Spring Initializr** (chọn Maven, Java 21, và các Starters cơ bản như Web, Data JPA).
2. Mở Terminal tại thư mục gốc, gõ `git init` để bắt đầu theo dõi sự thay đổi của mã nguồn.
3. Tạo file gốc `.gitignore` (chứa quy tắc bỏ qua các file rác như `target/`, `.idea/`, `node_modules/`...).
4. Tạo một Repo trống trên GitHub và dùng lệnh `git push` đoạn code nguyên sơ nhất lên.

## Bước 2: Dựng Hạ Tầng (Infrastructure Setup) với Docker
*Sinh viên thường tải bộ cài PostgreSQL.exe và Redis.exe về máy cài thủ công, nhưng Doanh nghiệp thì không.*
- **Lý do:** Team có 10 người, nếu bảo mỗi người tự đi tải DB về cài, cấu hình password... sẽ mất cả tuần, và chắc chắn sẽ xảy ra lỗi lặt vặt.
- **Thực hành chuẩn:** Tạo 1 file **`docker-compose.yml`** ở thư mục gốc. Định nghĩa bên trong file đó: Bản PostgreSQL 16 và Redis 7. 
- Mọi thành viên chỉ cần gõ 1 lệnh duy nhất: `docker compose up -d`. Toàn bộ máy chủ Database ảo sẽ bật lên, chung 1 cấu hình, chung 1 password, sẵn sàng sử dụng.

## Bước 3: Cấu hình Dự Án (Application Configuration)
Bỏ ngay file `application.properties` sinh ra mặc định, đổi nó thành **`application.yml`**. File YAML giúp cấu hình có phân cấp (thụt lề), dễ theo dõi và sạch sẽ hơn khi hệ thống cấu hình xình to ra.
- Kết nối URL tới Database.
- Kết nối tới cấu hình Redis Host / Port.
- Khai báo Cấu hình ngôn ngữ chuẩn (i18n).

## Bước 4: Kiểm soát Phiên bản Database (Database Migration)
*Nhiều người có thói quen dùng `spring.jpa.hibernate.ddl-auto=update` để Spring tự dọn dẹp và tạo bảng. Nhưng ra thực tế làm vậy là vi phạm nguyên tắc an toàn.*
- Đoạn mã Java thay đổi không đồng nghĩa với cấu trúc Database của Khách hàng được phép tự động biến đổi (dẫn tới mất dữ liệu chết người).
- **Thực hành chuẩn:** Cài thư viện **Flyway**.
- Mọi bảng biểu (`users`, `roles`) đều phải được viết bằng mã SQL rõ ràng và lưu vào thư mục `db/migration/V1__Init_Tables.sql`. Trình tự SQL này sẽ đóng băng. Lần chạy Boot sau, Flyway sẽ kiểm tra cái gì đã chạy và bỏ qua, đảm bảo Database đồng nhất 100% giữa máy Dev A, máy Dev B và Server Product.

## Bước 5: Mapping JPA (Entities)
Sau khi có Bảng ở trong DB (nhờ Bước 4), ta mới viết mã Java (thư mục `entity/`). 
- Định nghĩa class `User`, `Role` bằng các annotation `@Entity`, `@Id`, `@Column`.
- Lưu ý: Code ở vòng này dùng `ddl-auto=validate`, nghĩa là Java chỉ đối chiếu xem mình viết Class có KHỚP với bảng SQL thật hay không, chứ không tự tạo bảng.

## Bước 6: Đa ngôn ngữ I18N (BrSE Focus)
Để ứng dụng vươn ra thị trường Nhật - Mỹ, ứng dụng phải trả về các đoạn text khác nhau dựa theo ngôn ngữ người gọi.
- Tạo file `messages_en.properties` và `messages_ja.properties`.
- Chứa các key-value như `auth.login.success=ログインに成功しました`.
- Bất cứ khi nào báo lỗi ra ngoài Frontend, không được hard-code chữ tiếng Việt vào Java, mà hãy quăng lỗi theo "Mã Key", để hệ thống tự dịch dựa vào thẻ `Accept-Language` của người dùng.

## Bước 7: Tự Động Hóa Kiểm Thử CI/CD (Continuous Integration)
Để chặn đứng việc bạn tải code lởm (lỗi compile, rác log) lên GitHub làm chết hệ thống chung:
- Tạo thư mục `.github/workflows/` chứa file YAML.
- Thiết lập quy tắc: *"Bất cứ ai push code, hãy tạo ảo 1 máy chủ, bật Docker SQL lên, tải Java 21 về và gõ lệnh `mvn test`."*
- Nếu bài test thất bại (ví dụ: DB sập, code lỗi), GitHub sẽ gạch đỏ cấm cửa. Qua đó đảm bảo Code trên nhánh `main` LUÔN LUÔN chạy được.

---
**Tổng kết:** Khi bạn đã cài đặt xong 7 bước này (chính là những gì ta đã làm xong hôm qua), bạn sẽ có "Nền móng bằng Bê tông Cốt thép". Lắp thêm bất cứ chức năng nào (Authentication, Realtime) cũng sẽ trơn tru và ít rủi ro về sau.
