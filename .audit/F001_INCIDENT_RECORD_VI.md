# F-001 — Hồ sơ xử lý credential bị theo dõi

Ngày mở hồ sơ: **2026-08-17**  
Finding: **F-001 / Critical**  
Trạng thái: **Đang xử lý — chưa đủ điều kiện đóng**

## Quy tắc bảo vệ

- Không ghi giá trị credential vào hồ sơ này, ticket, chat, log hoặc command output.
- Không gọi nhà cung cấp để thử credential.
- Chỉ dùng fingerprint/pattern, path, commit ID và bằng chứng revoke đã redact.
- Rewrite Git history chỉ thực hiện sau khi repository owner phê duyệt và team đã chuẩn bị re-clone/rebase.

## Inventory Git đã xác minh

Quét chỉ xuất path/commit metadata, không xuất match:

| Thuộc tính | Kết quả |
| --- | --- |
| Pattern | Google API credential-shaped; giá trị không được ghi lại |
| Số commit bị ảnh hưởng | 13 |
| Số path bị ảnh hưởng | 1 |
| Path | `sakuralearn-backend/src/main/resources/application.yml` |
| Commit cũ nhất thấy pattern | `278955e95a979c11e6b56ca26e1b63f363b957a4` |
| Commit mới nhất thấy pattern | `2175947f481493bcdbd1fb9c45c50a9755a52b85` |
| Khoảng thời gian commit | 2026-04-21 → 2026-07-02 (UTC+07:00) |

Inventory này mới phủ Git objects có thể truy cập trong clone hiện tại. Fork,
remote cache, CI log, artifact, container image và clone của developer vẫn cần
repository owner kiểm tra.

## Remediation trong working tree

- [x] Xóa 9 sensitive fallback khỏi base `application.yml`.
- [x] Docker Compose yêu cầu DB/MinIO credential, không còn default password/key.
- [x] Test credential fixture được cô lập trong `application-test.yml`.
- [x] Thêm `application-prod.yml` và `ProductionSecretValidator` fail-fast.
- [x] `DataSeeder` chỉ ở profile `dev` và `INITIAL_ADMIN_PASSWORD` không có fallback.
- [x] `.env.example` không chứa credential; bổ sung biến Google GenAI còn thiếu.
- [x] Thêm Gitleaks full-history CI với output `--redact=100`.
- [x] Thêm Gitleaks pre-commit và custom rule cấm sensitive fallback.
- [x] Thêm `docs/SECURITY_SECRET_INCIDENT_RUNBOOK.md`.
- [x] Backend test: 20 run, 0 failure, 0 error, 0 skipped.
- [x] Static check: 9 base sensitive property đều là placeholder bắt buộc; 0 fallback bị cấm.
- [x] Compose current `.env`: config hợp lệ; `.env.example` trống: fail-fast đúng kỳ vọng.
- [x] Gitleaks local full-history đã chạy: 19 commit / khoảng 18,10 MB / 11 finding; exit code 1 đúng kỳ vọng vì lịch sử chưa làm sạch.

## Hành động bắt buộc của repository/provider owner

- [ ] Xác nhận project/provider và owner của credential mà không thử giá trị.
- [ ] Revoke credential cũ và lưu bằng chứng đã redact.
- [ ] Tạo credential mới theo least privilege/restriction nếu integration còn dùng.
- [ ] Inject credential mới qua secret store của môi trường; xác nhận không vào log/artifact.
- [ ] Kiểm tra provider audit/usage/cost trong toàn bộ exposure window.
- [ ] Kiểm tra fork, CI logs/artifacts, image, cache và clone developer.
- [ ] Phê duyệt maintenance window cho history rewrite.
- [ ] Rewrite toàn bộ branch/tag bị ảnh hưởng theo runbook và force-update có phối hợp.
- [ ] Yêu cầu contributor re-clone/rebase; không merge history cũ trở lại.
- [ ] Chạy Gitleaks từ fresh clone trên tất cả branch/tag và lưu kết quả redact.

## Điều kiện đóng F-001

- [ ] Credential cũ đã revoke/rotate với bằng chứng.
- [ ] Không có dấu hiệu lạm dụng chưa được xử lý.
- [ ] Git history/fork/cache/artifact trong phạm vi kiểm soát đã được làm sạch.
- [ ] Full-history Gitleaks pass từ fresh clone.
- [ ] Production fail-fast khi thiếu/placeholder secret được chứng minh trên staging.
- [ ] Incident owner và release owner ký đóng finding.
