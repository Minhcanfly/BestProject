# Đánh giá Dự án SakuraLearn - Các vấn đề và Khuyến nghị

Ngày xem xét cuối cùng: 30-04-2026

Tài liệu này tóm tắt các vấn đề được tìm thấy trong quá trình đánh giá toàn diện dự án trên các phương diện: frontend, backend, cơ sở dữ liệu, hạ tầng, CI và tài liệu. Tài liệu cũng đưa ra khuyến nghị thực tế về việc liệu nên hoàn thiện các công việc còn tồn đọng trước hay tiếp tục phát triển các module tiếp theo.

## Tóm tắt Kiểm tra

Các hạng mục đã kiểm tra:

- Build production frontend: thành công với lệnh `npm.cmd run build`.
- Hạ tầng Docker: xác nhận đang chạy với PostgreSQL, Redis, Kafka, Mailpit và MinIO.
- Kiểm tra Spring context backend: thành công với lệnh `cmd /c mvnw.cmd test` sau khi khởi động Docker.

Kết quả test Backend:

```text
Tests run: 1, Failures: 0, Errors: 0, Skipped: 0
```

## Tóm tắt Tổng quát

Dự án có nền tảng full-stack vững chắc: Frontend React, Backend Spring Boot, schema PostgreSQL với Flyway migration, hạ tầng cục bộ dựa trên Docker và kế hoạch phân chia module rõ ràng. Rủi ro chính không nằm ở việc thiếu tính năng, mà là chất lượng hoàn thiện không đồng đều giữa các module.

Trước khi mở rộng thêm sang các phần thanh toán, thông báo, phân tích dữ liệu hoặc gamification, dự án nên ổn định các module đã triển khai. Các công việc ưu tiên cao nhất là dọn dẹp bảo mật/cấu hình, thiết lập test profile, thắt chặt hợp đồng API và hoàn thiện các tác vụ còn lại của Module 1-5.

## Các vấn đề Nghiêm trọng (Critical)

### 1. Hardcode các thông tin bảo mật trong môi trường phát triển

Các file liên quan:

- `sakuralearn-backend/src/main/resources/application.yml`
- `docker-compose.yml`
- `.env.example`

Các điểm phát hiện:

- Mật khẩu PostgreSQL bị hardcode.
- Thông tin đăng nhập MinIO bị hardcode.
- JWT fallback secret bị hardcode.
- AI API key và các giá trị OAuth có sẵn trong cấu hình.
- Docker Compose sử dụng thông tin đăng nhập cố định.

Rủi ro:

- Những giá trị này có thể chấp nhận được khi phát triển cục bộ (local), nhưng sẽ không an toàn nếu tái sử dụng ở môi trường staging/production hoặc đẩy lên các kho lưu trữ công khai (public repositories).

Khuyến nghị:

- Chuyển tất cả các giá trị nhạy cảm sang biến môi trường (environment variables).
- Tạo các file riêng biệt: `application-dev.yml`, `application-test.yml`, và `application-prod.yml`.
- Giữ `.env.example` chỉ dưới dạng các giá trị giữ chỗ (placeholders).
- Tuyệt đối không đưa API key thật hoặc thông tin đăng nhập production vào các file được theo dõi bởi Git.

### 2. Tài khoản admin mặc định được tạo sẵn với mật khẩu đã biết

File liên quan:

- `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/DataSeeder.java`

Hành vi phát hiện:

- Tài khoản admin mặc định được tạo với email/mật khẩu: `admin@sakuralearn.com / admin123`.
- Mật khẩu cũng được ghi lại trong log của ứng dụng.

Rủi ro:

- Đây là vấn đề bảo mật nghiêm trọng nếu hành vi này xuất hiện ở môi trường staging hoặc production.

Khuyến nghị:

- Giới hạn seeder này chỉ chạy trong profile `dev`.
- Đọc mật khẩu admin ban đầu từ biến môi trường.
- Ngừng việc ghi log mật khẩu dưới dạng văn bản thuần túy (plaintext).
- Thêm cảnh báo khi khởi động nếu đang sử dụng thông tin đăng nhập mặc định.

