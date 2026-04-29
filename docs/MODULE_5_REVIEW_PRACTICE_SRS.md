# 🌸 PHÂN TÍCH SÂU MODULE 5: REVIEW & PRACTICE (SRS)

**Phiên bản phân tích:** 1.0 Deep Dive  
**Mục đích:** Xây dựng hệ thống ôn tập dựa trên khoa học não bộ (Spaced Repetition), giúp học viên ghi nhớ kiến thức dài hạn với nỗ lực tối thiểu.

---

## 🎯 1. Mục tiêu cốt lõi của Module 5
Đây là Module tạo nên giá trị khác biệt (USP) của SakuraLearn:
- **Ghi nhớ bền vững:** Sử dụng thuật toán lặp lại ngắt quãng để ngăn chặn "đường cong lãng quên".
- **Ôn tập tập trung:** Chỉ hiển thị những thẻ (Card) cần ôn tập trong ngày, giảm tải áp lực học tập.
- **Phản hồi tức thì:** Cho phép người dùng đánh giá mức độ nhớ và nhận kết quả lịch học tiếp theo ngay lập tức.
- **Đa dạng hình thức:** Hỗ trợ Flashcard lật mặt truyền thống và các bài tập Quiz trắc nghiệm.

---

## 🧠 2. Thuật toán Spaced Repetition (Lõi SM-2)

Hệ thống sử dụng phiên bản cải tiến của thuật toán **SuperMemo-2 (SM-2)** để tính toán lịch ôn tập.

### 📊 Các tham số chính (Parameters)
- **Ease Factor (EF)**: Độ dễ của thẻ. Mặc định là 2.5. Giá trị này sẽ tăng nếu người dùng nhớ tốt và giảm nếu người dùng thấy khó.
- **Interval (I)**: Khoảng cách ngày giữa các lần ôn tập.
- **Repetitions (R)**: Số lần ôn tập thành công liên tiếp của thẻ đó.
- **Quality (q)**: Đánh giá của người dùng từ 1 đến 5 (Quên đến Rất dễ).

### ⚙️ Logic tính toán (Daily Review Logic)
- **Nếu Quality < 3 (Quên/Khó)**: 
  - Reset `Repetitions = 0`.
  - Đặt `Interval = 1 ngày`.
- **Nếu Quality ≥ 3 (Nhớ)**:
  - Lần 1 (R=0): `Interval = 1`.
  - Lần 2 (R=1): `Interval = 6`.
  - Lần 3+ (R≥2): `Interval = round(old_Interval * EF)`.
  - Cập nhật EF: `EF = old_EF + (0.1 - (5-q) * (0.08 + (5-q) * 0.02))`. (Min EF = 1.3).

---

## 🔄 3. Luồng trải nghiệm luyện tập (Practice Journey)

1. **Vào học**: Hệ thống kiểm tra trong `My Notebook` những thẻ có `due_date <= current_date`.
2. **Phiên luyện tập (Session)**:
   - **Flashcard Mode**: 
     - Mặt trước: Hiện chữ Nhật (Kanji/Vocab).
     - Hành động: User lật thẻ -> Xem mặt sau (Nghĩa, Reading, Audio).
     - Đánh giá: User chọn mức 1 (Quên) đến 5 (Rất dễ).
   - **Quiz Mode**: Hệ thống tự động sinh 4 phương án nghĩa để user chọn.
3. **Kết thúc**: Hệ thống cập nhật `due_date` mới và ghi nhật ký review vào bảng `flashcard_reviews`.

---

## 🛠️ 4. Đặc tả Chức năng chi tiết
| Chức năng | Mô tả chi tiết nghiệp vụ | Trạng thái |
| :--- | :--- | :--- |
| **SRS Engine** | Triển khai thuật toán SM-2 tại Backend (`NotebookService`) | ✅ Hoàn thiện |
| **Flashcard UI** | Giao diện lật thẻ mượt mà, hỗ trợ phím tắt và cảm ứng | ✅ Hoàn thiện |
| **Practice Quiz** | Tự động sinh câu hỏi trắc nghiệm dựa trên thư viện | ✅ Hoàn thiện |
| **Daily Due Filter** | Lọc chính xác danh sách thẻ cần học theo thời gian thực | ✅ Hoàn thiện |
| **Auto-Card Creation** | Tự tạo Flashcard khi user thêm từ vào Notebook | ✅ Hoàn thiện |
| **Review History** | Lưu vết lịch sử ôn tập phục vụ báo cáo Analytics | ✅ Hoàn thiện |

---

## ⚖️ 5. Quy tắc & Logic nghiệp vụ (Business Rules)

- **Chu kỳ 24h:** Hệ thống reset ngày mới vào lúc 0:00 (múi giờ Việt Nam).
- **Trạng thái mới:** Các thẻ mới thêm sẽ có `Interval = 1` và `Repetitions = 0`.
- **Giới hạn hằng ngày:** (Nâng cao) Có thể giới hạn số lượng thẻ mới học mỗi ngày để tránh người dùng bị nản lòng.
- **Notebook Sync:** Khi một từ bị xóa khỏi Notebook, bản ghi SRS tương ứng cũng phải bị xóa (Soft delete).

---

## 💡 6. Quyết định & Điểm cần chú ý

- **Audio Autoplay:** Tùy chọn cho phép âm thanh tự động phát khi lật mặt sau của thẻ giúp tăng hiệu quả ghi nhớ.
- **Mnemonics Integration:** Hiển thị phần "Mẹo nhớ" (từ Module 4) ngay trên Flashcard khi người dùng chọn mức độ "Khó" hoặc "Quên".
- **Timezone Management:** Đảm bảo toàn bộ logic tính `due_date` sử dụng kiểu dữ liệu `Instant` hoặc `ZonedDateTime` để đồng bộ chính xác.

---

## ⚠️ 7. Xử lý Edge Cases
- **Bỏ học lâu ngày:** Nếu người dùng bỏ học 1 tháng, số thẻ dồn lại sẽ rất lớn. Cần cơ chế dàn trải (Spreading) thẻ ôn tập để người dùng quay lại từ từ.
- **Thẻ bị "Leak":** User thấy thẻ đó ở bên ngoài (trong bài học Module 3). Có thể cho phép người dùng đánh giá nhanh SRS ngay tại đó.
- **Thay đổi thuật toán:** Nếu trong tương lai chuyển sang FSRS, hệ thống phải hỗ trợ migration dữ liệu lịch sử review cũ.

---

## 🔗 8. Liên kết hệ thống
- **Module 4**: Cung cấp dữ liệu (Nghĩa, Hán tự, Audio) cho thẻ.
- **Module 8**: Ôn tập đều đặn giúp duy trì Streak, cộng XP và đạt huy hiệu "Học giả kiên trì".
- **Module 6**: Gửi thông báo nhắc học nếu học viên chưa hoàn thành mục tiêu SRS trong ngày.