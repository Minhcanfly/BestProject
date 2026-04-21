🌸 PHÂN TÍCH SÂU MODULE 6: Monetization & Notification Phiên bản: 1.0 Deep Dive Mục tiêu phân tích: Làm rõ toàn bộ luồng thanh toán an toàn, đáng tin cậy và cách xử lý thông báo (notification) – đây là module quyết định doanh thu và trải nghiệm mua hàng của người dùng.

## 1. Mục tiêu cốt lõi của Module 6

Cho phép Student mua khóa học paid một cách mượt mà, an toàn.

Xử lý thanh toán đúng, không trùng lặp, ngay cả khi user đóng tab hoặc mạng lỗi.

Tự động unlock course sau khi thanh toán thành công.

Gửi thông báo kịp thời để tăng trải nghiệm và retention.

Hỗ trợ dễ dàng mở rộng sang nhiều cổng thanh toán sau này (MoMo, ZaloPay…).

## 2. Luồng nghiệp vụ chính (User Journey)

Luồng mua khóa học điển hình:

Student xem chi tiết Course (paid) → Nhấn nút “Mua ngay” hoặc “Enroll”.

Hệ thống kiểm tra:

User đã enroll chưa?

Course có đang Published không?

Tạo bản ghi Payment với trạng thái PENDING, sinh vnp_TxnRef unique (ví dụ: COURSE_12345_1745123456789).

Sinh URL thanh toán VNPay → Redirect user sang trang VNPay (hoặc mở popup/QR).

User thanh toán bằng ATM, thẻ quốc tế, QR, ví điện tử…

Sau thanh toán:

VNPay redirect về Return URL (cho UI hiển thị “Thanh toán thành công”).

Quan trọng nhất: VNPay gọi IPN/Webhook về server của bạn.

Server xử lý IPN → Nếu hợp lệ và thành công →

Cập nhật Payment = SUCCESS

Tạo Enrollment cho user

Unlock course

Gửi Notification (in-app + email)

User quay lại app → thấy khóa học đã mở và có thể học ngay.

## 3. Chức năng chính

Chức năng

Mô tả chi tiết

Độ quan trọng

Tạo Payment Request

Tạo transaction PENDING, sinh URL VNPay

★★★★★

VNPay Redirect & Return URL

Xử lý sau khi user thanh toán xong (chỉ dùng cho UI)

★★★★

IPN / Webhook Handler

Nhận thông báo từ VNPay, verify signature, xử lý idempotent

★★★★★

Payment Status Update

PENDING → SUCCESS / FAILED / REFUNDED

★★★★★

Auto Enrollment & Unlock

Tạo Enrollment + mở quyền truy cập course

★★★★★

Notification Service

Gửi thông báo thanh toán thành công, lesson complete, reminder…

★★★★

Payment History

User xem lịch sử giao dịch của mình

★★★

## 4. Quy tắc & Logic nghiệp vụ quan trọng (Business Rules)

Payment Status:

PENDING (mặc định)

SUCCESS

FAILED

CANCELLED

REFUNDED (nếu hỗ trợ sau)

Idempotency (Rất quan trọng):

VNPay có thể gọi IPN nhiều lần cho cùng một giao dịch.

Phải kiểm tra trước khi xử lý: Nếu Payment đã là SUCCESS → bỏ qua, chỉ trả về response cho VNPay.

Critical Path:

Logic unlock course và tạo Enrollment phải xử lý trong IPN handler, không dựa hoàn toàn vào Return URL (user có thể đóng tab).

Unique Transaction Reference:

vnp_TxnRef phải unique (khuyến nghị: PREFIX + courseId + userId + timestamp).

Notification:

Payment success → gửi ngay.

Các loại khác: Lesson completed, Daily learning reminder, Achievement, Streak warning.

## 5. Best Practices với VNPay (Cập nhật 2025–2026)

Luôn verify signature của IPN và Return URL.

Xử lý IPN là chính, Return URL chỉ dùng để redirect UI.

Idempotent handling: Lưu trạng thái và kiểm tra trước khi update.

Validate IP address của VNPay (nếu có danh sách IP chính thức).

Xử lý async nếu logic nặng (nhưng unlock course nên sync trong IPN).

Trả về response nhanh cho VNPay (200 OK) để tránh retry liên tục.

Khuyến nghị triển khai:

Tạo endpoint /api/payment/vnpay/ipn (POST).

Verify signature → Kiểm tra txnRef đã xử lý chưa → Update status → Publish event (Kafka hoặc Spring Event) cho Notification.

## 6. Các điểm dễ nhầm lẫn / Quyết định then chốt

Xử lý Return URL vs IPN Return URL chỉ nên redirect và hiển thị thông báo. Toàn bộ business logic (unlock) phải nằm ở IPN.

Idempotency Key Dùng vnp_TxnRef làm key để đảm bảo không tạo Enrollment nhiều lần.

Multi-gateway sau này Thiết kế PaymentService trừu tượng để dễ thêm MoMo, ZaloPay, payOS (rất phổ biến ở Việt Nam).

Refund / Hủy giao dịch MVP chưa cần, nhưng nên chuẩn bị bảng và status để sau này hỗ trợ.

Timezone & Currency Sử dụng Asia/Ho_Chi_Minh, tiền tệ mặc định là VND.

## 7. Edge Cases cần xử lý

User thanh toán xong nhưng đóng tab → IPN vẫn phải unlock course.

VNPay gọi IPN nhiều lần (retry) → chỉ xử lý 1 lần.

Thanh toán thất bại hoặc user hủy → cập nhật status = FAILED, không tạo Enrollment.

Mạng lỗi khi gọi IPN → VNPay sẽ retry (cần handle idempotent).

User mua cùng lúc nhiều khóa học → mỗi course một Payment riêng.

Giá khuyến mãi / Coupon (Phase 2).

## 8. Gợi ý phù hợp với người Việt & Tăng chuyển đổi

Hiển thị rõ các phương thức thanh toán phổ biến: ATM nội địa, Thẻ Visa/Master, QR Code, Ví MoMo/ZaloPay (nếu tích hợp multi-gateway).

Sau thanh toán thành công → redirect về trang “Chúc mừng! Khóa học của bạn đã được mở” với nút “Bắt đầu học ngay”.

Gửi email + In-app notification với nội dung thân thiện: “Cảm ơn bạn đã mua khóa học N5 Full Package. Chúc bạn học tốt!”

Hỗ trợ giá theo gói (N5 Package, N4+N5 Combo…) và hiển thị rõ lợi ích.

Thêm “Bảo mật thanh toán” badge và chính sách hoàn tiền (nếu áp dụng).

## 9. Liên kết với các Module khác

Module 2: Kiểm tra Course paid hay free, tạo Enrollment.

Module 3: Sau khi unlock → user có thể bắt đầu học và theo dõi progress.

Module 7: Admin xem danh sách Payment, doanh thu, báo cáo.

Module 8: Payment success → có thể tặng XP hoặc Badge “First Purchase”.

Notification: Dùng Kafka hoặc Spring @EventListener để tách biệt.



Tóm tắt quyết định quan trọng cho Module 6:

IPN handler sẽ xử lý unlock course sync hay async?

Có hỗ trợ multi-gateway (MoMo, ZaloPay) ngay ở MVP không? Hay chỉ VNPay trước?

Notification sẽ dùng Kafka hay Spring Event đơn giản?

Có cần hỗ trợ Coupon / Giảm giá ở Phase 1 không?