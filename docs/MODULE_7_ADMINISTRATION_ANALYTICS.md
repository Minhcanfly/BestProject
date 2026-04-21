🌸 PHÂN TÍCH SÂU MODULE 7: Administration & Analytics Phiên bản: 1.0 Deep Dive Mục tiêu phân tích: Làm rõ toàn bộ hệ thống quản trị nội bộ và báo cáo – đây là module phục vụ bạn (Admin) và đội ngũ vận hành, giúp kiểm soát, theo dõi và tối ưu hóa toàn bộ hệ thống SakuraLearn.

## 1. Mục tiêu cốt lõi của Module 7

Cung cấp Admin Dashboard mạnh mẽ để quản lý toàn bộ hệ thống.

Đảm bảo tính minh bạch và traceability qua Audit Log.

Cung cấp dữ liệu báo cáo giúp bạn hiểu rõ hiệu suất kinh doanh và hành vi người dùng.

Hỗ trợ vận hành hàng ngày (duyệt nội dung, quản lý user, theo dõi thanh toán).

Là “bộ não” hậu trường, không ảnh hưởng trực tiếp đến trải nghiệm người dùng cuối.

## 2. Luồng nghiệp vụ chính (Admin Journey)

Admin đăng nhập (với role ADMIN) → vào Admin Dashboard.

Tổng quan (Overview):

Số user đăng ký hôm nay / tháng

Doanh thu tháng hiện tại

Số khóa học đang active

Số card SRS đang được review

Quản lý User → tìm kiếm, xem chi tiết, thay đổi role, khóa/mở tài khoản.

Quản lý Course → duyệt course của Teacher, publish/unpublish, chỉnh sửa.

Quản lý Payment → xem tất cả giao dịch, lọc theo trạng thái, export.

Audit Log → xem lịch sử mọi hành động (ai làm gì, khi nào, thay đổi gì).

Báo cáo & Analytics → xem biểu đồ doanh thu, khóa học phổ biến, tiến độ học viên, retention.

(Tương lai) Import/Export dữ liệu, cấu hình hệ thống.

## 3. Chức năng chính (chi tiết)

Nhóm chức năng

Chức năng cụ thể

Độ quan trọng cho MVP

User Management

Xem danh sách user, tìm kiếm, xem profile, thay đổi role, khóa/mở (is_active), soft delete

★★★★★

Course Management

Duyệt course của Teacher, Publish/Unpublish, chỉnh sửa, xóa (soft)

★★★★

Payment Management

Xem tất cả Payment, lọc theo status/date/course, export CSV

★★★★★

Audit Log

Xem log chi tiết (entity, action, old_value, new_value, changed_by, timestamp)

★★★★★

Analytics & Reports

Dashboard tổng quan, Doanh thu theo tháng, Top courses, User activity, Retention rate

★★★★

Content Moderation

Duyệt Lesson/Course do Teacher tạo

★★★

System Overview

Thống kê realtime hoặc gần realtime

★★★

## 4. Quy tắc & Logic nghiệp vụ quan trọng

RBAC nghiêm ngặt: Chỉ user có role ADMIN mới vào được toàn bộ Module 7. Teacher chỉ quản lý course của chính mình (không vào Admin panel).

Audit Log:

Ghi lại mọi hành động quan trọng: CREATE, UPDATE, DELETE, PUBLISH, ROLE_CHANGE…

Lưu old_values và new_values dưới dạng JSON để có thể xem lịch sử thay đổi.

Sử dụng @Async để không làm chậm main thread.

Soft Delete: Admin có thể xem cả dữ liệu đã soft delete (có filter).

Data Export: Hỗ trợ export Payment và User list ra CSV/Excel (rất hữu ích cho kế toán).

Timezone: Tất cả báo cáo dùng Asia/Ho_Chi_Minh.

## 5. Các điểm dễ nhầm lẫn / Quyết định then chốt

Phân quyền giữa Teacher và Admin

Teacher: Chỉ CRUD course/lesson do chính mình tạo.

Admin: Toàn quyền (quản lý tất cả user, course, payment).

Audit Log nên ghi những gì?

Khuyến nghị ghi ít nhất: User management, Course/Lesson changes, Payment status change, Role assignment.

Không nên ghi quá chi tiết (ví dụ mọi lần update progress) để tránh bảng audit_log phình to.

Analytics tính toán realtime hay batch?

MVP: Dùng query động (có thể chậm nếu dữ liệu lớn).

Sau này: Dùng materialized view hoặc cache Redis cho dashboard.

Content Approval Workflow

Teacher tạo Course → trạng thái “Pending” → Admin duyệt → “Published”.

MVP có thể đơn giản hóa: Teacher publish trực tiếp, Admin chỉ can thiệp khi cần.

Performance của Admin Dashboard

Nên có pagination + filter mạnh cho mọi danh sách (user, payment, audit log).

## 6. Edge Cases cần xử lý

Admin vô tình khóa chính tài khoản ADMIN của mình → cần cơ chế “emergency unlock” (thông qua database trực tiếp).

Audit Log quá lớn → cần cơ chế archive log cũ (sau 6–12 tháng).

Báo cáo doanh thu tính cả giao dịch SUCCESS hay chỉ trừ hoàn tiền.

User bị soft delete → vẫn giữ lịch sử payment và enrollment (để traceability).

Nhiều Admin cùng chỉnh sửa một Course cùng lúc → dùng Optimistic Locking (@Version).

## 7. Gợi ý phù hợp với dự án nhỏ & cá nhân

Bắt đầu với giao diện Admin Dashboard đơn giản nhưng chuyên nghiệp (có thể dùng React Admin, Ant Design Pro, hoặc tự code với Tailwind).

Ưu tiên làm mạnh Payment Management và Audit Log vì đây là hai phần quan trọng nhất để bạn kiểm soát tiền bạc và rủi ro.

Thêm Quick Actions:

“Unlock course thủ công cho user X”

“Reset tiến độ SRS cho user”

Dashboard nên có dark mode và responsive (vì bạn có thể check trên mobile).

## 8. Liên kết với các Module khác

Module 1: Quản lý user, role, trạng thái active.

Module 2: Quản lý và duyệt Course/Lesson.

Module 3: Xem tiến độ học của tất cả user.

Module 5: Xem thống kê SRS usage (số card được tạo, review rate).

Module 6: Quản lý và export Payment + trigger manual refund nếu cần.

Module 8: Xem thống kê XP, Streak, Badge được cấp.



Tóm tắt các quyết định quan trọng cho Module 7:

Teacher có cần duyệt nội dung bởi Admin không, hay Teacher publish trực tiếp?

Audit Log sẽ ghi những hành động nào là bắt buộc?

Dashboard có cần realtime (WebSocket) hay query thông thường là đủ cho MVP?

Có hỗ trợ export dữ liệu ngay từ MVP không?