# 🌸 PHÂN TÍCH SÂU MODULE 7: ADMINISTRATION & ANALYTICS

**Phiên bản phân tích:** 1.0 Deep Dive  
**Mục đích:** Cung cấp bộ công cụ quản trị mạnh mẽ để kiểm soát vận hành, đảm bảo an ninh hệ thống và phân tích dữ liệu để định hướng kinh doanh.

---

## 🎯 1. Mục tiêu cốt lõi của Module 7
Module này là "Bộ não" vận hành của SakuraLearn:
- **Quản trị thực thể:** Kiểm soát toàn bộ User, Course, Lesson và Giao dịch thanh toán.
- **Minh bạch hệ thống:** Truy vết mọi thay đổi dữ liệu thông qua nhật ký Audit Log.
- **Phân tích dữ liệu:** Tổng hợp số liệu về doanh thu, sự tăng trưởng và hiệu quả học tập.
- **Kiểm duyệt nội dung:** Đảm bảo các khóa học từ Giáo viên đạt tiêu chuẩn trước khi đến tay học viên.

---

## 🔄 2. Chức năng Quản trị chính (Management)

### 👥 Quản lý Người dùng (User Management)
- Xem danh sách, tìm kiếm và lọc người dùng theo Role, Trạng thái.
- Khóa (Lock) hoặc mở khóa tài khoản khi có vi phạm điều khoản.
- Thay đổi quyền hạn (Role) giữa Admin, Teacher và Student.

### 📚 Quản lý Nội dung (Content Moderation)
- Kiểm duyệt (Approve/Reject) các khóa học mới.
- Quản lý tập trung kho tài nguyên Media (Video, Audio, Image) trên MinIO.
- Theo dõi các báo cáo vi phạm nội dung từ phía học viên.

### 💰 Quản lý Tài chính (Financial Operations)
- Theo dõi chi tiết mọi giao dịch thanh toán qua VNPay.
- Đối soát dữ liệu (Reconciliation) giữa hệ thống nội bộ và cổng thanh toán.
- Xử lý mở khóa khóa học thủ công cho học viên trong trường hợp đặc biệt.

---

## 📝 3. Hệ thống Audit Log (Truy vết thay đổi)

Đây là tính năng quan trọng để đảm bảo an ninh và tính minh bạch:
- **Cơ chế hoạt động**: Sử dụng `@EntityListeners` hoặc cơ chế Interceptor để bắt mọi hành động `INSERT`, `UPDATE`, `DELETE`.
- **Dữ liệu lưu trữ**:
  - `table_name`: Tên bảng bị tác động.
  - `action`: Hành động thực hiện.
  - `old_values` (JSONB): Trạng thái dữ liệu trước khi sửa.
  - `new_values` (JSONB): Trạng thái dữ liệu sau khi sửa.
  - `performed_by`: ID người thực hiện hành động.
- **Lợi ích**: Dễ dàng khôi phục dữ liệu khi có sai sót và phát hiện các hành vi gian lận/phá hoại.

---

## 📊 4. Hệ thống Báo cáo & Phân tích (Analytics)

### 📈 Chỉ số Kinh doanh
- **Doanh thu:** Thống kê theo ngày, tháng, năm và theo từng loại khóa học.
- **Chuyển đổi:** Tỉ lệ chuyển đổi từ User đăng ký sang User mua khóa học (Conversion Rate).

### 👥 Chỉ số Người dùng
- **Retention:** Tỉ lệ người dùng quay lại học tập hằng ngày.
- **Active Users:** Số lượng người dùng hoạt động trong một khoảng thời gian (DAU/MAU).

### 🎓 Chỉ số Học thuật
- **Popularity:** Khóa học nào được yêu thích nhất.
- **Drop-off:** Bài học nào khiến học viên hay bỏ dở nhất để giáo viên cải thiện chất lượng.

---

## 🛠️ 5. Đặc tả Kỹ thuật & Logic nghiệp vụ

- **Role-Based Access Control (RBAC):** Chỉ những tài khoản có `Role = ADMIN` mới được phép truy cập vào trang quản trị (`/admin/**`).
- **Async Processing:** Việc ghi Audit Log và tổng hợp dữ liệu báo cáo được xử lý bất đồng bộ để tránh ảnh hưởng đến trải nghiệm người dùng cuối.
- **Data Export:** Hỗ trợ xuất dữ liệu (Export) ra các định dạng CSV/Excel phục vụ mục đích báo cáo ngoại tuyến.

---

## 💡 6. Quyết định & Điểm cần chú ý

- **Bảo mật dữ liệu:** Các dữ liệu nhạy cảm như Password hash hoặc Token tuyệt đối không được ghi vào Audit Log.
- **Tối ưu hóa DB:** Sử dụng **Materialized Views** trong PostgreSQL để tăng tốc độ cho các truy vấn báo cáo phức tạp trên tập dữ liệu lớn.
- **Cảnh báo sớm:** Hệ thống tự động gửi thông báo (Telegram/Email) cho Admin khi phát hiện các giao dịch thanh toán lỗi hoặc hành vi spam API.

---

## ⚠️ 7. Xử lý Edge Cases
- **Xung đột dữ liệu:** Xử lý trường hợp 2 Admin cùng sửa một khóa học tại một thời điểm (Optimistic Locking).
- **Audit Log phình to:** Thiết lập chính sách lưu trữ (Retention Policy) – Ví dụ: Chỉ giữ lại log trong vòng 1-2 năm để tiết kiệm bộ nhớ.
- **Sai lệch thanh toán:** Quy trình đối soát thủ công khi số tiền ghi nhận tại VNPay và DB không khớp nhau.

---

## 🔗 8. Liên kết hệ thống
- **Module 1/2/6**: Là các đối tượng quản lý chính của Module Admin.
- **Module 8**: Phân tích hiệu quả của hệ thống Gamification đối với sự gắn bó của người dùng.