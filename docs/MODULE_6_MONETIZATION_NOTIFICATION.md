# 🌸 PHÂN TÍCH SÂU MODULE 6: MONETIZATION & NOTIFICATION

> **⚠️ Trạng thái triển khai (2026-05-23):** Tài liệu dưới đây là **đặc tả mục tiêu**. Code hiện **chưa có** Payment/Notification service hoặc controller — chỉ schema DB. Backlog: [MODULE_6_REMAINING_TASKS.md](./MODULE_6_REMAINING_TASKS.md). Đối chiếu: [DOCS_CODE_CROSS_REFERENCE.md](./DOCS_CODE_CROSS_REFERENCE.md).

**Phiên bản phân tích:** 1.0 Deep Dive  
**Mục đích:** Xây dựng hệ thống giao dịch tài chính an toàn, mượt mà và cơ chế tương tác thông minh để giữ chân người dùng (Retention).

---

## 🎯 1. Mục tiêu cốt lõi của Module 6
Module này đóng vai trò vận hành và đảm bảo tính bền vững cho dự án:
- **Tích hợp thanh toán:** Kết nối cổng VNPay ổn định, xử lý giao dịch an toàn.
- **Tự động hóa quyền truy cập:** Mở khóa khóa học tức thì ngay sau khi thanh toán thành công thông qua Webhook/IPN.
- **Hệ thống thông báo:** Gửi các cảnh báo và nhắc nhở quan trọng qua kênh In-app và Email.
- **Cá nhân hóa:** Gửi thông báo dựa trên hành vi và tiến độ thực tế của từng học viên.

---

## 💳 2. Hệ thống Thanh toán (Payment)

### 🇻🇳 Tích hợp VNPay
- **Cổng thanh toán:** Lựa chọn VNPay vì sự phổ biến tại Việt Nam và hỗ trợ đầy đủ Sandbox cho giai đoạn phát triển.
- **Cơ chế Idempotency:** Hệ thống phải đảm bảo mỗi giao dịch chỉ được xử lý mở khóa nội dung duy nhất một lần, dù Webhook IPN có thể gửi lại nhiều lần.

### 🔄 Luồng giao dịch chuẩn
1. **Khởi tạo**: Student nhấn "Mua khóa học" -> Hệ thống tạo bản ghi `Payment` với trạng thái `PENDING` và sinh URL redirect sang VNPay.
2. **Thanh toán**: Người dùng thực hiện thao tác trên cổng VNPay.
3. **Phản hồi (Frontend)**: VNPay redirect về trang `ReturnURL` để hiển thị kết quả UI cho khách hàng.
4. **Xác nhận (Backend - IPN)**: VNPay gửi tín hiệu ngầm (Webhook) về API của SakuraLearn. 
   - Backend xác thực chữ ký số (Checksum).
   - Kiểm tra số tiền và trạng thái.
   - Cập nhật bản ghi Payment sang `SUCCESS`.
   - **Mở khóa nội dung**: Tự động tạo bản ghi `Enrollment` cho User.

---

## 🔔 3. Hệ thống Thông báo (Notification)

### 📂 Phân loại thông báo
- **Giao dịch**: Thanh toán thành công, xác nhận đơn hàng, hoàn tiền.
- **Học tập**: Nhắc nhở bài học mới, thông báo giáo viên vừa cập nhật giáo trình.
- **SRS Reminder**: Nhắc nhở danh sách thẻ cần ôn tập hàng ngày.
- **Gamification**: Thông báo khi User đạt Badge mới, thăng cấp Level hoặc sắp mất Streak.

### 📬 Kênh phân phối
- **In-app**: Danh sách thông báo (Bell icon) ngay trên giao diện web.
- **Email**: Sử dụng các mẫu Email HTML chuyên nghiệp để gửi qua dịch vụ SMTP.

---

## 🛠️ 4. Đặc tả Chức năng chi tiết
| Chức năng | Mô tả chi tiết nghiệp vụ | Trạng thái |
| :--- | :--- | :--- |
| **Payment Integration** | Tích hợp thư viện VNPay, tạo URL thanh toán bảo mật | 📋 Planned |
| **IPN Webhook Handler** | Xử lý phản hồi ngầm từ VNPay, xác thực Checksum | 📋 Planned |
| **Enrollment Unlock** | Tự động mở khóa khóa học ngay khi có tín hiệu IPN thành công | 📋 Planned |
| **Payment History** | Hiển thị danh sách hóa đơn và lịch sử giao dịch cho User | 📋 Planned |
| **In-app Notification** | Hệ thống lưu trữ và hiển thị thông báo nội bộ | 📋 Planned |
| **Email Service** | Tích hợp Spring Mail hỗ trợ template HTML chuyên nghiệp | 🟡 Auth emails only |

---

## ⚖️ 5. Quy tắc & Logic nghiệp vụ (Business Rules)

- **Múi giờ & Định dạng:** Sử dụng múi giờ Việt Nam (`Asia/Ho_Chi_Minh`) cho toàn bộ thời gian giao dịch và nhắc nhở.
- **An toàn tài chính:** Luôn so sánh số tiền thực trả từ VNPay với giá khóa học trong Database trước khi phê duyệt.
- **Notification Retention:** Thông báo In-app sẽ được lưu trữ trong 30-90 ngày trước khi tự động lưu trữ (Archive).
- **Retry Logic:** Nếu IPN gửi về lỗi do Backend bị nghẽn, hệ thống phải cho phép VNPay gửi lại hoặc Admin xử lý thủ công (Module 7).

---

## 💡 6. Quyết định & Điểm cần chú ý

- **Xử lý bất đồng bộ:** Việc gửi Email và tạo bản ghi thông báo phải được thực hiện qua `@Async` hoặc Message Queue (Kafka) để không làm chậm luồng thanh toán của khách hàng.
- **Template i18n:** Các mẫu thông báo cần hỗ trợ đa ngôn ngữ tùy theo thiết lập `preferred_language` của User.
- **VNPay Checksum:** Sử dụng thuật toán `HMAC-SHA512` theo chuẩn mới nhất của VNPay.

---

## ⚠️ 7. Xử lý Edge Cases
- **Thanh toán thành công nhưng mạng sập:** User không thấy trang cảm ơn nhưng hệ thống vẫn phải mở khóa khóa học qua kênh IPN.
- **Hủy thanh toán:** User quay lại app sau khi đóng trang VNPay, trạng thái `Payment` phải được cập nhật là `CANCELLED`.
- **Giao dịch trùng lặp:** Hệ thống chặn mở khóa 2 lần cho cùng một mã giao dịch `vnp_TxnRef`.

---

## 🔗 8. Liên kết hệ thống
- **Module 2**: Cung cấp giá khóa học và nhận lệnh tạo Enrollment.
- **Module 1**: Lấy thông tin Email và cài đặt ngôn ngữ của User.
- **Module 7**: Cung cấp dữ liệu cho báo cáo doanh thu và đối soát tài chính cho Admin.