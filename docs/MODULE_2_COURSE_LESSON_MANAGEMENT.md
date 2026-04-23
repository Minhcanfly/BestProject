🌸 PHÂN TÍCH SÂU MODULE 2: Course & Lesson Management Phiên bản phân tích: 1.0 Deep Dive Mục đích: Giúp bạn hiểu rõ toàn bộ logic nghiệp vụ, quy tắc kinh doanh, quyết định then chốt và cách triển khai tối ưu trước khi code.

## 1. Mục tiêu cốt lõi của Module 2 - nên tham khảo thêm Riki, DungMori,JapanesePod101

Xây dựng lộ trình học có cấu trúc theo chuẩn JLPT N5 → N1.

Cho phép Teacher/Admin dễ dàng tạo và quản lý nội dung học.

Cho phép Student dễ dàng tìm kiếm, enroll và học theo thứ tự logic.

Là nền tảng để tất cả các module sau (Progress, Quiz, SRS, Gamification, Payment) hoạt động.

Đây là module quan trọng nhất ở giai đoạn đầu, vì không có Course & Lesson thì toàn bộ app không có nội dung để học.

## 2. Luồng nghiệp vụ chính (User Journey) – Chi tiết theo Role

### A. Teacher / Admin Journey (Tạo nội dung)

Truy cập Course Management Dashboard. - xong

Tạo mới Course → điền title, description (vi/ja/en), JLPT level, giá (free/paid), thumbnail. - xong

Thêm Lesson vào Course (có order_index). - xong

Trong mỗi Lesson → thêm nhiều LessonBlock (Video, Text, Audio, Quiz…) với order_index. - cân đối mở rộng thêm

Upload media (thumbnail, video, audio) → MinIO. - xong

Preview Course → Publish (hoặc Unpublish). - xong

(Nếu có workflow) Gửi duyệt cho Admin. - phát triển sau

### B. Student Journey

Vào trang Courses → Filter: JLPT level, Free/Paid, Tên khóa học. - xong

Xem chi tiết Course (mô tả, số lesson, tiến độ nếu đã enroll, thumbnail). - xong

Nhấn Enroll:

Free course → enroll ngay. - xong

Paid course → chuyển sang Module 6 (Payment). - chưa làm đến

Sau enroll thành công → vào My Courses → bắt đầu học. - xong

Học tự do Lesson → hoàn thành LessonBlock → tiến độ tự động cập nhật (Module 3). - tạm ổn - xong phần LessonBlock và Audio, Text. còn Quiz chưa biết làm

## 3. Chức năng chính (chi tiết) - Đã xong gần hết

Chức năng

Mô tả chi tiết

Role được phép

CRUD Course

Title, desc (multi-lang), JLPT level, price, thumbnail, status, tags

Teacher + Admin

CRUD Lesson

Title, order_index, thuộc Course

Teacher + Admin

CRUD LessonBlock

Type (VIDEO, TEXT, AUDIO, QUIZ, READING, EMBED…), content, order_index, media URL

Teacher + Admin

Media Upload

Thumbnail, Video, Audio → MinIO (presigned URL)

Teacher + Admin

Filter & Search Course

Theo JLPT, giá, từ khóa, status

Student (public)

Enroll Course

Tạo enrollment record, kiểm tra paid/free

Student

Publish / Unpublish

Chỉ course Published mới hiển thị cho Student

Teacher + Admin

Preview Course

Xem nội dung mà không cần enroll (teaser)

Teacher + Student

## 4. Quy tắc & Logic nghiệp vụ quan trọng cần định nghĩa rõ (Business Rules)

Thứ tự hiển thị:

Course → Lessons (order_index). - xong

Lesson → LessonBlocks (order_index). - xong

Mặc định: Student học tự do. - xong

Trạng thái Course:

Draft → chỉ Teacher/Admin thấy. - xong

Published → hiển thị công khai. - xong

Unpublished → ẩn nhưng người đã enroll vẫn học được. - xong

Enrollments:

Một user chỉ có tối đa 1 enrollment cho 1 course (trừ khi reset tiến độ). - xong

