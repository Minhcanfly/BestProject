# 🌸 PHÂN TÍCH SÂU MODULE 3: LEARNING EXPERIENCE & PROGRESS

**Phiên bản phân tích:** 1.0 Deep Dive  
**Mục đích:** Đảm bảo trải nghiệm học tập liền mạch, theo dõi tiến độ chính xác và tạo động lực cho học viên thông qua các chỉ số trực quan.

---

## 🎯 1. Mục tiêu cốt lõi của Module 3
Module này tập trung vào "Trái tim" của trải nghiệm người dùng:
- **Tương tác đa phương tiện:** Hỗ trợ trình phát Video, Audio, Text và Quiz mượt mà.
- **Tính toán tiến độ:** Theo dõi chi tiết mức độ hoàn thành bài học đến từng khối nội dung (LessonBlock).
- **Trải nghiệm cá nhân hóa:** Lưu trữ vị trí học cuối cùng, ghi chú cá nhân và tạo luồng học tập thông minh.
- **Tối ưu hóa UI/UX:** Giao diện học tập (Learning View) phải chuyên nghiệp, giảm thiểu xao nhãng.

---

## 🔄 2. Luồng trải nghiệm người dùng (UX Flow)

### 👨‍🎓 Hành trình của Học viên
1. **Lối vào**: Từ Dashboard, người dùng nhấn "Học tiếp" (Continue Learning) hoặc chọn khóa học từ danh sách "My Courses".
2. **Giao diện học tập (Learning View)**:
   - **Thanh Syllabus**: Hiển thị danh sách bài học bên cạnh để dễ dàng chuyển đổi.
   - **Vùng nội dung chính**: Tự động hiển thị trình phát tương ứng với loại Block (Video Player, Audio Player, Text Reader, hoặc Quiz UI).
3. **Tương tác trong bài học**:
   - Ghi chú cá nhân (Personal Note) ngay dưới nội dung bài học.
   - Hệ thống tự động đánh dấu hoàn thành hoặc người dùng nhấn nút thủ công.
4. **Cập nhật tiến độ**: Ngay sau mỗi hành động hoàn thành, thanh tiến độ của bài học và toàn khóa học sẽ được cập nhật realtime.

---

## 🛠️ 3. Đặc tả Chức năng chi tiết
| Chức năng | Mô tả chi tiết nghiệp vụ | Trạng thái |
| :--- | :--- | :--- |
| **LessonBlock Player** | Tích hợp trình phát đa phương tiện (Video MinIO, Audio, Markdown Text) | ✅ Hoàn thiện |
| **Progress Tracking** | Ghi nhận trạng thái hoàn thành cho từng `LessonBlockProgress` | ✅ Hoàn thiện |
| **Automatic Progress** | Tự động tính toán % hoàn thành của Lesson và Course | ✅ Hoàn thiện |
| **Last Accessed** | Tự động lưu và cập nhật `last_accessed_at` trong bảng Enrollment | ✅ Hoàn thiện |
| **Manual Completion** | Nút đánh dấu hoàn thành thủ công cho các khối Text/Reading | ✅ Hoàn thiện |
| **Personal Notes** | Hệ thống ghi chú cá nhân (Private) cho từng bài học | ✅ Hoàn thiện |
| **Continue Learning** | Nút gợi ý bài học đang dang dở ngay tại màn hình chính | ✅ Hoàn thiện |

---

## ⚖️ 4. Quy tắc & Logic tính toán tiến độ (Core Logic)

### ✅ Quy tắc Hoàn thành (Completion Rules)
Hệ thống áp dụng các quy tắc khác nhau tùy theo loại nội dung:
- **VIDEO**: Tự động đánh dấu hoàn thành khi học viên xem đạt mức ≥ 85% tổng thời lượng video.
- **AUDIO**: Tự động khi nghe đạt mức ≥ 80% thời lượng hoặc người dùng nhấn nút xác nhận.
- **TEXT / READING**: Học viên phải chủ động nhấn nút "Đã hoàn thành" sau khi đọc xong.
- **QUIZ**: Phải đạt số câu đúng tối thiểu (mặc định là 70%) mới được tính là hoàn thành khối nội dung này.

### 📊 Công thức tính phần trăm (%)
- **Lesson Progress**: `(Số Block đã hoàn thành trong bài / Tổng số Block của bài đó) * 100`.
- **Course Progress**: `(Tổng số Block đã hoàn thành toàn khóa / Tổng số Block của toàn khóa học) * 100`.

> [!IMPORTANT]
> **Lưu ý về dữ liệu:** Logic tính toán phải loại trừ các bản ghi đã bị xóa (`is_deleted = true`) để đảm bảo tiến độ có thể đạt mốc 100%.

---

## 💡 5. Quyết định & Logic nghiệp vụ quan trọng

- **Optimistic UI:** Khi học viên nhấn hoàn thành, giao diện Frontend sẽ cập nhật thanh tiến độ ngay lập tức trước khi nhận phản hồi từ Backend để tạo cảm giác phản hồi cực nhanh.
- **Resume State:** Hệ thống cần lưu trữ timestamp (vị trí thời gian) cuối cùng của Video/Audio để học viên có thể học tiếp đúng vị trí đó ở lần sau.
- **Tính nhất quán:** Khi giáo viên thay đổi số lượng LessonBlock trong Course, hệ thống phải tự động tính toán lại % tiến độ cho tất cả học viên đã đăng ký.
- **Múi giờ:** Toàn bộ lịch sử `last_accessed` phải được chuẩn hóa theo múi giờ `Asia/Ho_Chi_Minh`.

---

## 🌑 6. Trải nghiệm người dùng nâng cao (Enhancement)
- **Dark Mode chuyên sâu:** Giao diện học tập cần tối ưu chế độ tối để bảo vệ mắt học viên khi học vào ban đêm.
- **Motivational UI:** Hiển thị popup hoặc hiệu ứng Confetti chúc mừng khi học viên hoàn thành các mốc quan trọng (25%, 50%, 75%, 100%).
- **Syllabus Navigation:** Cho phép học viên chuyển bài nhanh ngay trong trình phát mà không cần quay lại trang danh sách.

---

## ⚠️ 7. Xử lý Edge Cases
- **Mạng yếu:** Xử lý cơ chế Retry hoặc lưu tạm (Local Storage) khi hành động lưu tiến độ bị lỗi do kết nối mạng.
- **Thay đổi cấu trúc:** Nếu học viên đã hoàn thành 100%, nhưng sau đó giáo viên thêm bài học mới, trạng thái hoàn thành sẽ được cập nhật lại theo tỉ lệ mới.
- **Truy cập đồng thời:** Đảm bảo tiến độ đồng bộ chính xác khi người dùng học trên cả trình duyệt web và thiết bị di động.

---

## 🔗 8. Liên kết hệ thống
- **Module 2**: Nhận dữ liệu cấu trúc Syllabus để hiển thị.
- **Module 5**: Gợi ý các từ vựng xuất hiện trong bài học vào SRS để ôn tập.
- **Module 8**: Hoàn thành bài học/khóa học sẽ trigger cộng XP, cập nhật Streak và tặng huy hiệu (Badge).