### 3. Đặt lại mật khẩu gửi mật khẩu mới qua query string

Các file liên quan:

- `sakuralearn-frontend/src/services/authService.js`
- `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/controller/AuthController.java`

Hành vi phát hiện:

- `newPassword` được gửi như một tham số yêu cầu (request parameter).

Rủi ro:

- Các tham số trên URL (query parameters) có thể xuất hiện trong lịch sử trình duyệt, log của proxy, log của server và các công cụ giám sát.

Khuyến nghị:

- Thay đổi API đặt lại mật khẩu để chấp nhận body JSON:

```json
{
  "token": "...",
  "newPassword": "..."
}
```

- Thêm kiểm tra dữ liệu đầu vào (DTO validation) cho độ dài và độ phức tạp của mật khẩu.

### 4. Lưu trữ token ở Frontend sử dụng localStorage

Các file liên quan:

- `sakuralearn-frontend/src/services/api.js`
- `sakuralearn-frontend/src/contexts/AuthContext.jsx`

Hành vi phát hiện:

- Access token và refresh token được lưu trữ trong `localStorage`.

Rủi kịch:

- Token bị lộ nếu có lỗ hổng XSS xuất hiện.

Khuyến nghị:

- Đối với môi trường production, ưu tiên sử dụng HttpOnly Secure SameSite cookies cho refresh tokens.
- Giữ access token có thời gian sống ngắn.
- Thêm chính sách bảo mật nội dung (CSP) nghiêm ngặt sau này.
- Ít nhất, hãy kiểm tra kỹ tất cả các đường dẫn render HTML/nội dung trước khi đưa lên production.

## Các vấn đề Ưu tiên cao (High Priority)

### 5. Thiếu profile chuyên biệt cho kiểm thử (test profile)

Các file liên quan:

- `sakuralearn-backend/src/test/java/.../SakuralearnBackendApplicationTests.java`
- `sakuralearn-backend/src/main/resources/application.yml`

Hành vi phát hiện:

- Backend test phụ thuộc vào PostgreSQL cục bộ đang chạy tại `localhost:5433`.

Tác động:

- Test sẽ thất bại nếu Docker chưa được khởi động.
- Hành vi của test phụ thuộc vào trạng thái môi trường phát triển cục bộ.

Khuyến nghị:

- Thêm file `application-test.yml`.
- Sử dụng Testcontainers cho PostgreSQL, hoặc H2 nếu không cần đến các hành vi đặc thù của PostgreSQL.
- Vô hiệu hóa các tích hợp bên ngoài trong các bài test nếu không bắt buộc.

### 6. Log của Backend quá nhiều gây nhiễu kết quả test/build

File liên quan:

- `sakuralearn-backend/src/main/resources/application.yml`

Hành vi phát hiện:

- Log Hibernate SQL và output debug của Spring rất chi tiết.

Tác động:

- Log của test trở nên khó đọc.
- Các lỗi thực sự khó bị phát hiện hơn.

Khuyến nghị:

- Chỉ bật SQL/debug logging trong profile `dev`.
- Giữ log của test ngắn gọn.
- Thêm logging có mục tiêu cho các luồng nghiệp vụ thay vì bật debug toàn cục.

### 7. README/tài liệu không khớp với stack thực tế

Các file liên quan:

- `README.md`
- `docs/01_TECHNICAL_STACK_AND_STANDARDS.md`

Sự khác biệt phát hiện:

- README cũ đề cập đến Java 17 và Spring Boot 3.2.
- Thực tế backend sử dụng Java 21 và Spring Boot 4.0.5.

Trạng thái:

- README ở thư mục gốc đã được thay thế bằng phiên bản cập nhật.

Khuyến nghị:

- Xem lại các tài liệu còn lại và chuẩn hóa các phiên bản.
- Giữ một nguồn sự thật duy nhất (single source of truth) cho các phiên bản công nghệ.

