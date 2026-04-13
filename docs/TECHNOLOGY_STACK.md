# Cẩm nang Công nghệ (SakuraLearn Technology Stack)

Tài liệu này giải thích "bằng ngôn ngữ con người" về 8 công nghệ lõi lập nên sức mạnh của hệ thống SakuraLearn. Bạn hãy đọc nó như một bộ bí kíp để tự tin 100% khi đi phỏng vấn vị trí BrSE hoặc Backend Developer.

---

## 1. Docker
- **Nó là gì?** Nó giống như những "Container (thùng chở hàng)" trên cảng biển. Thay vì cài hàng tá phần mềm (Database, Mail...) trực tiếp lên Windows làm rác và nặng máy, Docker nhốt từng phần mềm vào một Thùng hàng biệt lập, tự động hóa toàn bộ.
- **Tác dụng:** Bất kỳ lập trình viên mới nào vào công ty chỉ cần 1 cú nhấn chuột để cấu hình xong môi trường làm việc y hệt với Server thật, vĩnh viễn xóa bỏ câu nói *"Ở máy em code vẫn chạy bình thường mà"*.
- **Cách tôi đã setup:** Gom toàn bộ khai báo các phần mềm vào duy nhất 1 file `docker-compose.yml`.
- **Câu lệnh terminal bắt buộc phải nhớ:**
  - `docker compose up -d`: Tải các Thùng hàng về và chạy ngầm (chữ `-d` là detached/ngầm).
  - `docker compose down -v`: Đập đi làm lại toàn bộ. Phá nát mọi Thùng hàng và xóa ổ cứng ảo sinh ra lỗi. Rất hữu ích khi setup sai lúc đầu.

## 2. PostgreSQL & Flyway
- **PostgreSQL là gì?** Cơ sở dữ liệu quan hệ mã nguồn mở mạnh mẽ nhất thế giới. Nơi chứa chân lý dữ liệu (User, Khóa học...).
- **Flyway là gì?** Nó giống y như phần mềm "Git", nhưng mà là Git DÀNH CHO CƠ SỞ DỮ LIỆU.
- **Tác dụng:** Khi đi làm, tuyệt đối không ai được mở giao diện lên tự thả tạo bảng bằng tay (Sẽ bị loạn nhịp giữa máy các người với nhau). Ta viết các file code chứa lệnh SQL (Ví dụ: `V1__Init.sql`). Flyway sẽ thay bạn tự động rà soát, đánh dấu tệp SQL nào đã chạy rồi thì thôi, chưa chạy thì ép máy chủ chạy. Qua đó, 10 máy tính mở lên sẽ có Database giống nhau 100%.
- **Cách tôi đã setup:** Thêm thư viện `flyway-database-postgresql` trong `pom.xml` và nhét code SQL vào đúng thư mục `resources/db/migration`.

## 3. Redis
- **Nó là gì?** Một chiếc Database đặc biệt lưu trữ dữ liệu trực tiếp lên **Bộ nhớ RAM** thay vì trên mặt ổ đĩa SSD.
- **Tác dụng:** Tốc độ tên lửa (đọc ghi chỉ tầm 1 mili-giây). Dùng để chia sẻ áp lực cho PostgreSQL. Chuyên dùng để lưu những thứ "sống gấp vội vàng" như: Mã OTP nháp, Token phiên bản nháp, Bộ đệm (Cache) danh mục khóa học, điểm số Real-time Quiz liên tục nhảy.
- **Cách tôi đã setup:** Chạy thùng hàng Redis trong Docker tại cổng `6379`.

## 4. JWT (JSON Web Token)
- **Nó là gì?** Thẻ căn cước ảo. Cốt lõi của hệ thống xác thực (Authentication) Phi trạng thái (Stateless).
- **Tác dụng:** Thay vì cứ mỗi lần người dùng bấm 1 thao tác trên App, Sever lại phải gọi xuống DB kiểm tra tài khoản, Sever chỉ cần cấp 1 chuỗi dài ngoằng đã được "Ký tên điện tử bằng Private Key" có thời hạn 1 ngày. Miễn người dùng gửi URL đưa đúng chuỗi Token chưa hết hạn, Server đẩy cửa cho vào luôn không cần hỏi Database, tiết kiệm vô số tài nguyên.
- **Cách tôi đã setup:** Cài thư viện `jjwt` vào `pom.xml`. Lập trình ra file `JwtUtils.java` sở hữu hàm băm `Keys.hmacShaKeyFor` để tự động băm nhuyễn và đẻ ra đoạn ký tự ảo diệu đó.

