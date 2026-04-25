🌸 PHÂN TÍCH SÂU MODULE 3: Learning Experience & Progress Phiên bản: 1.0 Deep Dive Mục tiêu phân tích: Làm rõ toàn bộ logic trải nghiệm học và theo dõi tiến độ – module này quyết định người dùng có “cảm giác đang học thật” hay không.

## 1. Mục tiêu cốt lõi của Module 3 - nên tham khảo thêm Riki, DungMori,JapanesePod101

Cung cấp trải nghiệm học mượt mà, dễ chịu cho người Việt học JLPT.

Theo dõi tiến độ thực tế một cách chính xác và minh bạch.

Làm cầu nối giữa Module 2 (nội dung) và Module 5 (SRS), Module 8 (Gamification).

Tạo cảm giác tiến bộ rõ ràng để tăng retention.

## 2. Luồng nghiệp vụ chính (User Journey)

Luồng học điển hình của Student:

Vào My Courses → chọn một Course đã enroll. - xong

Xem danh sách Lesson (theo thứ tự hoặc tự do tùy cấu hình). - xong

Chọn một Lesson → Hệ thống hiển thị danh sách LessonBlock theo thứ tự. - xong

Học theo LessonBlock: - xong

VIDEO → mở video player - xong

TEXT / READING → đọc nội dung + có thể highlight hoặc ghi note - xong

AUDIO → nghe và repeat - có giao diện chưa có logic

QUIZ → làm bài kiểm tra - xong

Hoàn thành LessonBlock → hệ thống tự động hoặc thủ công mark COMPLETED. - xong

Khi hoàn thành đủ LessonBlock trong một Lesson → Lesson được đánh dấu hoàn thành. - xong

Tiến độ toàn Course được cập nhật realtime hoặc gần realtime. - xong

Hệ thống ghi nhận last_accessed → dùng cho Streak (Module 8) và gợi ý tiếp tục học. - có logic rồi nhưng chưa mượt

Luồng Teacher/Admin:

Xem preview LessonBlock khi tạo nội dung (Module 2). - xong

Xem báo cáo tiến độ học của học viên (trong Module 7). - chưa làm

## 3. Chức năng chính

Chức năng

Mô tả chi tiết

Ghi chú quan trọng

Lesson Free Navigation - xong

LessonBlock Player - xong

Video player, Text reader, Audio player, Quiz interface - tạm ổn

Tích hợp MinIO URL - xong

Completion Tracking - xong

Mark as Completed (thủ công / tự động) - xong nhưng hơi xấu

Theo từng Block - xong

Progress Calculation - tạm ổn

Tính % tiến độ của Lesson và toàn Course - tạm ổn

Quiz in Lesson - chưa xong

Multiple choice, Fill-in-blank, Matching, Listening - tính sau, ưu tiên Multiple choice

MVP giữ đơn giản

Continue Learning - tạm ổn

Nút “Tiếp tục học” trên Dashboard - tạm ổn

Personal Note - tạm ổn (tham khảo thêm Riki)

Ghi chú cá nhân trong LessonBlock - tạm ổn

Rất hữu ích cho người Việt

## 4. Quy tắc & Logic nghiệp vụ quan trọng (Business Rules)

### A. Trạng thái LessonBlock - có giao diện nhưng chưa hoàn thiện

NOT_STARTED → IN_PROGRESS → COMPLETED

Mỗi LessonBlock có quy tắc hoàn thành riêng:- xong

VIDEO: Tự động khi xem ≥ 85% thời lượng (khuyến nghị). - xong

AUDIO: Tự động khi nghe ≥ 80% hoặc có nút “Đã nghe xong”. - chưa kiểm tra được

TEXT / READING: Có nút “Mark as Completed” (hoặc tự động khi scroll hết). - tạm ổn

QUIZ: Hoàn thành khi nộp bài và đạt điểm tối thiểu (ví dụ ≥ 70%). Nếu không đạt có thể làm lại. - tạm ổn tham khảo thêm Quizlet, Duolingo, Lingodeer

