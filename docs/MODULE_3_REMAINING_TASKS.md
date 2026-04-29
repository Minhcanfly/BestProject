# 🌸 MODULE 3: Learning Experience & Progress - Trạng thái & Nhiệm vụ còn lại

## 1. Đánh giá hiện trạng (Đã hoàn thành)
- **Backend**: Có đầy đủ `ProgressServiceImpl` quản lý việc đánh dấu hoàn thành `LessonBlockProgress` và tổng hợp phần trăm cho `LessonProgress`. Hỗ trợ Last Accessed.
- **Frontend**: Trang `LearningView.jsx` rất trực quan, tự động mark as completed cho VIDEO (nếu xem đủ >85%) và nút thủ công cho TEXT. Nút "Tiếp tục học" hoạt động trên `MyCourses.jsx`.

## 2. Các mục tiêu chưa đạt / Cần nâng cấp (Remaining Tasks)

### 🔴 Lỗi & Thiếu sót Logic (Critical)
- **Logic hoàn thành Audio**: Hiện tại Audio chưa có logic tự động đánh dấu hoàn thành khi nghe đủ 80% thời lượng.
- **Lưu trạng thái bài học (Resume State)**: Nếu user xem dở Video ở phút thứ 5 rồi tắt app, lần sau mở lại chưa resume được đúng vị trí cũ.
- **Tiến độ realtime**: Khi chuyển bài, progress cập nhật hơi chậm hoặc yêu cầu tải lại trang. Cần cơ chế cập nhật UI tức thời (Optimistic Update) hoặc WebSocket nếu muốn mượt hơn.

### 🟡 Tính năng nâng cấp (Enhancements)
- **Thông điệp khích lệ (Motivational UI)**: Thiếu các popup/thông báo cổ vũ khi người dùng đạt các mốc tiến độ quan trọng (VD: "Bạn đã xong 50% khóa học!").
- **Dark Mode**: Giao diện `LearningView` cần hỗ trợ Dark Mode chuẩn vì người Việt thường học vào ban đêm.
- **Ghi chú cá nhân (Personal Notes)**: Đã có bảng `PersonalNote` nhưng UI tương tác trong lúc học chưa thực sự tiện lợi, có vẻ hơi dư thừa/trồng chéo với Notebook của Module 4. Cần chuẩn hóa cách lưu Note trong lúc học.
- **Xử lý Edge Case**: Graceful fallback khi Teacher sửa nội dung LessonBlock trong lúc học viên đang mở trang học.
