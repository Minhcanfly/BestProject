# Tài liệu Đặc tả Chức năng & Module - SakuraLearn LMS
*(Software Requirements/Feature Specification)*

Tài liệu này đặc tả các chức năng chi tiết trong 8 module hệ thống của dự án SakuraLearn, làm căn cứ cho việc thiết kế UI/UX và lập trình API.

---

## 1. Module 1: Authentication & User Management (Cốt lõi)
**Hệ thống phân quyền (RBAC) với 3 vai trò:**
*   **STUDENT:** Người học, chỉ có quyền mua khóa học, học bài và xem profile cá nhân.
*   **TEACHER:** Giảng viên, có quyền tạo khóa học, tạo bài học, quản lý nội dung và xem thống kê học viên trong khóa của mình.
*   **ADMIN:** Quản trị viên hệ thống, toàn quyền quản trị User, Audit Logs, và quản lý doanh thu.

**Chức năng chi tiết:**
- Đăng nhập / Đăng ký (Email + Password sử dụng JWT).
- Refresh Token logic để duy trì phiên đăng nhập không bị gián đoạn.
- Quản lý Hồ sơ: Cập nhật thông tin, thay đổi ảnh đại diện.
- Đa ngôn ngữ (i18n): Cho phép thiết lập ngôn ngữ hiển thị mặc định (vi, ja, en) bằng localStorage ở Front-end và Header "Accept-Language" ở Backend.

## 2. Module 2: Course & Lesson Management 
**Dành cho Teacher/Admin:**
- Tạo/Sửa/Xóa Khóa học: Nhập tên, cấp độ JLPT, mức giá (có thể Free hoặc Trả phí).
- Upload nội dung: Tải lên thumbnail, tạo Bài học.
- Quản lý Bài học (Lesson): Có thể thiết lập cấu trúc chương và bài. Trong mỗi bài có `lesson_type` (VIDEO, READING, QUIZ) để định nghĩa kiểu bài.

**Dành cho Student:**
- Trang Course List: Hiển thị các khóa học có sẵn, có filter theo level (N5-N1).
- Trang Course Details: Xem thông tin giảng viên, mô tả khóa học, và khung chương trình trước khi click **Enroll/Mua**.

## 3. Module 3: Learning Experience & Progress
**Trải nghiệm học tập:**
- **Video Player:** Trình phát video bài học. (Sử dụng URL YouTube/Vimeo hoặc file streaming).
- **Progress Tracking:** Mỗi bài học có nút "Mark as Completed". Sau khi hoàn thành, hệ thống cập nhật `progress_percentage`. Cung cấp thanh tiến độ vòng tròn % cực kỳ trực quan ngoài màn hình Dashboard.
- **Quizzing cơ bản:** Trong một lesson kiểu (QUIZ), hiển thị danh sách câu hỏi trắc nghiệm dưới dạng Form, có tính điểm đa hệ số bài tập.

## 4. Module 4: Knowledge Base (Kho tự điển)
- Chức năng như một **Từ điển (Dictionary)** thu nhỏ được tích hợp ngay trong app (Tương tự Jdict/Mazii).
- **Hán Tự (Kanji):** Hiển thị chữ Hán, số nét, bộ thủ, âm On/Kun. Đặc biệt hiển thị *Ảnh thứ tự nét viết* và *Audio đọc âm*.
- **Từ Vựng (Vocab) & Ngữ Pháp:** Hiển thị ví dụ thực tế. 
- Mọi Kanji, Từ vựng đều có một nút **"Lưu vào My Notebook"** ở góc phải người dùng.

## 5. Module 5: Review & Practice (Spaced Repetition System - SRS)
**Flashcard và Ôn tập:**
- Khởi nguồn từ Module 4, các mục từ trong "My Notebook" có thể được khởi tạo thành dạng **Flashcards**.
- **Thuật toán SM-2:** 
  - Khi ôn tập, thẻ sẽ hiện mặt trước (Từ vựng/Kanji). 
  - Người dùng lật thẻ (Mặt sau giải nghĩa) và đánh giá độ khó: Kém (1) - Trung bình (2) - Tốt (3) - Rất tốt (4).
  - Thuật toán tính toán `due_date` tiếp theo, nhét thẻ về lại vào hàng chờ.

## 6. Module 6: Monetization (Thanh toán) & Notification
- Tích hợp cổng **VNPay (Sandbox Mode)**.
- Xử lý Webhook (IPN URL) từ VNPay gửi về Backend để tự động mở khóa học nếu `status = SUCCESS`.
- **Notification:** Bắn thông báo nội bộ qua Socket/Polling khi giao dịch thành công. Hoặc dùng Kafka sinh sự kiện: "[Kafka Event] Payment Success -> Mở Course cho User -> Bắn Notification".

## 7. Module 7: Administration & Analytics (Dành cho Admin)
- Dashboard tài chính: Biểu đồ báo cáo doanh thu theo tháng phân mảnh theo các khóa học.
- Quản trị viên phân quyền Roles cho User mới.
- Xem nhật ký truy cập nhờ bảng `audit_log` phục vụ tracking lỗi hệ thống.

## 8. Module 8: Gamification (Mở rộng & Nâng cao)
- **Redis Cache:** Cache danh sách khóa học (Course Catalog) vì dữ liệu này ít đổi, giúp tốc độ phản hồi API < 50ms.
- **Streak:** Đếm số ngày liên tục truy cập và hoàn thành ít nhất 1 bài học (Tương tự ngọn lửa của Duolingo).
- Giao diện hỗ trợ Dark Mode.
