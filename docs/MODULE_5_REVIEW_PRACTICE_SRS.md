🌸 PHÂN TÍCH SÂU MODULE 5: Review & Practice (SRS) Phiên bản: 1.0 Deep Dive Mục tiêu phân tích: Đây là module quan trọng nhất của toàn bộ SakuraLearn. SRS (Spaced Repetition System) là “linh hồn” giúp người dùng ghi nhớ dài hạn, quay lại app thường xuyên và tạo sự khác biệt so với các app JLPT thông thường.

## 1. Mục tiêu cốt lõi của Module 5

Giúp người dùng ghi nhớ lâu dài kiến thức JLPT (Kanji, Vocab, Grammar) bằng thuật toán Spaced Repetition.

Tạo thói quen review hàng ngày dễ dàng, không gây overwhelm.

Kết nối chặt chẽ với Dictionary (Module 4), Course/Lesson (Module 2-3) và Gamification (Module 8).

Cung cấp trải nghiệm review hiện đại, khoa học và phù hợp với người Việt (không quá nhiều card mỗi ngày).

## 2. Luồng nghiệp vụ chính (User Journey)

Luồng review điển hình:

User lưu item từ Dictionary, Lesson, hoặc tự tạo → vào My Notebook.

Từ Notebook → Tạo Flashcard (có thể tự động hoặc thủ công chọn mặt trước/sau).

Vào trang Review Today (hoặc Daily Review):

Hệ thống chỉ hiển thị các card có due_date ≤ today.

Hiển thị danh sách card (hoặc học lần lượt như Anki).

Review một card:

Xem mặt trước (ví dụ: Kanji “日” hoặc từ “食べる”).

Nhấn Flip để xem mặt sau.

Đánh giá chất lượng: 1=Again (Quên), 2=Hard (Khó), 3=Good (Tốt), 4=Easy (Dễ), 5=Very Easy.

Hệ thống tính toán ngay interval, ease_factor, due_date mới.

Hoàn thành session → cập nhật XP/Streak (Module 8) và tiến độ SRS.

Luồng quản lý Notebook:

Xem tất cả item đã lưu.

Chỉnh sửa hoặc xóa flashcard.

Tạo flashcard thủ công (tùy chọn nâng cao).

## 3. Chức năng chính

Chức năng

Mô tả chi tiết

Độ quan trọng

My Notebook

Lưu item từ Dictionary / Course / tự tạo

★★★★★

Flashcard Management

Tạo, chỉnh sửa, xóa flashcard (tự động hoặc thủ công)

★★★★★

Daily Review Session

Chỉ hiển thị card due hôm nay, giới hạn số lượng

★★★★★

Card Review UI

Flip card + đánh giá 1–5 + audio (nếu có)

★★★★★

SM-2 Algorithm Engine

Tính toán interval, ease_factor, due_date, repetitions

★★★★★

SRS Statistics

Số card due hôm nay, retention rate, maturity level

★★★★

Review by Category

Chỉ ôn Kanji / Vocab / Grammar (Phase 2)

★★★★

## 4. Quy tắc & Logic nghiệp vụ quan trọng (SM-2 Algorithm – Chi tiết nhất)

Trường dữ liệu chính trong bảng flashcards (hoặc user_srs_items):

repetitions (int, mặc định 0)

interval_days (int, mặc định 1)

ease_factor (float, mặc định 2.5)

due_date (timestamp)

last_review_date

quality_last_review (để debug)

Thuật toán SM-2 chuẩn (dùng chính xác để tránh bug):

Khi user đánh giá quality q (1–5):

Cập nhật Ease Factor trước:

text

new_ef = old_ef + (0.1 - (5 - q) * (0.08 + (5 - q) * 0.02))

if (new_ef < 1.3) new_ef = 1.3

Xử lý Interval & Repetitions:

Nếu q < 3 (quên hoặc khó):

repetitions = 0

interval_days = 1

Nếu q ≥ 3:

Nếu repetitions == 0 → interval_days = 1

Nếu repetitions == 1 → interval_days = 6

