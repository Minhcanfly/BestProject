# 🌸 MODULE 2: Course & Lesson Management - Trạng thái & Nhiệm vụ còn lại

## 1. Đánh giá hiện trạng (Đã hoàn thành)
- **Backend**: Đã triển khai đầy đủ các Entity (`Course`, `Lesson`, `LessonBlock`) và Service (`CourseServiceImpl`, `LessonServiceImpl`, `LessonBlockServiceImpl`) cho việc quản lý cấu trúc nội dung. Hỗ trợ Soft Delete.
- **Frontend**: Đã có `SyllabusManager`, `CourseForm`, `TeacherDashboard` giúp tạo, chỉnh sửa nội dung dễ dàng. Giao diện `CourseList` và `CourseDetail` hoạt động tốt.
- **Tích hợp**: Upload file ảnh/video lên MinIO hoàn chỉnh.
- **Chưa có chỗ để Giáo viên thêm tài liệu ở từng lessonBlock**.

## 2. Các mục tiêu chưa đạt / Cần nâng cấp (Remaining Tasks)

### 🔴 Lỗi cần fix ngay (Bugs)
- [x] **Sai số % Tiến độ khi xóa LessonBlock**: (Đã xong ✅ - Đã bổ sung lọc `isDeleted = false` trong SQL)
- [x] **UI Video Player**: (Đã xong ✅ - Đã CSS lại khung hình và thanh điều khiển chuẩn responsive)

### 🟡 Tính năng nâng cấp (Enhancements)
- [ ] **Quản lý Trạng thái Khóa học (Workflow)**: Chuyển từ bản nháp sang phê duyệt (Đang chờ ưu tiên sau).
- [x] **Tìm kiếm & Lọc nâng cao**: (Đã xong ✅ - Tích hợp tìm kiếm keyword và lọc giá)
- [x] **Review & Rating**: (Đã xong ✅ - Đã có tính năng chấm điểm và bình luận)
- [x] **Tích hợp Quiz từ Bank**: (Đã xong ✅ - Đã móc nối QUIZ với ngân hàng câu hỏi)
- **AI Syllabus**: Kích hoạt lại tính năng dùng Gemini/OpenAI sinh tự động sườn bài học (hiện code đang ẩn).
