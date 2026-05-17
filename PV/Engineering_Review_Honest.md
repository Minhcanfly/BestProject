# SakuraLearn: Engineering Review (Brutally Honest)

Bản tài liệu này phân tích sâu về tư duy kỹ thuật, các điểm sáng và những góc khuất trong codebase của SakuraLearn.

---

## 1. Top 5 Most Impressive Engineering Decisions

### 1.1 Hybrid Security Model (JWT + DB Refresh Token)
- **Cơ chế**: Kết hợp Access Token (Stateless) để tối ưu hiệu năng và Refresh Token (Stateful - lưu DB) để kiểm soát phiên.
- **Tại sao khó**: Cần cấu hình Filter Chain để xử lý cả hai luồng đồng thời.
- **Giá trị thực tế**: Cho phép thu hồi quyền truy cập ngay lập tức (Logout thực sự/Block user) mà không cần chờ JWT hết hạn.
- **Interview Angle**: "Tôi chọn mô hình Hybrid để tận dụng ưu điểm của cả Stateless và Stateful, giúp hệ thống vừa nhanh vừa có khả năng quản trị phiên làm việc chặt chẽ."

### 1.2 Polymorphic Content Architecture
- **Cơ chế**: Sử dụng cặp `ItemType` + `itemId` để quản lý mọi thực thể (Kanji, Vocab, Grammar, Custom) trong cùng một hệ thống Notebook/SRS.
- **Tại sao khó**: Đòi hỏi thiết kế Database trừu tượng và logic Hydration (đổ dữ liệu) linh hoạt.
- **Giá trị thực tế**: Khả năng mở rộng cực cao. Thêm loại nội dung mới không cần thay đổi cấu trúc bảng SRS/Notebook.
- **Interview Angle**: "Thiết kế đa hình giúp module SRS hoàn toàn tách biệt (decoupled) với các module nội dung, giúp hệ thống dễ bảo trì và mở rộng."

### 1.3 Media Streaming with HTTP Range (Status 206)
- **Cơ chế**: Trả về dữ liệu theo chunk (từng phần) thay vì toàn bộ file.
- **Tại sao khó**: Xử lý các Header phức tạp (`Content-Range`, `Accept-Ranges`) và InputStream.
- **Giá trị thực tế**: Tiết kiệm băng thông cực lớn và cho phép người dùng "seek" (tua) video mượt mà.
- **Interview Angle**: "Tôi triển khai Streaming qua HTTP Range để tối ưu hóa tài nguyên server và đảm bảo trải nghiệm tốt nhất cho người dùng mobile/mạng yếu."

### 1.4 Recalculation Progress Logic
- **Cơ chế**: Tự động tính lại tiến độ của toàn bộ User khi nội dung khóa học thay đổi.
- **Tại sao khó**: Đảm bảo tính nhất quán dữ liệu (Data Consistency) giữa Producer (Giáo viên) và Consumer (Học sinh).
- **Giá trị thực tế**: Tránh tình trạng tiến độ "ảo" khi nội dung bài học bị chỉnh sửa sau khi user đã hoàn thành.

### 1.5 Multi-Model AI Syllabus Strategy
- **Cơ chế**: Tích hợp Spring AI hỗ trợ nhiều model (GPT, Gemini, Grok) với cơ chế Fallback thông minh.
- **Tại sao khó**: Xử lý tính không định hướng của AI để ép nó trả về JSON chuẩn.
- **Giá trị thực tế**: Tăng năng suất tạo nội dung cho giáo viên lên gấp nhiều lần.

---

## 2. Top 5 Most Complex Logic Implementations

1. **SM-2 Spaced Repetition Engine**: Logic tính toán độ giãn cách dựa trên Ease Factor và Repetitions (SM-2 Algorithm).
2. **Item Hydration Strategy**: Logic "đổ" dữ liệu từ nhiều bảng khác nhau vào một Response duy nhất dựa trên Type.
3. **Romaji to Hiragana Converter**: Xử lý logic ngôn ngữ để hỗ trợ tìm kiếm linh hoạt cho người Việt.
4. **Quiz Scoring & Gamification Bridge**: Logic chấm điểm, lưu attempt và tự động trigger hoàn thành bài học + cộng XP.
5. **Async Audit Logging**: Theo dõi thay đổi dữ liệu (Old/New values) bất đồng bộ để không ảnh hưởng đến Response Time.

---

## 3. Strong Backend Thinking (Tư duy Senior)
- **Database Versioning**: Sử dụng Flyway (V1, V2...) thay vì Hibernate ddl-auto.
- **Abstraction Layer**: `FileStorageService` giúp dễ dàng thay thế Storage Provider (MinIO, S3, Local).
- **Security Awareness**: Check `isActive` và `Role` ngay tại Filter thay vì tin hoàn toàn vào JWT.

---

## 4. Weak Points (Điểm yếu cần phòng thủ khi PV)

1. **N+1 Query Problem**: Trong logic Hydration của Notebook, hiện đang gọi query lẻ cho từng item thay vì dùng Batch Loading.
2. **IDOR (Missing Ownership Checks)**: Một số endpoint chưa kiểm tra chặt chẽ `userId` của bản ghi, dẫn đến rủi ro user này thao tác dữ liệu user kia.
3. **Basic Search**: Đang dùng `LIKE` thay vì Full-Text Search (tsvector), hiệu năng sẽ giảm khi dữ liệu lớn.
4. **Data Sanitization**: Thiếu bước làm sạch dữ liệu (Sanitize) ở Backend cho các nội dung TEXT do giáo viên nhập (Rủi ro XSS).

---

## 5. Upgrade Suggestions (Lộ trình nâng cấp)

1. **Batch Loading**: Tối ưu Hydration bằng cách sử dụng `findAllById` để giảm số lượng query xuống tối thiểu.
2. **Global Ownership Interceptor**: Viết Aspect (AOP) để tự động kiểm tra quyền sở hữu bản ghi cho mọi API.
3. **Caching Strategy**: Sử dụng Redis để cache Master Data (Từ điển) nhằm giảm tải cho Database.
4. **Unit Tests**: Bổ sung Unit Test cho các logic quan trọng (SM-2, Progress Calculation).