### 8. Vấn đề mã hóa tài liệu (encoding)

Các file liên quan:

- Một số tài liệu cũ trong thư mục `docs/`
- File `README.md` cũ ở gốc
- `QUICK_START.md`

Hành vi phát hiện:

- Một số văn bản tiếng Việt hiển thị dưới dạng lỗi font (mojibake).

Tác động:

- Tài liệu trông thiếu chuyên nghiệp và khó bảo trì.

Khuyến nghị:

- Chuẩn hóa các file về định dạng UTF-8.
- Viết lại các đoạn bị lỗi thay vì cố gắng sửa từng ký tự lẻ tẻ.

## Các vấn đề Ưu tiên trung bình (Medium Priority)

### 9. Frontend vẫn còn các dòng log debug

File liên quan:

- `sakuralearn-frontend/src/components/courses/BlockRenderer.jsx`

Hành vi phát hiện:

- Các dòng `console.log` vẫn còn trong luồng render của component.

Khuyến nghị:

- Loại bỏ các log debug hoặc đặt chúng sau một trình ghi log (logger) chỉ dành cho môi trường phát triển.

### 10. Thuật toán SRS cần được xem xét và bổ sung kiểm thử

File liên quan:

- `sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/NotebookServiceImpl.java`

Hành vi phát hiện:

- Thuật toán lập lịch kiểu SM-2 đã được triển khai.
- Việc tính toán khoảng cách sử dụng `oldEf` khi tính các khoảng cách sau này.

Rủi ro:

- Điều này có thể chấp nhận được tùy thuộc vào công thức dự kiến, nhưng nên được quy định rõ ràng và kiểm thử.

Khuyến nghị:

- Tách logic tính toán SRS thành một service thuần túy (pure service) nhỏ.
- Thêm các unit test cho các mức điểm chất lượng (quality scores) từ 1-5.
- Ghi lại tài liệu rõ ràng liệu dự án tuân theo SM-2 cổ điển hay một biến thể tùy chỉnh.

### 11. Trạng thái các module không đồng đều

Tình trạng phát hiện:

- Các Module 1-5 đã có sự triển khai đáng kể.
- Các Module 6-8 mới chỉ được thể hiện trong schema/tài liệu nhưng chưa được triển khai đầy đủ logic ứng dụng.

Khuyến nghị:

- Đừng bắt đầu các module mới quá lớn cho đến khi các Module 1-5 đủ ổn định để demo.
- Hoàn thiện các luồng sử dụng tối thiểu trước khi mở rộng bề ngang.

### 12. CI hữu ích nhưng vẫn còn ở mức tối thiểu

Các file liên quan:

- `.github/workflows/frontend-ci.yml`
- `.github/workflows/backend-ci.yml`

Hành vi phát hiện:

- Frontend CI chạy cài đặt và build.
- Backend CI chạy Maven package với PostgreSQL và Redis.

Khuyến nghị:

- Thêm profile kiểm thử (test profile).
- Thêm lint/test cho frontend khi các script này được tạo.
- Thêm các bài test tích hợp (integration tests) cho backend cho các API auth và khóa học.
- Xem xét việc lưu cache và tải lên artifact sau này.

## Các vấn đề Ưu tiên thấp (Low Priority)

### 13. Kích thước bundle cần được theo dõi

Kết quả phát hiện:

- Bundle JS của Frontend khoảng 480 KB sau khi build production.

Khuyến nghị:

- Hiện tại mức này là chấp nhận được.
- Sau này, hãy thêm chia nhỏ code theo route (code splitting) nếu ứng dụng lớn dần.

### 14. Một số hạ tầng dự kiến có thể đi trước nhu cầu sản phẩm hiện tại

Tình trạng phát hiện:

- Docker bao gồm Kafka.
- Backend bao gồm các dependency cho Kafka và AMQP.
- Các luồng cốt lõi hiện tại dường như chưa yêu cầu hạ tầng dựa trên sự kiện (event-driven) đầy đủ.