Enrollment chỉ tạo khi: Free course hoặc Payment SUCCESS. - chưa làm Payment

Multi-language:

Title và description nên hỗ trợ vi/ja/en (dùng JSONB column hoặc bảng translation riêng). - tính sau

Media Logic:

Tất cả file upload qua MinIO → trả về presigned URL (thời hạn 1–7 ngày hoặc permanent nếu public bucket). - xong

Không lưu file trực tiếp vào DB hoặc local filesystem. - xong

### B. Dashboard Role-based (Cập nhật từ Module 1)
- Hệ thống cần tách biệt Dashboard hiển thị cho từng Role: Student, Teacher, Admin ngay từ đầu để đảm bảo UX/UI phù hợp. - xong

## 5. Các điểm dễ nhầm lẫn / Quyết định then chốt (Decision Points)

💡 Chiến lược nội dung khi thiếu nguồn Giáo viên:
- **Seed Content:** Sử dụng dữ liệu mở chuẩn JLPT (KanjiDic, JMdict) và AI (Gemini/GPT) để tự động hóa việc tạo cấu trúc bài học (Syllabus) và ví dụ. Bạn đóng vai trò là người phê duyệt (Curator) thay vì người viết nội dung từ đầu. - nâng cao

1. LessonBlock là đơn vị linh hoạt nhất (bạn đã thiết kế rất tốt). Quyết định: LessonBlock type nào cần “completion rule” khác nhau? (Video tự động, Quiz yêu cầu điểm, Text thủ công). - đã xong

Tính tiến độ (liên kết Module 3): Theo LessonBlock

Free vs Paid content: Paid course nên cho preview một số LessonBlock đầu tiên (teaser) để tăng chuyển đổi.

Versioning nội dung: Khi Teacher chỉnh sửa LessonBlock sau khi Student đã học → có cần thông báo hay giữ phiên bản cũ cho người đã enroll không? (MVP: đơn giản, cho phép chỉnh sửa trực tiếp). - cho phép chỉnh sửa trực tiếp và thông báo cho các user đã enroll (sẽ làm sau)

Soft Delete: Course/Lesson/LessonBlock nên soft delete (is_deleted = true) thay vì xóa thật. - xong

## 6. Edge Cases & Xử lý ngoại lệ cần chú ý

User cố enroll lại course đã enroll → trả lỗi “Bạn đã tham gia khóa học này”. - xong

Teacher xóa Lesson giữa chừng → ảnh hưởng đến tiến độ của Student đã enroll (cần thông báo hoặc giữ LessonBlock cũ). - chưa làm

Upload video lớn → cần xử lý chunk upload hoặc giới hạn kích thước. - tính sau

Course có 0 Lesson → không cho Publish. - xong
Student chưa enroll mà cố truy cập lesson → redirect về trang Course detail với nút Enroll. - chưa làm

## 7. Gợi ý cách làm phù hợp với người Việt học JLPT

Title và mô tả Course mặc định tiếng Việt + hỗ trợ tiếng Nhật (furigana nếu cần). - tính sau

Thêm tag phổ biến: “N5 Kanji Focus”, “Nghe – Nói JLPT”, “Grammar N4”, “Từ vựng theo chủ đề”. - chưa làm

Cho phép Teacher thêm “Mục tiêu bài học” rõ ràng (ví dụ: “Sau bài này bạn sẽ nắm 50 từ vựng N5”). - chưa làm

Thumbnail nên có thiết kế dễ nhìn, màu sắc nổi bật (hình ảnh hoa anh đào, JLPT badge). - chưa cần

Hỗ trợ preview 1–2 LessonBlock miễn phí cho paid course → tăng tỷ lệ mua. - tính sau

## 8. Liên kết với các Module khác

Module 3: Cung cấp dữ liệu để tính progress và lesson_progress. - xong

Module 4: Có thể link LessonBlock với Kanji/Vocab/Grammar cụ thể. - tính sau

Module 5: LessonBlock Quiz có thể tự động tạo flashcard cho SRS. - tính sau

Module 6: Enroll paid course → trigger Payment. - tính sau

Module 8: Hoàn thành Lesson/LessonBlock → +XP, update streak. - tính sau