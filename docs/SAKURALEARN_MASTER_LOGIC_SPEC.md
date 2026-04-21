# 🌸 SAKURALEARN – CHỨC NĂNG CHÍNH & LUỒNG NGHIỆP VỤ (V1.1)
**Trạng thái:** Bản đặc tả Master (Cập nhật dựa trên gợi ý nâng cấp & Bối cảnh người học Việt)
**Vị trí:** `/docs/SAKURALEARN_MASTER_LOGIC_SPEC.md`

Tài liệu này là "xương sống" về mặt logic cho toàn bộ hệ thống SakuraLearn, kết hợp giữa mã nguồn hiện tại và lộ trình phát triển tối ưu cho thị trường Việt Nam.

---

## 🔐 MODULE 1: Authentication & User Management
*Trạng thái: Đã hoàn thiện – Không cần nâng cấp lớn ở giai đoạn này*

### Chức năng chính:
- Đăng ký / Đăng nhập (Email + Password)
- Double Opt-in (Xác thực email)
- JWT Access Token + Refresh Token (với cơ chế rotation & revoke session)
- Quản lý Profile (Avatar, Full name, Preferred language: vi/ja/en)
- Phân quyền RBAC (STUDENT / TEACHER / ADMIN)
- Soft delete + Audit tracking (Ghi nhật ký thay đổi dữ liệu)

### Luồng nghiệp vụ chính:
`Đăng ký → Xác thực email → Đăng nhập → Quản lý profile → Logout / Revoke sessions.`

### Gợi ý nâng cấp (Phase 2):
- **Social login:** Tích hợp Google, Facebook (Cực kỳ quan trọng với người dùng Việt để giảm ma sát khi đăng ký).
- **Forgot password:** Xây dựng luồng reset flow hoàn chỉnh qua mã OTP hoặc Link an toàn.

---

## 📚 MODULE 2: Course & Lesson Management
*Trạng thái: Đã có khung logic - Sẵn sàng mở rộng*

### Chức năng chính:
- CRUD Course (title/desc đa ngôn ngữ, JLPT level, giá free/paid, thumbnail, trạng thái Draft/Published)
- CRUD Lesson + LessonBlock (Video, Text, Audio, Quiz…) với `order_index`
- Filter & hiển thị danh sách Course theo JLPT level, free/paid
- Enroll course (miễn phí hoặc sau thanh toán)

### Luồng nghiệp vụ chính:
`Teacher/Admin tạo Course → Thêm Lessons & LessonBlocks → Publish → Student Filter & Enroll → Truy cập nội dung.`

### 💡 Quyết định then chốt:
- **LessonBlock linh hoạt:** Cho phép đa dạng hóa trải nghiệm học tập trong cùng một bài học.
- **Paid content protection:** Chỉ mở khóa nội dung Premium sau khi bản ghi `enrollment` được xác nhận thành công.

### 🚀 Gợi ý nâng cấp:
- **Recommended Courses:** Gợi ý theo JLPT level hiện tại của user (dựa trên lịch sử enrollment).
- **Teacher Resources:** Cho phép upload PDF/Slide bổ sung đính kèm vào mỗi LessonBlock.
- **Course Teaser:** Hỗ trợ preview một phần bài học đầu tiên miễn phí trước khi mua (Phù hợp tâm lý người Việt thích "thử trước khi mua").

---

## 🎓 MODULE 3: Learning Experience & Progress
*Trạng thái: Tracking & UX*

### Chức năng chính:
- Video/Audio player + Text reader (Tương tác trực quan).
- Mark as Completed (Thủ công hoặc tự động khi xem hết video).
- Tiến độ khóa học (`progress_percentage` cập nhật realtime).
- Quiz tích hợp sẵn trong bài học (Multiple choice, matching, listening).

### 🚀 Gợi ý nâng cấp:
- **Auto-Complete Logic:** Tự động hoàn thành bài học khi xem ≥ 80–90% video.
- **Continue Learning:** Nút "Học tiếp" trên Dashboard đưa user quay lại đúng vị trí đang học dở.
- **Personal Notes:** Cho phép user lưu ghi chú cá nhân ngay trong LessonBlock bằng tiếng Việt.

---

## 📖 MODULE 4: Knowledge Base (Dictionary)
*Trạng thái: Hệ sinh thái nội dung*

