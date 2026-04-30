# Hướng dẫn Phát triển & Kỷ luật Dữ liệu SakuraLearn

Tài liệu này tổng hợp các bài học xương máu và quy trình bắt buộc đối với mọi thành viên phát triển dự án SakuraLearn, nhằm đảm bảo tính toàn vẹn của dữ liệu và sự ổn định của hệ thống.

## 1. Kỷ luật Migration Database (LỖI TRỌNG YẾU)

Trong quá trình phát triển, việc quản lý file Migration không tốt đã dẫn đến hỏng cấu trúc bảng và lỗi Checksum Flyway.

- **Sai lầm đã mắc**: Cố gắng gộp file `V1` (Cấu trúc Schema) với các file Seed dữ liệu (`V2-V8`) hoặc sửa trực tiếp nội dung trong các file đã migrate.
- **Hậu quả**: Khiến hệ thống không thể khởi động do sai lệch mã băm (MD5), mất các ràng buộc (Foreign Keys/Unique Constraints) và gây khó khăn khi Reset môi trường.
- **QUY TẮC BẮT BUỘC**:
    - **File `V1` là bất biến**: Chỉ chứa cấu trúc Schema cốt lõi. Tuyệt đối không đưa dữ liệu Seed vào `V1`.
    - **Tách biệt Dữ liệu**: Mỗi loại dữ liệu (Kanji, Vocab, Grammar) phải nằm ở các file `V` riêng biệt (ví dụ `V2__Seed_Radicals`, `V3__Seed_Kanji`...).
    - **Nguyên tắc "Chỉ tiến không lùi"**: Nếu muốn sửa dữ liệu hoặc cấu trúc đã có, hãy tạo một version mới (ví dụ `V9__Fix_Vocab_Data.sql`). Tuyệt đối không sửa đè vào file cũ.

## 2. Kỷ luật Gen dữ liệu (LỖI TRÁO CỘT/NGÔN NGỮ)

Đây là lỗi nghiêm trọng nhất khiến dữ liệu N5 bị hiển thị sai lệch hoàn toàn giữa tiếng Nhật và tiếng Việt.

- **Sai lầm đã mắc**: Giả định mọi bộ thẻ Anki đều có cấu trúc trường giống nhau (ví dụ: mặc định trường 0 là Tiếng Việt, trường 1 là Tiếng Nhật).
- **Hậu quả**: Khi gặp bộ thẻ N5 có cấu trúc ngược lại, script đã đưa Tiếng Nhật vào cột `meaning_vi` và Tiếng Việt vào cột `word_ja`.
- **QUY TẮC BẮT BUỘC**:
    - **Kiểm định nguồn (Audit)**: Trước khi viết script, phải mở file nguồn để kiểm tra ít nhất 20 bản ghi ngẫu nhiên.
    - **Logic nhận diện ngôn ngữ (Heuristic)**: Tuyệt đối không dùng index mảng cố định (như `fields[0]`). Phải dùng hàm nhận diện ký tự (ví dụ: `isJapanese()`) để tự động gán dữ liệu vào đúng cột dựa trên nội dung thực tế.
    - **Kiểm tra sau khi Gen**: Sau khi chạy script tạo SQL, phải mở file SQL kết quả để soi lại ít nhất 5 dòng `INSERT` đầu tiên xem giá trị có khớp với tên cột hay không.

## 3. Quản lý cấp độ JLPT

- **Không chia theo số lượng**: Tuyệt đối không dùng logic "lấy X bản ghi đầu là N5, Y bản ghi sau là N4".
- **Metadata-Driven**: Cấp độ JLPT phải được trích xuất trực tiếp từ tên Deck, Tag hoặc dữ liệu thuộc tính đi kèm bản ghi gốc. Nếu không có thông tin rõ ràng, phải gắn nhãn là `BEYOND`.

## 4. Tiêu chuẩn Giao diện (UI/UX) & Mobile

- **Mobile-First Padding**: Các trang danh sách hoặc chi tiết phải có `padding-bottom` (tối thiểu 80px) để không bị các thanh điều hướng của trình duyệt di động che khuất.
- **Z-Index Layering**: Phân lớp rõ ràng: Sidebar (100) > Overlay (95) > Navbar (90) > Content (0).
- **Trạng thái Menu**: Luôn có nút Hamburger Menu trên di động. Khi Sidebar mở, phải có lớp phủ (Overlay) mờ để người dùng có thể chạm ra ngoài để đóng.

## 5. Quy trình xác minh (Validation)
- **Check Docker**: Phải đảm bảo Docker và Database đã chạy trước khi khởi động Backend.
- **Check Mailpit**: Các luồng đăng ký mới bắt buộc phải vào Mailpit (port 8025) để lấy link xác thực, không giả định account tự kích hoạt.

---
**Cam kết**: Mọi hành vi vi phạm các quy tắc trên sẽ dẫn đến việc phá hủy tính ổn định của SakuraLearn. Tuân thủ triệt để là cách duy nhất để dự án thành công.
