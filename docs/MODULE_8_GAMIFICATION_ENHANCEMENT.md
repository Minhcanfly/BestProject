🌸 PHÂN TÍCH SÂU MODULE 8: Gamification & Enhancement Phiên bản: 1.0 Deep Dive Module cuối cùng trong 8 modules

## 1. Mục tiêu cốt lõi của Module 8

Tăng engagement và retention lâu dài bằng cách biến việc học thành trò chơi.

Tạo cảm giác tiến bộ rõ ràng và sợ mất streak (loss aversion) – rất hiệu quả với người Việt.

Kết nối mượt mà với các hành động học tập thực tế (hoàn thành lesson, review SRS, tra cứu dictionary…).

Xây dựng thói quen học hàng ngày mà không cần ép buộc.

## 2. Luồng nghiệp vụ chính (User Journey)

Luồng trải nghiệm gamification điển hình:

User hoàn thành một hành động học (mark lesson completed, review SRS card, tra cứu dictionary…).

Hệ thống tính toán và cộng XP tương ứng.

Kiểm tra các điều kiện để award Badge hoặc tăng Streak.

Hiển thị hiệu ứng animation nhẹ (confetti, level up, badge popup) để tạo cảm giác vui vẻ.

User xem tiến độ trên Profile / Dashboard:

Current Streak + Longest Streak

Tổng XP + Level hiện tại

Danh sách Badge đã nhận

Bảng xếp hạng (nếu có)

Nhận thông báo: “Tuyệt vời! Bạn duy trì streak 7 ngày liên tiếp 🎉”

## 3. Chức năng chính

Chức năng

Mô tả chi tiết

Độ quan trọng MVP

XP System

Cộng XP khi hoàn thành LessonBlock, Quiz, SRS review, Daily login…

★★★★★

Streak System

Tính streak hàng ngày dựa trên hoạt động học

★★★★★

Badge System

Award badge tự động khi đạt milestone

★★★★

Level System

User Level dựa trên tổng XP (tùy chọn)

★★★

Leaderboard (optional)

Bảng xếp hạng theo tuần/tháng (có thể làm Phase 2)

★★

Comment & Interaction

Comment trên Course, Lesson, Kanji, Vocab

★★★

Enhancement

Dark mode, cache hot data, UI polish

★★★

## 4. Quy tắc & Logic nghiệp vụ quan trọng

### A. XP System (Experience Points)

Hoàn thành LessonBlock: +10 ~ 20 XP (tùy độ khó)

Hoàn thành Quiz tốt (≥80%): +15 XP

Review 1 SRS card: +5 XP

Duy trì Daily Review (hoàn thành ít nhất 10 cards): + bonus 20 XP

Đăng nhập + học trong ngày: +5 XP (daily login)

### B. Streak Logic (Rất quan trọng – dễ sai)

Sử dụng múi giờ Asia/Ho_Chi_Minh.

Dùng trường last_activity_date (kiểu DATE, không phải timestamp).

Quy tắc tính streak:

Nếu last_activity_date == yesterday → current_streak += 1

Nếu last_activity_date < yesterday (bỏ lỡ) → current_streak = 1

Sau đó cập nhật last_activity_date = today

Lưu cả longest_streak để hiển thị kỷ lục cá nhân.

### C. Badge System

Badge được định nghĩa sẵn (có thể lưu trong bảng badges).

Ví dụ badge:

“First Steps” → Hoàn thành lesson đầu tiên

“7-Day Warrior” → Duy trì streak 7 ngày

“N5 Completer” → Hoàn thành toàn bộ N5 course

“SRS Master” → Review 500 cards

“Dictionary Addict” → Thêm 100 item vào Notebook

Khi đạt điều kiện → insert vào user_badges + gửi notification.

## 5. Các điểm dễ nhầm lẫn / Quyết định then chốt

Streak tính theo ngày nào? → Phải dùng múi giờ Việt Nam. Không dùng UTC, dễ gây sai lệch (ví dụ user học lúc 23h59 hôm nay nhưng server tính sang ngày mai).

XP nên lưu transaction riêng không? → Nên. Có bảng xp_transactions để trace rõ ràng (user_id, amount, reason, created_at). Giúp debug và award badge dễ hơn.

Hiệu ứng UI → Nên có animation nhẹ khi nhận XP/Badge để tạo cảm giác vui, nhưng không quá lố (tránh làm chậm app).

Gamification có làm người dùng “nghiện” quá không? → Cân bằng. MVP nên giữ ở mức nhẹ nhàng, tập trung vào streak và tiến bộ thực tế thay vì cạnh tranh khốc liệt.


### B. Hệ thống hóa & Phát triển (User Request)
- **Hệ thống hóa kiểu "Tiểu thuyết":** Phát triển các cấp bậc và thăng tiến theo hướng có cốt truyện mãnh liệt, gây tò mò và thèm muốn chinh phục giống như các hệ thống cấp bậc trong truyện mạng.
- **Mô hình tăng trưởng thực tế:** Thay vì chỉ là mốc điểm, XP và Streak sẽ gắn liền với sự phát triển của một thực thể ảo:
    - **Cây - Vườn:** Học tập để tưới nước, bón phân cho khu vườn của mình.
    - **Xây nhà:** Hoàn thành các module để xây dựng và trang trí ngôi nhà Nhật Bản của riêng user.
    - **Nuôi thú:** Chăm sóc thú cưng ảo (Shiba, mèo Calico) trưởng thành qua các cấp độ JLPT.

## 6. Edge Cases cần xử lý

User không học trong nhiều ngày → streak reset về 1, nhưng longest_streak vẫn giữ nguyên.

User hoàn thành lesson lúc 23h59 → streak vẫn tính cho ngày hôm đó.

Admin chỉnh sửa dữ liệu thủ công → có nên cộng/trừ XP không? (thường không).

Badge award đồng thời nhiều cái → xử lý theo thứ tự và gửi notification một lần.

Dữ liệu cache (hot vocab, course list) → dùng Redis như bạn đã lên kế hoạch.

## 7. Gợi ý phù hợp với người Việt học JLPT

Sử dụng ngôn ngữ gần gũi, khích lệ: “Bạn đang làm rất tốt!”, “Chỉ còn 3 ngày nữa là đạt streak 30 ngày đấy!”

Badge có chủ đề hoa anh đào, samurai, hoặc hình ảnh dễ thương kiểu Nhật Bản.

Streak icon nên rất nổi bật trên Profile (người Việt rất quan tâm đến streak).

Thêm Daily Quest đơn giản: “Ôn 30 cards SRS hôm nay” → thưởng XP bonus.

Hiển thị “Bạn đang dẫn đầu bạn bè” (nếu có leaderboard nhỏ).

## 8. Liên kết với các Module khác

Module 3: Hoàn thành LessonBlock/Lesson → cộng XP.

Module 5 (SRS): Mỗi card review → +XP.

Module 2 & 4: Hoàn thành course hoặc tra cứu nhiều → award badge.

Module 6: Mua khóa học thành công → tặng badge “First Buyer” + XP.

Module 1: Profile hiển thị XP, Level, Streak, Badges.

Module 7: Admin xem thống kê gamification toàn hệ thống.



Tóm tắt các quyết định quan trọng cho Module 8:

Streak sẽ tính dựa trên last_activity_date với múi giờ Asia/Ho_Chi_Minh?

Có tạo bảng xp_transactions riêng không?

Badge sẽ award tự động ngay khi đạt điều kiện hay chạy batch hàng ngày?

Mức XP cho từng hành động cụ thể là bao nhiêu? (cần định nghĩa rõ bảng)