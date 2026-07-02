# 🌸 MODULE 6: Monetization & Notification — Trạng thái & Nhiệm vụ còn lại

> **⚠️ Lệch pha nghiêm trọng:** `MODULE_6_MONETIZATION_NOTIFICATION.md` §4 ghi **"✅ Hoàn thiện"** — **code chưa có** Payment/Notification layer.  
> **Code:** Chỉ bảng `payments`, `notifications` trong `V1__Initial_Database_Schema.sql`.  
> **Phase 1:** Không phải release gate — xem `HienTrang/PHASE_1_P0_STATUS.md`.

## 1. Đánh giá hiện trạng

| Thành phần | DB (Flyway V1) | Backend Java | Frontend |
|------------|----------------|--------------|----------|
| Payment / VNPay | ✅ `payments` | ❌ | ❌ |
| IPN / Webhook | — | ❌ | ❌ |
| Enrollment unlock sau thanh toán | `enrollments` có sẵn | 🟡 Enroll thủ công/free | 🟡 |
| In-app notification | ✅ `notifications` | ❌ | ❌ (không bell UI) |
| Email thông báo giao dịch | — | 🟡 Chỉ auth email (`MailServiceImpl`) | — |

## 2. Công việc — Phase 2A (Thiết kế)

- [ ] **State machine Payment:** `PENDING` → `SUCCESS` / `FAILED` / `CANCELLED` / `REFUNDED`.
- [ ] **Idempotency:** Khóa theo `vnp_TxnRef` / payment id — chốn mở khóa khóa học 2 lần.
- [ ] **Sequence diagram:** Student click Mua → VNPay → Return URL + IPN → Enrollment.
- [ ] **Sửa docs:** `MODULE_6_MONETIZATION_NOTIFICATION.md` — đổi cột trạng thái thành Planned / Not started.

## 3. Công việc — Phase 2B (Backend)

- [ ] Entity `Payment`, enum `PaymentStatus` map Flyway.
- [ ] `PaymentRepository`, `PaymentService`, `PaymentController` (`POST /payments/init`, `GET /payments/{id}`, `GET /payments/my`).
- [ ] **VNPay sandbox:** Tạo URL, HMAC-SHA512 checksum, verify IPN.
- [ ] **IPN endpoint:** `POST /payments/vnpay/ipn` — verify amount, course id, user id → update payment → tạo `Enrollment`.
- [ ] **Return URL handler** (redirect FE) — chỉ hiển thị UI; unlock dựa IPN.
- [ ] Entity `Notification`, `NotificationService`, `NotificationController` (list, mark read).
- [ ] **@Async** gửi email + ghi notification sau payment success (theo spec §6).
- [ ] Unit test: idempotency IPN, amount mismatch, cancelled payment.

## 4. Công việc — Phase 2C (Frontend)

- [ ] Nút **Mua khóa học** trên `CourseDetail.jsx` (paid courses).
- [ ] Trang **Payment result** / redirect từ VNPay.
- [ ] **Lịch sử thanh toán** (student).
- [ ] **Bell icon** + danh sách thông báo in-app.
- [ ] `paymentService.js` — không hardcode URL.

## 5. Công việc — Phase 3 (Mở rộng)

- [ ] Bundle courses, refund flow, smart reminders (theo Master Spec).
- [ ] Kafka cho notification worker — **chỉ khi** monolith sync không đủ tải.

## 6. Tiêu chí hoàn thành (Definition of Done)

- [ ] E2E sandbox: Mua → VNPay test → IPN → Enrollment active → Email/notification nhận được.
- [ ] Docs và `DOCS_CODE_CROSS_REFERENCE.md` cập nhật trạng thái ✅.
- [ ] Không marketing M6 là "hoàn thiện" trước khi DoD đạt.
