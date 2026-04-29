# 🌸 PHÂN TÍCH SÂU MODULE 2: COURSE & LESSON MANAGEMENT

**Phiên bản phân tích:** 1.0 Deep Dive  
**Mục đích:** Cung cấp cái nhìn toàn diện về logic nghiệp vụ, quy tắc kinh doanh và các quyết định then chốt để xây dựng hệ thống quản lý nội dung học tập tối ưu.

---

## 🎯 1. Mục tiêu cốt lõi của Module 2
Hệ thống cần đạt được các tiêu chuẩn tương đương với các nền tảng học tiếng Nhật lớn (Riki, DungMori, JapanesePod101):
- **Cấu trúc JLPT:** Xây dựng lộ trình học có cấu trúc chặt chẽ từ N5 → N1.
- **CMS mạnh mẽ:** Cho phép Teacher/Admin dễ dàng tạo, chỉnh sửa và quản lý nội dung đa phương tiện.
- **Trải nghiệm tìm kiếm:** Giúp Student dễ dàng tìm kiếm, ghi danh (enroll) và học tập theo thứ tự logic.
- **Nền tảng hệ thống:** Đóng vai trò là "xương sống" cung cấp dữ liệu cho các Module Progress, Quiz, SRS, Gamification và Payment.

> [!NOTE]
> Đây là module quan trọng nhất ở giai đoạn đầu, vì không có nội dung thì toàn bộ ứng dụng sẽ không có giá trị sử dụng.

---

## 🔄 2. Luồng nghiệp vụ chính (User Journey)

### 👨‍🏫 A. Teacher / Admin Journey (Tạo nội dung)
1. **Truy cập Dashboard**: Vào khu vực quản lý khóa học chuyên dụng.
2. **Tạo Course**: Điền thông tin tiêu đề, mô tả (hỗ trợ đa ngôn ngữ vi/ja/en), cấp độ JLPT, giá cả (free/paid) và ảnh thumbnail.
3. **Quản lý Lesson**: Thêm các bài học lớn vào Course kèm theo `order_index` để quy định thứ tự.
4. **Xây dựng LessonBlock**: 
   - Trong mỗi Lesson, thêm nhiều khối nội dung (Video, Text, Audio, Quiz, Reading, Embed...).
   - Đây là đơn vị linh hoạt nhất giúp bài giảng sinh động.
5. **Xử lý Media**: Upload các tệp tin media (thumbnail, video, audio) lên hệ thống lưu trữ **MinIO**.
6. **Kiểm soát trạng thái**: Xem trước nội dung (Preview) sau đó quyết định `Publish` (công khai) hoặc `Unpublish` (ẩn).
7. **Workflow nâng cao**: (Phát triển sau) Gửi nội dung cho Admin phê duyệt trước khi xuất bản.

### 👨‍🎓 B. Student Journey
1. **Khám phá**: Vào trang danh sách khóa học, sử dụng bộ lọc theo JLPT, Giá hoặc tìm kiếm theo tên.
2. **Xem chi tiết**: Xem mô tả, số lượng bài học, tiến độ cá nhân và xem thử (teaser) nếu có.
3. **Ghi danh (Enroll)**:
   - **Khóa học miễn phí**: Enroll ngay lập tức.
   - **Khóa học trả phí**: Chuyển sang quy trình thanh toán (Module 6).
4. **Bắt đầu học**: Truy cập vào "My Courses", bắt đầu học theo từng Lesson và LessonBlock.
5. **Cập nhật tiến độ**: Tiến độ tự động được ghi nhận và cập nhật realtime khi hoàn thành các khối nội dung.

---

## 🛠️ 3. Đặc tả Chức năng chi tiết
| Chức năng | Mô tả chi tiết nghiệp vụ | Quyền hạn (Role) |
| :--- | :--- | :--- |
| **CRUD Course** | Quản lý Title, Desc (multi-lang), JLPT level, price, thumbnail, status, tags | Teacher + Admin |
| **CRUD Lesson** | Quản lý tiêu đề bài học lớn, sắp xếp thứ tự hiển thị (`order_index`) | Teacher + Admin |
| **CRUD LessonBlock** | Đa dạng các loại: VIDEO, TEXT, AUDIO, QUIZ, READING, EMBED... kèm nội dung và vị trí | Teacher + Admin |
| **Media Upload** | Upload Media -> MinIO, xử lý trả về Presigned URL bảo mật | Teacher + Admin |
| **Filter & Search** | Tìm kiếm khóa học theo JLPT, giá, từ khóa, trạng thái | Student (Public) |
| **Enroll System** | Tạo bản ghi Enrollment, kiểm tra điều kiện thanh toán/miễn phí | Student |
| **Status Control** | Quản lý trạng thái hiển thị (Draft / Published / Unpublished) | Teacher + Admin |
| **Preview Mode** | Chế độ xem thử nội dung teaser mà không cần enroll | Teacher + Student |

