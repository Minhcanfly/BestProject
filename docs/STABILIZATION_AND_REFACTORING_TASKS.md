# 🛠 TỐI ƯU HÓA & CỦNG CỐ HỆ THỐNG (STABILIZATION & REFACTORING)

Tài liệu này liệt kê các vấn đề kỹ thuật còn tồn đọng và kế hoạch tối ưu hóa mã nguồn dựa trên phân tích thực tế giữa tài liệu và code. Đây là bước đệm cuối cùng trước khi chuyển sang các Module thương mại (Thanh toán).

---

## 🔴 1. Vấn đề ưu tiên cao (Must-fix for Professionalism)

### 🧪 Hệ thống Unit Test (Backend)
- [ ] **SRS Logic Test**: Viết unit test cho thuật toán SM-2 (kiểm tra interval, ease factor sau các mức đánh giá 1-5).
- [ ] **Progress Calculation Test**: Test logic tính toán % tiến độ Lesson và Course (bao gồm cả trường hợp Video > 85%).
- [ ] **Service CRUD Tests**: Test các nghiệp vụ cốt lõi của CourseService và NotebookService.

### 🏗 Refactoring (Clean Code)
- [ ] **Tách SRS Calculator**: Di chuyển logic tính toán SM-2 từ `NotebookServiceImpl` sang một service riêng biệt là `SrsCalculatorService`.
- [ ] **Migration Cleanup**: Đảm bảo toàn bộ Script Flyway (`V1` -> `V7`) chạy mượt mà trên môi trường sạch (H2 hoặc Postgres mới).

---

## 🟡 2. Hoàn thiện tính năng (Feature Hardening)

### 📚 Module 2: Quản lý Khóa học
- [ ] **AI Syllabus UI**: Kích hoạt và thiết kế giao diện cho tính năng AI Syllabus ở Frontend (hiện tại mới chỉ có Backend).
- [ ] **Course Workflow**: Xây dựng logic phê duyệt (Draft -> Pending -> Published). Tránh việc khóa học hiện lên ngay lập tức khi vừa tạo.

### 🎓 Module 3: Trải nghiệm học tập
- [ ] **Personal Notes UI**: Tinh chỉnh lại giao diện Ghi chú trong bài học để tách biệt rõ ràng với Thẻ Flashcard (Module 5), tránh gây nhầm lẫn cho người dùng.

---

## 🟢 3. Cải thiện hiệu năng & Dữ liệu

- [ ] **Search Optimization**: Thêm Index cho các cột `word_ja`, `meaning_vi` trong bảng `vocabulary` để tăng tốc độ tìm kiếm khi data lớn.
- [ ] **Furigana Placeholder**: Chuẩn bị cấu trúc dữ liệu cho Furigana trong tương lai (không bắt buộc cho Demo hiện tại).

---

## 📈 Kế hoạch thực hiện (Suggested Timeline)

1. **Sáng**: Thực hiện Refactor SRS Service và viết Unit Test cho nó (Chốt hạ tính đúng đắn của logic).
2. **Chiều**: Cải thiện UI cho AI Syllabus và Ghi chú cá nhân.
3. **Tối**: Kiểm tra lại toàn bộ luồng Demo lần cuối.

> **Lời khuyên:** Việc có bộ Unit Test cho SRS sẽ giúp bạn "ghi điểm tuyệt đối" khi giải thích về thuật toán này trong các buổi phỏng vấn.
