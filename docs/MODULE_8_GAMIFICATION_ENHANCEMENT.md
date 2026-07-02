# 🌸 PHÂN TÍCH SÂU MODULE 8: GAMIFICATION & ENHANCEMENT

> **⚠️ Trạng thái triển khai (2026-05-23):** Đặc tả đầy đủ; code hiện chỉ có cột `xp`/streak trên `User` và cộng XP đơn giản khi quiz — **chưa có** badge, quest, leaderboard. Backlog: [MODULE_8_REMAINING_TASKS.md](./MODULE_8_REMAINING_TASKS.md).

**Phiên bản phân tích:** 1.0 Deep Dive  
**Mục đích:** Tăng cường sự gắn bó của người dùng (User Engagement) và tạo thói quen học tập bền vững thông qua các yếu tố trò chơi và tính năng tương tác xã hội.

---

## 🎯 1. Mục tiêu cốt lõi của Module 8
Module này là "Lớp phủ" tạo nên niềm vui và động lực trong học tập:
- **Tăng Retention:** Giữ chân người dùng quay lại app hằng ngày thông qua cơ chế Streak.
- **Tôn vinh thành tựu:** Ghi nhận sự nỗ lực bằng hệ thống XP, Level và Badge.
- **Tính cộng đồng:** Cho phép người dùng thảo luận, trao đổi kiến thức ngay trên nền tảng.
- **Tối ưu trải nghiệm:** Cung cấp các tính năng bổ trợ như Dark Mode và hiệu năng cao.

---

## 🎮 2. Hệ thống Gamification (Cơ chế Trò chơi)

### ✨ XP & Level System
- **Tích lũy:** User nhận XP (Experience Points) khi hoàn thành các hành động:
  - Xem hết Video bài học: +50 XP.
  - Làm Quiz đạt điểm tối đa: +100 XP.
  - Ôn tập SRS đúng hạn: +5 XP / card.
  - Daily Login: +10 XP.
- **Thăng cấp:** Khi đạt ngưỡng XP nhất định, User sẽ lên Level mới. Các mốc Level gắn liền với danh hiệu (VD: N5 Apprentice, N3 Samurai, N1 Shogun).

### 🔥 Streak System (Học tập bền bỉ)
- **Cơ chế:** Đếm số ngày liên tục User tham gia học tập ít nhất 1 bài.
- **Quy tắc:** Nếu một ngày không học, chuỗi Streak sẽ bị reset về 0 (Sử dụng hiệu ứng tâm lý *Loss Aversion*).
- **Múi giờ:** Chu kỳ 24h được chốt vào lúc 0:00 (Asia/Ho_Chi_Minh).

### 🏆 Badge System (Huy hiệu vinh danh)
- Tặng huy hiệu cho các mốc thành tựu đặc biệt:
  - "Early Bird": Học vào sáng sớm.
  - "Night Owl": Học vào đêm muộn.
  - "Vocabulary Master": Thuộc 1000 từ vựng đầu tiên.

---

## 💬 3. Hệ thống Tương tác & Cải tiến (Enhancements)

### 🗨️ Comment System
- Cho phép người dùng thảo luận dưới mỗi bài học hoặc từ vựng.
- Hỗ trợ Markdown đơn giản và thông báo khi có người phản hồi bình luận.
- **Moderation:** Tự động lọc các từ ngữ không phù hợp thông qua danh sách Blacklist.

### 🌑 Dark Mode
- Giao diện tối hoàn chỉnh trên toàn bộ hệ thống giúp giảm mỏi mắt và tiết kiệm pin cho thiết bị di động.

### 🚀 Performance Optimization
- Sử dụng **Redis** để lưu trữ các thông tin "nóng" như Streak hiện tại, Bảng xếp hạng (Leaderboard) để giảm tải cho DB chính.
- Tối ưu hóa các hiệu ứng chuyển cảnh để ứng dụng cảm giác mượt mà (App-like feel).

---

## 🛠️ 4. Đặc tả Chức năng chi tiết
| Chức năng | Mô tả chi tiết nghiệp vụ | Trạng thái |
| :--- | :--- | :--- |
| **XP Engine** | Logic tính toán và cộng điểm XP cho mọi hành động | ✅ Hoàn thiện |
| **Leveling Logic** | Hệ thống định nghĩa cấp độ và danh hiệu người dùng | ✅ Hoàn thiện |
| **Streak Tracker** | Theo dõi chuỗi ngày học liên tục, xử lý reset | ✅ Hoàn thiện |
| **Badge Engine** | Tự động kiểm tra điều kiện và trao huy hiệu | ✅ Hoàn thiện |
| **Comment API** | CRUD bình luận, hỗ trợ phân cấp (Reply) | ✅ Hoàn thiện |
| **Redis Caching** | Cấu hình Redis để lưu trữ dữ liệu Gamification | ✅ Hoàn thiện |
| **Dark Mode UI** | Thiết kế bộ biến CSS (Themes) cho chế độ tối | ✅ Hoàn thiện |

---

## ⚖️ 5. Quy tắc & Logic nghiệp vụ quan trọng

- **XP Capping:** Giới hạn XP nhận được tối đa trong một ngày từ một số hành động nhất định để tránh việc "Cày XP" không lành mạnh.
- **Streak Protection:** (Nâng cao) Cung cấp vật phẩm "Streak Freeze" giúp bảo vệ chuỗi ngày học khi người dùng có việc bận.
- **Múi giờ chốt:** Đảm bảo toàn bộ logic Streak đồng bộ giữa Client và Server theo múi giờ Việt Nam.

---

## 💡 6. Quyết định & Điểm cần chú ý

- **Micro-interactions:** Sử dụng âm thanh nhẹ nhàng và hiệu ứng Confetti (pháo giấy) khi người dùng đạt Level mới để tạo niềm vui.
- **Visual Progression:** Hiển thị thanh tiến trình XP rõ ràng ngay tại Header của trang web.
- **Social Proof:** Cho phép người dùng chia sẻ Badge hoặc Streak của mình lên mạng xã hội.

---

## ⚠️ 7. Xử lý Edge Cases
- **Gian lận Streak:** Xử lý trường hợp người dùng cố tình đổi giờ hệ thống trên thiết bị để giữ Streak.
- **Xóa bình luận:** Khi một bài học bị xóa, các bình luận liên quan cũng phải được ẩn đi.
- **Dữ liệu Streak lớn:** Tối ưu hóa truy vấn bảng `daily_activity` để tính toán Streak nhanh nhất.

---

## 🔗 8. Liên kết hệ thống
- **Module 3/5**: Là nguồn trigger XP chính (hoàn thành bài học, ôn tập SRS).
- **Module 1**: Hiển thị XP, Level, Badge ngay tại trang Profile cá nhân.
- **Module 6**: Gửi thông báo khi người dùng đạt thành tựu mới.