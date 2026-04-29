# 🌸 MODULE 5: Review & Practice (SRS) - Trạng thái & Nhiệm vụ còn lại

## 1. Đánh giá hiện trạng (Đã hoàn thành)
- **Backend**: Tuyệt vời! `NotebookService.java` đã implement chuẩn **Thuật toán SM-2** (`processReview`). Tính toán chính xác `ease_factor`, `interval_days` với đánh giá 5 cấp độ (Quên, Khó, Tốt, Dễ, Rất dễ). Tự động tạo Flashcard khi thêm vào sổ tay.
- **Frontend**: Giao diện `PracticeSession.jsx` hoàn chỉnh, đẹp mắt với cả 2 chế độ: Flashcard lật mặt và Quiz trắc nghiệm. Các nút đánh giá 1-5 móc nối trực tiếp đến API.

## 2. Các mục tiêu chưa đạt / Cần nâng cấp (Remaining Tasks)

### 🔴 Tính năng quan trọng (Must Have)
- **Giới hạn thẻ học hằng ngày (Daily Limit)**: Người dùng học nhiều có thể bị dồn hàng trăm thẻ vào một ngày. Cần thêm cơ chế giới hạn cứng (VD: 80 card/ngày), số dư chuyển sang hôm sau để tránh "Overwhelm".
- **Dashboard Thống kê (SRS Stats)**: Backend đã có hàm `getSrsStats` tính số card ở các cấp độ nhớ, nhưng UI Dashboard thống kê hiệu suất học tập (Retention rate, Lịch sử review) vẫn còn sơ sài.

### 🟡 Tính năng mở rộng (Enhancements)
- **Smart Schedule**: Gợi ý thời gian học tốt nhất trong ngày.
- **Chế độ học sâu vs Cấp tốc**: Người dùng cần nút chuyển đổi giữa học theo SRS chuẩn (Deep study) và ôn thi trước kỳ thi (Crash course - ép ôn lại toàn bộ không quan tâm due_date).
- **Audio Autoplay**: Tự động phát âm thanh khi lật mặt Flashcard mà không cần click vào nút Loa (có thể cho phép bật/tắt trong Setting).
- **Mnemonics in Flashcards**: Đưa luôn phần Mẹo nhớ từ Dictionary vào mặt sau của Flashcard để người học dễ liên tưởng khi bị bí.
