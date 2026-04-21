# Module 2: Backlog Nâng Cấp (Enhancements)

Tài liệu này lưu trữ các tính năng không cốt lõi nhưng cần thiết để hoàn thiện Module 2 (Course & Lesson Management) theo tiêu chuẩn chuyên nghiệp. Các tính năng này sẽ được triển khai trong tương lai khi các Module chính đã định hình.

## 1. Tìm kiếm & Lọc nâng cao (Advanced Search & Filter)
- **Tình trạng hiện tại:** Chỉ có thể lọc khóa học theo `jlptLevel`.
- **Yêu cầu nâng cấp:**
  - Hỗ trợ tìm kiếm mờ (Full-text search) theo từ khóa trên các trường Tiếng Việt và Tiếng Nhật (`titleVi`, `titleJa`, `descriptionVi`).
  - Hỗ trợ lọc theo khoảng giá (`minPrice`, `maxPrice`) hoặc cờ "Miễn phí" / "Trả phí".

## 2. Quản lý trạng thái khóa học chuyên nghiệp (Workflow Status)
- **Tình trạng hiện tại:** Sử dụng biến boolean `isPublished` (Chỉ có Công khai / Nháp).
- **Yêu cầu nâng cấp:**
  - Chuyển đổi sang `Enum CourseStatus` với các trạng thái: `DRAFT`, `PENDING_APPROVAL`, `PUBLISHED`, `ARCHIVED`.
  - **Quy trình duyệt:** Teacher chỉ có quyền chuyển sang `PENDING_APPROVAL`. Admin mới có quyền chuyển sang `PUBLISHED` để kiểm soát chất lượng nội dung.

## 3. Hệ thống Quiz & Bài tập thực tế (Module 5 Integration)
- **Tình trạng hiện tại:** Khối `QUIZ` trong bài học hiện tại chỉ là placeholder (chỗ trống).
- **Yêu cầu nâng cấp:**
  - Liên kết khối `QUIZ` với ngân hàng câu hỏi của **Module 5**.
  - Tự động chấm điểm và ghi nhận vào tiến độ học tập khi học viên hoàn thành khối QUIZ trong bài học.

## 4. Hệ thống Đánh giá & Phản hồi (Review & Rating)
- **Yêu cầu nâng cấp:**
  - Cho phép học viên đã Enroll khóa học được để lại đánh giá (1-5 sao) và bình luận.
  - Hiển thị điểm đánh giá trung bình trên thẻ khóa học (Course Card) và trang chi tiết.

## 5. Tinh chỉnh AI Syllabus (Gemini Refinement) ⚡
- **Tình trạng hiện tại:** Đã cấu hình Gemini API Key nhưng đang tạm ẩn UI.
- **Yêu cầu nâng cấp:**
  - Mở lại UI chọn Model và tinh chỉnh Prompt để AI tạo ra các khối TEXT có chiều sâu hơn về ngữ pháp JLPT.
  - Hỗ trợ AI tự động tìm kiếm link Video liên quan trên YouTube để điền vào khối VIDEO.

## 6. Logic bảo vệ & Xác thực (Safety & Validation)
- **Hệ thống hiện tại:** ✅ Đã chặn Publish khóa học nếu chưa có bài học (Frontend).
- **Yêu cầu nâng cấp:**
  - Implement logic tương tự ở tầng Backend Service để đảm bảo an toàn tuyệt đối.
  - Đảm bảo tất cả các query `findAll` trong Repository tự động lọc bỏ các bản ghi có `isDeleted = true`.

## 7. Đa ngôn ngữ UI (i18n Frontend)
- Chuyển đổi các nhãn giao diện (Learn Now, Syllabus, Dashboard...) sang hệ thống i18n để hỗ trợ học viên quốc tế.