## 5. Apache Kafka (Vũ Khí Hạng Nặng)
- **Nó là gì?** Siêu băng chuyền gửi/nhận tin nhắn bất đồng bộ (Message Broker Asynchronous).
- **Tác dụng:** Điểm khác biệt lớn nhất giữa Junior yếu và Junior xuất sắc. Ví dụ: Khi 1000 người mua khóa học thanh toán VNPay thành công cùng 1 giây, hoặc nộp bài Quiz cùng 1 giây... Nếu Server làm tức thời thì sẽ nghẽn mạng chết đứng. Giải pháp là quăng tờ hóa đơn thanh toán lên băng chuyền "Kafka", báo về cho người dùng "Đã Đặt Thành công". Phía sau đó, âm thầm có máy móc rảnh rỗi sẽ từ từ bốc hàng từ băng chuyền về chạy hóa đơn.
- **Cách tôi đã setup:** Kafka chế độ hiện đại (KRaft, bỏ cái cũ kỹ đi) chạy qua Docker ở cổng `9092`.

## 6. MinIO 
- **Nó là gì?** Kho hàng của Amazon S3 (nhưng loại dùng cho máy cá nhân không tốn tiền).
- **Tác dụng:** Nếu bạn tính làm ứng dụng LMS cho Upload Video bài giảng nặng hàng chục GB. Bạn DỨT KHOÁT KHÔNG được lưu đè Video hay Hình Ảnh vào thẳng thư mục Source Code rồi đẩy lên Github. MinIO giả lập cái máy tính xăm mình Amazon S3: Java của chúng ta sẽ Upload tệp lên con MinIO đó để nó chứa; sau này mang cho Khách Nhật VPS chỉ việc móc thẳng nối lên Amazon Cloud không phải sửa 1 dòng code!
- **Cách tôi đã setup:** Chạy ngầm trong Docker tại cổng `9000` (dùng cho API) và cổng `9001` (để bạn mở Web xem ảnh trực lỳ).

## 7. Mailpit
- **Nó là gì?** Hố Đen nuốt thư rác ảo. (Một loại Fake SMTP Server).
- **Tác dụng:** Code chức năng "Gửi Email Xác nhận Đăng ký Khóa học" cần phải Test hàng nghìn lần lúc code. Gửi qua Gmail thật bạn sẽ bị Google vĩnh viễn khóa Nick IP vì tội Spam. Mailpit trong Docker làm nhiệm vụ "Bắt trọn giam lỏng" toàn bộ thứ ứng dụng định gửi và phơi bày lên cửa sổ Web Localhost để bạn xem kết quả Code ngay trên máy mà không sợ mất email thật.
- **Cách tôi đã setup:** Chạy trong Docker, Java Spring Boot bắn thư vào cổng `1025`, Bạn mở con chuột Web lên cửa `8025` để xem thư nổ đến rất sinh động!

## 8. Swagger (OpenAPI)
- **Nó là gì?** Tự động sinh ra "Sách Hướng Dẫn Sử Dụng API" giao diện đồ họa.
- **Tác dụng:** Làm kỹ sư BrSE giỏi thì khả năng "Documentation" phải xuất xắc. Giao diện này cung cấp một bản Hợp đồng để BackEnd đập vào mặt FrontEnd nói rằng "Đấy, API đây, nhập data như này nè". Có thể thử nghiệm test API đâm thủng dữ liệu trực tiếp trên trình duyệt mà không cần cài Postman phức tạp.
- **Cách tôi đã setup:** Cài `springdoc-openapi` và tạo thủ công file cấu hình `OpenApiConfig.java` để chèn biểu tượng Ổ Khóa quyền uy, gắn JWT vào thẳng website cho phép test dữ liệu như admin thật!