Nếu repetitions ≥ 2 → interval_days = round(interval_days * ease_factor)

repetitions += 1

Tính due_date:

text

due_date = current_date (Asia/Ho_Chi_Minh) + interval_days

Các quy tắc bổ sung cho MVP (rất quan trọng):

Giới hạn số card review mỗi ngày (50–100 cards tối đa) → tránh user kiệt sức.

Phân biệt Learning Phase (card mới, repetitions = 0) và Review Phase.

Card chỉ xuất hiện khi due_date ≤ today.

## 5. Các điểm dễ nhầm lẫn / Quyết định then chốt

Chọn SM-2 hay FSRS? SM-2 đơn giản và đủ cho MVP. Phase 2 có thể nâng cấp lên FSRS (hiện đại hơn, tiết kiệm thời gian review ~20-30%).

Card type

Recognition (JP → Meaning)

Production (Meaning → JP)

Listening (Audio → Meaning) → Khuyến nghị hỗ trợ ít nhất 2 loại đầu tiên ở MVP.

Flashcard thuộc về ai? Một flashcard chỉ thuộc 1 user (dù item gốc từ Dictionary toàn cục).

Reset progress User có thể reset SRS của một item khi muốn học lại từ đầu.


### B. Cải tiến trải nghiệm (User Request)
- **Giao diện tham khảo Quizlet:** Hiệu ứng mượt mà, trực quan, hỗ trợ nhiều chế độ hiển thị (Flashcard, Learn, Test).
- **Tạo thẻ thủ công:** Cho phép người dùng tự tạo Flashcard từ đầu (không bắt buộc lấy từ Dictionary). Chức năng này mở cho mọi loại tài khoản (Role).
- **Đánh giá mức độ nhớ:** Thay vì chỉ chọn "Thuộc/Chưa thuộc", sử dụng thang đo từ 1 đến 5 để thuật toán tính toán chính xác hơn.
- **Lịch ôn tập thông minh:** Dựa vào thời gian tạo card và lịch sử ôn tập để đưa ra gợi ý thời điểm ôn tập vàng trong ngày. Giới hạn số từ học mới mỗi ngày để tránh quá tải.
- **Chế độ học linh hoạt:** Chia thành phương pháp **"Ôn sâu"** (nghiêm ngặt theo SRS) hoặc **"Cấp tốc"** (dành cho người sắp thi).

## 6. Edge Cases cần xử lý

User không review trong nhiều ngày → interval không tăng quá nhanh (có thể áp dụng “leech” threshold).

Card due rất nhiều (ví dụ 300 cards) → chỉ cho review 80 cards/ngày + thông báo “Còn lại sẽ chuyển sang ngày mai”.

User đánh giá 1 liên tục → interval luôn reset về 1 (đúng logic).

Xóa item khỏi Notebook → xóa luôn flashcard liên quan.

Thay đổi nội dung gốc trong Dictionary → không ảnh hưởng đến flashcard đã tạo của user.

## 7. Gợi ý phù hợp với người Việt học JLPT

Giao diện review rất đơn giản và đẹp (giống Anki nhưng thân thiện hơn).

Có audio tự động khi flip card (đặc biệt quan trọng với Vocab và Kanji).

Hiển thị furigana và dịch tiếng Việt rõ ràng ở mặt sau.

Thêm “Mẹo nhớ” (mnemonics) trong flashcard nếu có.

Thông báo hàng ngày: “Hôm nay bạn còn 42 cards cần review – mất khoảng 15 phút”.

Sau session review → hiển thị kết quả ngày: “Bạn đã ôn 38 cards, retention 92%”.

## 8. Liên kết với các Module khác

Module 4 (Dictionary): Nút “Add to SRS” là nguồn chính.

Module 2 & 3: Hoàn thành Quiz/LessonBlock → gợi ý thêm từ vào SRS.

Module 8 (Gamification): Mỗi card review thành công → +XP, góp phần vào streak.

Module 7: Admin xem thống kê SRS usage toàn hệ thống.