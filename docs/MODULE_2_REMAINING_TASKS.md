# 🌸 MODULE 2: Course & Lesson Management - Trạng thái & Nhiệm vụ còn lại

## 1. Đánh giá hiện trạng (Đã hoàn thành)
- **Backend**: Đã triển khai đầy đủ các Entity (`Course`, `Lesson`, `LessonBlock`) và Service (`CourseServiceImpl`, `LessonServiceImpl`, `LessonBlockServiceImpl`) cho việc quản lý cấu trúc nội dung. Hỗ trợ Soft Delete.
- **Frontend**: Đã có `SyllabusManager`, `CourseForm`, `TeacherDashboard` giúp tạo, chỉnh sửa nội dung dễ dàng. Giao diện `CourseList` và `CourseDetail` hoạt động tốt.
- **Tích hợp**: Upload file ảnh/video lên MinIO hoàn chỉnh.
- **Chưa có chỗ để Giáo viên thêm tài liệu ở từng lessonBlock**.

## 2. Các mục tiêu chưa đạt / Cần nâng cấp (Remaining Tasks)

### 🔴 Lỗi cần fix ngay (Bugs)
- **Sai số % Tiến độ khi xóa LessonBlock**: Hiện tại Backend sử dụng Soft Delete (`is_deleted = true`), nhưng logic tính phần trăm tiến độ vẫn đếm cả những khối đã xóa, dẫn đến tiến độ không bao giờ đạt 100%. Cần bổ sung cờ lọc `is_deleted = false` trong tất cả các truy vấn Progress.
- **UI Video Player**: Video tải lên từ MinIO hiện thị khung hình to bất thường, phải click đúp để xem toàn màn hình mới dùng được thanh điều khiển. Cần fix cứng width/height hoặc dùng wrapper container responsive cho video.

### 🟡 Tính năng nâng cấp (Enhancements)
- **Quản lý Trạng thái Khóa học (Workflow)**: Chuyển từ boolean `isPublished` sang `Enum CourseStatus` (DRAFT, PENDING_APPROVAL, PUBLISHED) để Admin có thể duyệt bài của Teacher.
- **Tìm kiếm & Lọc nâng cao**: Cần tích hợp tìm kiếm Full-text cho `titleVi`, `titleJa` thay vì chỉ tìm theo `jlptLevel`. Thêm bộ lọc giá (Miễn phí / Trả phí).
- **Review & Rating**: Tính năng cho phép học viên đánh giá (1-5 sao) và bình luận cho Course sau khi enroll.
- **Tích hợp Quiz từ Bank**: Khối `QUIZ` trong LessonBlock cần được móc nối với ngân hàng câu hỏi chung thay vì nhập tay rời rạc.
- **AI Syllabus**: Kích hoạt lại tính năng dùng Gemini/OpenAI sinh tự động sườn bài học (hiện code đang ẩn).