### B. Tiến độ Calculation (Quan trọng nhất) Khuyến nghị dùng công thức sau (chính xác và hợp lý với thiết kế LessonBlock):

Lesson Progress % = (Số LessonBlock đã COMPLETED / Tổng số LessonBlock trong Lesson) × 100 - tạm ổn

Course Progress % = (Tổng số LessonBlock đã COMPLETED trong toàn Course / Tổng số LessonBlock của Course) × 100 - tạm ổn

→ Cách này chính xác hơn so với chỉ đếm số Lesson.

### C. Last Accessed & Time Spent

Cập nhật last_accessed mỗi khi user mở Lesson hoặc LessonBlock. - tạm ổn

time_spent (tùy chọn): tích lũy thời gian học thực tế (dùng cho analytics sau). - tính sau

## 5. Các điểm dễ nhầm lẫn / Quyết định then chốt

Cách tính tiến độ Bạn đang có LessonBlock. - tạm ổn

Tự động hoàn thành Video Quyết định: Dùng YouTube embed hay tự host video trên MinIO? → Nếu tự host MinIO thì dễ track phần trăm xem hơn (dùng video.js hoặc HLS). - tạm ổn

Quiz trong Lesson - tạm ổn

MVP: Giữ đơn giản (không lưu lịch sử attempt chi tiết).

Chỉ cần lưu kết quả lần làm gần nhất và điểm số. - tạm

Có cho phép làm lại quiz không? (Khuyến nghị: Có) - xong

Thứ tự học

Cho học tự do

Tiến độ realtime Có cập nhật tiến độ ngay lập tức hay chỉ khi refresh trang? → Nên cập nhật ngay (dùng WebSocket hoặc gọi API sau mỗi completion). - tính sau, hiện tại là refresh

## 6. Edge Cases cần xử lý

User học dở LessonBlock → đóng app → lần sau vào lại phải tiếp tục từ vị trí cũ (đặc biệt với Video). - tạm ổn

Quiz làm nửa chừng → có lưu tạm không? (MVP có thể không cần). - chưa làm

Teacher chỉnh sửa LessonBlock sau khi Student đã học → tiến độ có bị reset không? (Khuyến nghị: Không reset, chỉ áp dụng cho user học sau). - chưa làm

Course có LessonBlock = 0 → không cho phép tính tiến độ. - xong

User hoàn thành LessonBlock nhưng sau đó Teacher xóa Block → cần xử lý graceful (không crash tiến độ). - chưa làm

## 7. Gợi ý phù hợp với người Việt học JLPT

Giải thích đáp án Quiz phải bằng tiếng Việt rõ ràng, dễ hiểu. - chưa làm

Cho phép ghi chú cá nhân bằng tiếng Việt ngay trong LessonBlock (rất cần thiết khi học Kanji/Grammar). - tạm ổn

Hiển thị “Mốc đạt được” rõ ràng: “Bạn đã hoàn thành 60% N5 – chỉ còn 8 bài nữa là xong phần Kanji”. - tạm ổn

Thêm motivational message khi hoàn thành Lesson (ví dụ: “Tuyệt vời! Bạn vừa nắm vững 20 từ vựng mới.”). - tạm ổn

Dark mode nên mặc định hỗ trợ tốt vì nhiều người học buổi tối. - chưa làm

Nút “Tiếp tục học” nên rất nổi bật trên Dashboard. - xong

## 8. Liên kết với các Module khác

Module 2: Cung cấp dữ liệu LessonBlock.

Module 4: Có thể link LessonBlock với từ vựng/kanji cụ thể để thêm vào SRS dễ dàng.

Module 5 (SRS): Khi hoàn thành Quiz hoặc LessonBlock → gợi ý “Thêm các từ này vào SRS ngay”.

Module 6: Không trực tiếp, nhưng tiến độ cao có thể dùng để khuyến mãi.

Module 8 (Gamification): Hoàn thành LessonBlock/Lesson → cộng XP, kiểm tra Streak.

Module 7: Admin xem báo cáo tiến độ trung bình của học viên.
