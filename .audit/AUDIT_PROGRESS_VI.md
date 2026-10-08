# Tiến Độ Kiểm Thử (Audit Progress)

## Giai đoạn 0 — Khám phá Tài liệu (Document Discovery)

- [x] Xác nhận thư mục gốc của repository.
- [x] Ghi nhận nhánh Git, commit, số lượng file được theo dõi và trạng thái ban đầu của working tree.
- [x] Đọc toàn bộ nội dung file `AuditMaster.md`.
- [x] Đọc `README` hướng dẫn bắt buộc và các file từ 01–06 trong đường dẫn `AI check/` được tìm thấy.
- [x] Phân tích các tài liệu văn bản chính, quy tắc audit/bối cảnh ẩn, schema cơ sở dữ liệu tham chiếu và tài sản ERD.
- [x] Đọc tất cả các tài liệu được tìm thấy hoặc ghi nhận là không thể đọc.
- [x] Tạo file `DOCUMENT_MANIFEST.md`.
- [x] Tạo file `CLAIMS_REGISTRY.md`.
- [x] Ghi nhận các tài liệu không thể đọc.
- [x] Tính toán tỷ lệ bao phủ tài liệu (document coverage).
- [x] Vượt qua Checkpoint P0.

## Giai đoạn 1 — Kiềm kê Repository & Kiểm thử Mã nguồn (Repository Inventory & Code Audit)

- [x] Xây dựng danh mục các file được theo dõi từ Git và bổ sung các file ngoài phạm vi Git  và thuộc phạm vi audit.
- [x] Phân loại từng file và gán mức độ đọc/trạng thái/lý do.
- [x] Tính toán độ bao phủ tổng thể và độ bao phủ các file quan trọng (critical-file coverage).
- [x] Nhận diện công nghệ từ bằng chứng mã nguồn/cấu hình.
- [x] Kiểm thử nghiệp vụ, kiến trúc, backend, frontend, cơ sở dữ liệu, API, bảo mật, hiệu năng, DevOps và kiểm thử (testing).
- [x] Chạy xác minh runtime an toàn theo đúng thứ tự yêu cầu.

## Giai đoạn 2 — Đối soát Tài liệu ↔ Mã nguồn (Docs ↔ Code Reconciliation)

- [x] Đưa ra kết luận (verdict) cho toàn bộ 100 tuyên bố tài liệu đã đăng ký.
- [x] Ghi nhận các mâu thuẫn trong tài liệu và các thực tế chưa được ghi chép.
- [x] Xác minh lại từng vấn đề từ lần kiểm thử trước đó theo trạng thái FIXED, STILL_OPEN, REGRESSED, hoặc NOT_VERIFIABLE.
- [x] Tính toán độ chính xác của tài liệu (documentation accuracy).

## Giai đoạn 3 — Thẩm định Vấn đề (Issue Validation)

- [x] Thẩm định các phát hiện so với triển khai/cấu hình/kiểm thử liên quan.
- [x] Gộp các lỗi trùng lặp theo nguyên nhân gốc rễ (root cause).
- [x] Gán mức độ nghiêm trọng, độ tin cậy, trạng thái, tác động, phương án khắc phục, mức độ nỗ lực và cách xác minh.
- [x] Tạo file `FINDINGS_REGISTER.md`.

## Giai đoạn 4 — Báo cáo Kiểm thử Doanh nghiệp Phân cấp Cuối cùng (Final Enterprise Audit Report)

- [x] Tạo bảng điểm (scorecard) và điểm tổng thể giới hạn bởi lỗi nghiêm trọng (critical-capped score).
- [x] Đưa ra kết luận sản xuất (production verdict), lộ trình khắc phục và tiêu chí thoát (GO exit criteria).
- [x] Tạo file `FINAL_ENTERPRISE_AUDIT_REPORT.md`.
- [x] Xác minh không có file mã nguồn nào bị thay đổi bởi quá trình audit.

## Cổng giai đoạn (Phase gates)

- Giai đoạn 0: HOÀN THÀNH (Đã vượt qua Checkpoint P0)
- Giai đoạn 1: HOÀN THÀNH
- Giai đoạn 2: HOÀN THÀNH
- Giai đoạn 3: HOÀN THÀNH
- Giai đoạn 4: HOÀN THÀNH

## Ghi chú

- `AGENTS.md` đề cập đến `AI đánh giá/`, nhưng thư mục đó không tồn tại. Bộ tài liệu hướng dẫn tương ứng hiện có dưới tên `AI check/`.
- Số lượng tài liệu văn bản được phát hiện cho đến nay: 65 (63 tài liệu văn bản thông thường cộng với 2 quy tắc ẩn `.mdc`). Các file SQL tham chiếu CSDL và ảnh ERD được theo dõi riêng trong phạm vi Document Manifest.