### Chức năng chính:
- Tra cứu chuyên sâu: Kanji (Radical, stroke order), Vocabulary (Audio phat âm, nghĩa vi/en), Grammar (Tiếng Việt giải thích).
- Liên kết Kiến thức: Kanji ↔ Radical ↔ Vocab (Cấu trúc đồ thị - Knowledge Graph).
- Lưu giữ kiến thức: Nút “Add to Notebook” / “Add to SRS”.

### 🚀 Gợi ý nâng cấp:
- **Stroke Animation:** Tích hợp KanjiVG để hiển thị diễn họa cách viết chữ.
- **Related Items:** Gợi ý các từ vựng liên quan đến chữ Kanji đang xem (Sentence mining).
- **Furigana Support:** Hiển thị Furigana trên các câu ví dụ để người mới bắt đầu dễ học.

---

## 🧠 MODULE 5: Review & Practice (SRS) – Linh hồn dự án
*Trạng thái: Module cốt lõi tạo nên sự khác biệt*

### Chức năng chính:
- My Notebook (Lưu trữ cá nhân hóa).
- Review hàng ngày (Giao diện Flip card, đánh giá mức độ nhớ 1–5).
- **Thuật toán SM-2:** Tự động tính toán `interval` và `due_date` để tối ưu hóa bộ nhớ dài hạn.

### 🚀 Gợi ý nâng cấp (Khuyến nghị cao):
- **FSRS (Free Spaced Repetition Scheduler):** Thay thế SM-2 thuần ở Phase 2 (Thuật toán hiện đại nhất, tiết kiệm 30% thời gian ôn tập).
- **Review Insights:** Báo cáo "Bạn đang mạnh phần nào, yếu phần nào".
- **Daily Limit:** Giới hạn 50-100 card mỗi ngày để tránh gây mệt mỏi dẫn đến bỏ cuộc (Đặc điểm người học Việt rất cần sự khích lệ này).

---

## 💳 MODULE 6: Monetization & Notification
*Trạng thái: Vận hành & Doanh thu*

### Chức năng chính:
- Tích hợp **VNPay** (Cổng thanh toán phổ biến nhất Việt Nam).
- Unlock khóa học tức thì qua cơ chế Webhook (IPN).
- Notification (In-app + Email): Thông báo thanh toán, nhắc học hàng ngày.

### 🚀 Gợi ý nâng cấp:
- **Bundle Courses:** Gói "Combo N5-N1" với giá ưu đãi.
- **Smart Reminders:** Nhắc nhở cá nhân hóa: "Bạn đã 3 ngày chưa ôn tập SRS, kiến thức đang dần rơi rụng đấy!".

---

## 🛠️ MODULE 7: Administration & Analytics
*Trạng thái: Quản trị & Vận hành*

### Chức năng chính:
- Quản lý thực thể (User, Role, Course, Payment).
- **Audit Log:** Lưu vết chi tiết (`old_values` vs `new_values`) để truy vết sai sót.
- Báo cáo thống kê: Doanh thu, User activity, Course phổ biến.

---

## 🎮 MODULE 8: Gamification & Enhancement
*Trạng thái: Tăng cường tính gây nghiện (Retention)*

### Chức năng chính:
- **XP System:** Tích lũy điểm khi học và làm Quiz.
- **Streak:** Theo dõi số ngày học liên tục (Yếu tố tâm lý quan trọng nhất).
- **Badge System:** Huy hiệu vinh danh thành tựu.
- **Comment System:** Thảo luận đa ngôn ngữ.

### 🚀 Gợi ý nâng cấp:
- **Leaderboard:** Bảng xếp hạng tuần/tháng để thúc đẩy cạnh tranh nhẹ nhàng.
- **Daily Quest:** Nhiệm vụ hàng ngày (Ví dụ: "Học 30 từ mới hôm nay") để nhận thêm XP bonus.

---

## 🏁 Kết luận & Lộ trình
Bản tổng hợp 1.1 này đã tạo ra một bức tranh hoàn hảo về **SakuraLearn**. Trọng tâm tiếp theo của chúng ta sẽ là:
1. Hoàn thiện Logic Module 2 & 3 (Học tập & Tiến độ).
2. Xây dựng cốt lõi Module 5 (SRS) - Vũ khí bí mật của ứng dụng.
3. Đảm bảo trải nghiệm "Người Việt dùng app Nhật" mượt mà nhất qua các gợi ý nâng cấp trên.
