# Module 5: SRS Review Engine

## 1. Bài toán nghiệp vụ
Giải quyết vấn đề quên lãng kiến thức bằng phương pháp Spaced Repetition (Lặp lại ngắt quãng).

## 2. Logic cốt lõi
- **SM-2 Algorithm**: Cập nhật `easeFactor`, `intervalDays` và `dueDate` dựa trên đánh giá của user (1-5).
- **Queue Management**: Lọc thẻ dựa trên `dueDate <= now` và `dailyLimit`.
- **State Reset**: Nếu user đánh giá < 3 (quên), `interval` và `reps` sẽ bị reset về trạng thái ban đầu.

## 3. Điểm nhấn kỹ thuật (Senior Level)
- **SM-2 Implementation**: Cài đặt chính xác thuật toán SM-2 thay vì các bước nhảy cố định đơn giản.
- **Daily Limit Enforcement**: Sử dụng logic `countByUserIdAndReviewedAtAfter` để đảm bảo user không bị quá tải.
- **Review History**: Lưu lại log chi tiết từng lần review để làm cơ sở cho analytics và tính toán Streak trong tương lai.

## 4. Interview Angle
"Module SRS là phần 'Brain' của dự án. Tôi đã triển khai thuật toán SM-2 chuẩn để cá nhân hóa lộ trình ôn tập cho từng từ vựng. Hệ thống tự động tính toán thời điểm vàng để user review lại, giúp tối ưu hóa bộ nhớ và đảm bảo trải nghiệm học tập không bị đứt đoạn."
