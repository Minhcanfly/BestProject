# SakuraLearn: Interview Pitch Summaries

Bản tài liệu này giúp bạn chuẩn bị nội dung nói (script) tùy theo thời lượng phỏng vấn. Hãy trình bày một cách tự nhiên và tự tin.

---

## 1. 30-Second Pitch (Gây ấn tượng nhanh)
"Chào anh/chị, em là tác giả của **SakuraLearn** - một nền tảng học tiếng Nhật tập trung vào việc tối ưu hóa khả năng ghi nhớ cho người Việt. Thay vì chỉ là một trang web học tập tĩnh, em đã xây dựng một hệ thống học lặp lại ngắt quãng (Spaced Repetition) dựa trên thuật toán **SM-2** chuẩn. Điểm khác biệt lớn nhất là sự kết nối liền mạch: mọi từ vựng từ bài học hay từ điển đều có thể lưu vào sổ tay cá nhân và tự động lập lịch ôn tập. Về mặt kỹ thuật, em sử dụng **Spring Boot** với kiến trúc **Modular Monolith**, giúp hệ thống vừa linh hoạt vừa đảm bảo tính nhất quán dữ liệu cao."

---

## 2. 2-Minute Explanation (Trình bày logic nghiệp vụ)
"SakuraLearn được em xây dựng để giải quyết bài toán 'học trước quên sau' của người học ngoại ngữ. Dự án gồm 3 trụ cột chính:

1.  **Hệ thống LMS**: Quản lý khóa học phân cấp (Course, Lesson, LessonBlock). Em thiết kế theo dạng Block để có thể theo dõi tiến độ chi tiết đến từng video, đoạn văn hay quiz của học sinh.
2.  **Từ điển & Sổ tay thông minh**: Em tích hợp Master Data về Kanji, Từ vựng, Ngữ pháp kèm công cụ search bằng Romaji. User có thể lưu bất kỳ mục nào vào Notebook cá nhân chỉ với 1 click.
3.  **Hệ thống SRS (Trái tim của dự án)**: Ngay khi user lưu từ vào Notebook, thuật toán SM-2 sẽ tính toán lịch ôn tập. Hệ thống sẽ biết khi nào bạn sắp quên để nhắc bạn ôn lại thông qua các phiên Review hàng ngày.

Về công nghệ, em dùng **PostgreSQL** làm core, **Redis** cho tương lai mở rộng và **MinIO** để xử lý streaming media mượt mà. Em cũng tích hợp **AI** để hỗ trợ giáo viên tự động sinh khung chương trình học, giúp tiết kiệm thời gian tạo nội dung."

---

## 3. 5-Minute Deep Explanation (Show-off kỹ thuật & Kiến trúc)
"Về mặt kỹ thuật, SakuraLearn là một dự án mà em đầu tư rất nhiều vào tư duy kiến trúc Backend. Có 3 điểm em muốn chia sẻ sâu hơn:

**Thứ nhất là về Kiến trúc và Data Model**: Em chọn mô hình **Modular Monolith**. Tại sao? Vì các Domain như Auth, Course, và SRS của em có sự liên kết rất chặt chẽ về dữ liệu. Em sử dụng thiết kế **Đa hình (Polymorphic)** trong bảng Notebook và Flashcard. Điều này cho phép một hệ thống SRS duy nhất có thể xử lý mọi loại dữ liệu từ Hán tự đến Ngữ pháp mà không cần phình to database.

**Thứ hai là về Bảo mật**: Em triển khai cơ chế **Hybrid Security**. Em sử dụng JWT Access Token để đảm bảo tính stateless cho API, nhưng vẫn kết hợp Refresh Token lưu trong Database. Điều này giúp em giải quyết được nhược điểm lớn nhất của JWT là không thể thu hồi phiên đăng nhập. Em cũng viết các Filter để reload Security Context, đảm bảo nếu user bị khóa account thì quyền truy cập sẽ mất hiệu lực ngay lập tức.

**Thứ ba là tối ưu hóa tài nguyên**: Đối với phần Media, em không trả file trực tiếp mà triển khai **HTTP Range Requests**. Điều này cực kỳ quan trọng cho người dùng mobile vì nó cho phép streaming và tua video mà không cần tải toàn bộ file 50-100MB.

**Cuối cùng là khả năng mở rộng**: Hệ thống của em được Dockerize hoàn toàn, sử dụng **Flyway** để quản lý phiên bản database và đã sẵn sàng các interface cho **Kafka** để xử lý các tác vụ bất đồng bộ như gửi mail hay tính toán thống kê sau này. Mặc dù hiện tại là Monolith, nhưng em đã tách các package theo module rất rõ ràng để có thể bóc tách thành Microservices nếu quy mô người dùng tăng lớn."

---

## Mẹo khi trả lời phỏng vấn:
1.  **Dùng từ "Tại sao"**: Đừng chỉ nói bạn làm gì, hãy nói tại sao bạn chọn công nghệ đó (ví dụ: "Em chọn SM-2 thay vì Leitner vì...").
2.  **Thành thật về điểm yếu**: Nếu bị hỏi về hiệu năng, hãy chủ động nhắc đến bài toán **N+1 query** và cách bạn định dùng **Batch Loading** để tối ưu. Điều này thể hiện trình độ Senior-mindset.
3.  **Nhấn mạnh vào Product**: Hãy thể hiện bạn không chỉ code giỏi mà còn hiểu sản phẩm và hiểu người dùng học tiếng Nhật cần gì.