---

## ⚖️ 4. Quy tắc & Logic nghiệp vụ (Business Rules)

### 📂 Cấu trúc hiển thị
- **Phân cấp**: `Course` → `Lessons` (order_index) → `LessonBlocks` (order_index).
- **Mặc định**: Học viên được phép học tự do các bài trong khóa học đã đăng ký.

### 🚦 Trạng thái Khóa học
- **Draft**: Chỉ Teacher/Admin sở hữu mới có thể thấy và chỉnh sửa.
- **Published**: Hiển thị công khai cho tất cả người dùng và công cụ tìm kiếm.
- **Unpublished**: Ẩn khỏi danh sách tìm kiếm nhưng những người đã enroll từ trước vẫn có quyền tiếp tục học.

### 📝 Logic Enrollment
- **Duy nhất**: Một User chỉ có tối đa 1 bản ghi Enrollment cho mỗi Course (trừ khi có yêu cầu reset tiến độ).
- **Điều kiện**: Bản ghi Enrollment chỉ được tạo khi khóa học là Miễn phí hoặc giao dịch thanh toán thành công (Success).

### 🌍 Đa ngôn ngữ & Media
- **Multi-language**: Tiêu đề và mô tả cần hỗ trợ vi/ja/en (Sử dụng JSONB hoặc bảng Translation).
- **Media Storage**: Tuyệt đối không lưu file trực tiếp trong Database. Sử dụng MinIO và trả về Presigned URL có thời hạn (1-7 ngày) để bảo mật.

---

## 💡 5. Quyết định then chốt & Điểm cần chú ý

- **Chiến lược nội dung (AI Seed):** Sử dụng dữ liệu chuẩn (KanjiDic, JMdict) và AI (Gemini) để tự động hóa việc tạo Syllabus và ví dụ mẫu, giảm tải cho giáo viên.
- **Completion Rules:** Mỗi loại LessonBlock cần có quy tắc hoàn thành khác nhau (Video: tự động theo thời lượng; Quiz: theo điểm số; Text: nhấn nút thủ công).
- **Soft Delete:** Sử dụng `is_deleted = true` cho tất cả thực thể. **Lưu ý:** Logic tính % tiến độ phải lọc bỏ các bản ghi đã bị xóa này để đảm bảo độ chính xác.
- **Free vs Paid:** Cân nhắc cho phép Student xem thử (Teaser) 1-2 block đầu của khóa học trả phí để tăng tỷ lệ chuyển đổi.

---

## ⚠️ 6. Edge Cases & Xử lý ngoại lệ
- **Enroll trùng lặp:** Chặn và trả về thông báo "Bạn đã tham gia khóa học này".
- **Sửa đổi khi đang học:** Khi giáo viên xóa bài hoặc sửa nội dung lúc học viên đang học, cần có cơ chế thông báo hoặc lưu phiên bản (MVP: Cho phép sửa trực tiếp nhưng có cảnh báo).
- **Video kích thước lớn:** Cần xử lý giao diện Responsive (Fix lỗi video bị to quá khổ, không thấy thanh điều khiển).
- **Khóa học rỗng:** Chặn không cho `Publish` khóa học nếu chưa có bất kỳ Lesson nào.
- **Truy cập trái phép:** Redirect người dùng chưa enroll về trang chi tiết nếu cố tình truy cập link bài học trực tiếp.

---

## 🇻🇳 7. Gợi ý tối ưu cho người Việt học JLPT
- **Ngôn ngữ giải thích:** Mặc định sử dụng tiếng Việt kèm thuật ngữ tiếng Nhật chuyên ngành.
- **Tagging thông minh:** Thêm các thẻ phân loại như “Trọng tâm Kanji”, “Grammar N4 cấp tốc”.
- **Mục tiêu rõ ràng:** Mỗi Lesson nên có phần "Mục tiêu bài học" (VD: "Sau bài này bạn sẽ nắm 50 từ vựng N5").
- **Thiết kế Thumbnail:** Sử dụng màu sắc nổi bật, mang tính biểu tượng (Hoa anh đào, Huy hiệu JLPT).

---

## 🔗 8. Liên kết hệ thống
- **Module 3**: Cung cấp cấu trúc dữ liệu để tính toán progress.
- **Module 4**: Liên kết LessonBlock với các từ vựng/kanji cụ thể trong Dictionary.
- **Module 5**: Câu hỏi từ Quiz trong LessonBlock có thể tự động tạo thẻ Flashcard cho SRS.
- **Module 6**: Xử lý logic Enroll ngay sau khi trigger thanh toán thành công.
- **Module 8**: Hoàn thành LessonBlock -> Cộng XP và cập nhật Streak cho User.