Khuyến nghị:

- Giữ lại Kafka nếu nó hỗ trợ cho các module đã lập kế hoạch, nhưng tránh xây dựng các tính năng quan trọng của nghiệp vụ dựa trên nó trước khi các module cốt lõi ổn định.
- Loại bỏ các dependency AMQP/Kafka không sử dụng nếu chúng vẫn không được dùng đến trong thời gian dài.

## Thứ tự Ưu tiên khuyến nghị

### Giai đoạn 1 - Ổn định lõi hiện tại

Thực hiện những việc này trước khi xây dựng các module mới:

1. Thêm các Spring profile: `dev`, `test`, `prod`.
2. Chuyển các secret và thông tin đăng nhập mặc định ra khỏi file cấu hình được Git theo dõi.
3. Giới hạn việc tạo admin mặc định chỉ cho môi trường phát triển.
4. Thay đổi API đặt lại mật khẩu sang sử dụng request body.
5. Loại bỏ các log debug ở frontend.
6. Giảm bớt log SQL/debug ở backend ngoài môi trường phát triển.
7. Thêm các bài test tập trung cho: auth, refresh token, đặt lại mật khẩu, CRUD khóa học, tìm kiếm từ điển, notebook và SRS.

### Giai đoạn 2 - Hoàn thiện các tác vụ còn lại của Module 1-5

Tập trung vào việc làm cho các module đã triển khai sẵn sàng để demo:

1. Xác thực (Authentication): hoàn thiện các luồng xác minh/đặt lại và xử lý lỗi.
2. Khóa học/Bài học: hoàn thiện quy trình của giáo viên và các trường hợp biên khi học sinh đăng ký.
3. Tiến độ học tập: xác minh việc tính toán tiến độ và các quy tắc hoàn thành bài học.
4. Từ điển: cải thiện tìm kiếm, phân trang và các trang chi tiết.
5. Notebook/SRS: tách và kiểm thử logic SRS, cải thiện trải nghiệm người dùng (UX) khi ôn tập.

### Giai đoạn 3 - Sau đó mới tiếp tục Module 6-8

Chỉ sau khi lõi đã ổn định:

1. Module 6: Thanh toán và thông báo.
2. Module 7: Phân tích quản trị và giao diện nhật ký audit.
3. Module 8: Gamification, XP, streak, huy hiệu, bảng xếp hạng.

## Khuyến nghị: Hoàn thiện file cũ trước hay làm Module mới?

**Khuyến nghị:** Hoàn thiện các công việc còn tồn đọng và xử lý các vấn đề chất lượng trước.

**Lý do:**

- Dự án đã có đủ bề ngang tính năng để thể hiện năng lực full-stack mức Fresher/Junior.
- Bắt đầu thêm nhiều module lúc này sẽ làm tăng độ phức tạp mà không cải thiện độ tin cậy.
- Nhà tuyển dụng và người phỏng vấn sẽ đánh giá cao một dự án nhỏ hơn nhưng hoạt động tốt, được kiểm thử kỹ và code sạch, hơn là một dự án rộng nhưng nhiều luồng chưa hoàn thiện.
- Việc dọn dẹp bảo mật/cấu hình/kiểm thử sẽ làm dự án trông chuyên nghiệp hơn nhiều.

**Chiến lược tốt nhất:**

1. Hoàn thành các tác vụ còn lại cho Module 1-5.
2. Trau chuốt README, ảnh chụp màn hình và dữ liệu demo.
3. Thêm các bài test có ý nghĩa và dọn dẹp cấu hình.
4. Xây dựng một luồng demo ấn tượng từ: đăng nhập -> khóa học -> bài học -> từ điển -> notebook -> SRS.
5. Sau đó mới triển khai Module 6 hoặc Module 8 tùy thuộc vào vị trí bạn hướng tới:
   - Vị trí Backend: Thanh toán, thông báo, phân tích audit.
   - Vị trí Full-stack: Dashboard gamification, streak, huy hiệu, trau chuốt giao diện người dùng.
