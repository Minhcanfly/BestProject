# Giai Đoạn 3 — Sổ Đăng Ký Các Phát Hiện Đã Thẩm Định (Validated Findings Register)

Ngày kiểm thử: 2026-08-03  
Trạng thái tuân theo AuditMaster: phát hiện mới ghi nhận là `New` (Mới); nguyên nhân gốc rễ đã tồn tại trong đợt kiểm thử cũ ghi nhận là `Still Open` (Tồn đọng). Các phát hiện được gộp loại bỏ trùng lặp theo nguyên nhân gốc rễ.

## F-001 — Credential bị theo dõi và các secret dự phòng không an toàn

- **Nguồn gốc:** Xác minh Kiểm thử cũ / Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Critical (Nghiêm trọng)
- **Độ tin cậy:** Cao
- **Trạng thái:** Still Open (Tồn đọng)
- **Bằng chứng:** Các dòng 4, 7, 73, 86 và 96 của file `application.yml` chứa cấu hình API/credential/JWT dự phòng (fallback). Một giá trị bị Git theo dõi có dạng credential thật của Google API; giá trị này đã được che khuất (redact) và chưa thử nghiệm tính hiệu lực. Git hiện đang theo dõi file này.
- **Nguyên nhân gốc rễ:** Sự tiện lợi khi phát triển được nhúng trực tiếp vào base profile thay vì bắt buộc inject secret và thất bại ngay (fail-fast) nếu thiếu.
- **Tác động nghiệp vụ:** Lạm dụng credential, phát sinh chi phí ngoài kế hoạch, bị nhà cung cấp đình chỉ, hoặc giả mạo JWT nếu khởi chạy sản xuất với giá trị mặc định.
- **Tác động kỹ thuật:** Tính cô lập môi trường không được đảm bảo.
- **Tác động bảo mật:** Lộ thông tin bí mật và sử dụng credential yếu/mặc định.
- **Phạm vi ảnh hưởng:** Các nhà cung cấp AI, Google OAuth, JWT, tất cả các triển khai sử dụng base profile.
- **Khuyến nghị:** Hủy/quay vòng (rotate) credential bị theo dõi thông qua nhà cung cấp, xóa sạch khỏi lịch sử Git theo quy trình xử lý sự cố, loại bỏ các giá trị dự phòng nhạy cảm, và làm ứng dụng thất bại ngay khi khởi chạy sản xuất nếu thiếu secret.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 2–4 ngày bao gồm phối hợp quay vòng/xóa lịch sử.
- **Phương pháp xác minh:** Công cụ quét secret không tìm thấy credential; credential cũ đã bị hủy; ứng dụng sản xuất không khởi chạy được nếu thiếu secret được inject; secret mới không bao giờ xuất hiện trong Git/log.

## F-002 — Phản hồi Quiz entity làm lộ password hash và đáp án

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Critical (Nghiêm trọng)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `QuizController` trả về trực tiếp các object của service; `QuizServiceImpl.getQuizByBlockId` trả về `Quiz` (dòng 69–70) và nộp bài trả về `QuizAttempt`; `QuizQuestion.correctAnswer` có thể serialize (dòng 36); `User.passwordHash` có thể serialize (dòng 41). OSIV được bật lúc runtime và không có `@JsonIgnore` bảo vệ trường mật khẩu của entity.
- **Nguyên nhân gốc rễ:** Sử dụng persistence entity làm contract phản hồi công khai qua API.
- **Tác động nghiệp vụ:** Người học có thể lấy được đáp án đúng; người dùng đã xác thực có thể nhận được password hash của người dùng khác thông qua mối quan hệ quiz/attempt.
- **Tác động kỹ thuật:** Việc serialize lazy graph không ổn định và làm lộ schema nội bộ.
- **Tác động bảo mật:** Tiết lộ dữ liệu xác thực nhạy cảm và mất tính toàn vẹn của bài đánh giá.
- **Phạm vi ảnh hưởng:** `GET /api/v1/quizzes/block/{blockId}`, các phản hồi tạo/cập nhật quiz, `POST /api/v1/quizzes/{id}/submit`.
- **Khuyến nghị:** Áp dụng các DTO riêng biệt cho học viên/người chỉnh sửa/kết quả, không bao giờ serialize entity User, ẩn đáp án đúng cho đến khi có phản hồi được server cho phép, và ignore password hash trên toàn hệ thống làm cơ chế phòng thủ chuyên sâu.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 3–5 ngày.
- **Phương pháp xác minh:** Các bài test contract/bảo mật khẳng định phản hồi không chứa `passwordHash` lẫn `correctAnswer`; việc chấm điểm quiz hoàn toàn thực hiện phía server.

## F-003 — Cookie OAuth không ký bị Java native-deserialize

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Critical (Nghiêm trọng)
- **Độ tin cậy:** Trung bình
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `HttpCookieOAuth2AuthorizationRequestRepository.loadAuthorizationRequest` dòng 21 truyền cookie từ client vào `CookieUtils.deserialize`; `CookieUtils` dòng 55 gọi `SerializationUtils.deserialize` trên chuỗi byte giải mã Base64. Không có xác minh MAC/chữ ký/mã hóa. Thuộc tính HttpOnly không ngăn được client thay thế cookie của chính nó.
- **Nguyên nhân gốc rễ:** OAuth state phía server được đại diện bằng dữ liệu Java serialized thô do trình duyệt kiểm soát.
- **Tác động nghiệp vụ:** Một chuỗi gadget khả thi có thể làm thỏa hiệp tiến trình backend (RCE).
- **Tác động kỹ thuật:** Hành vi deserialization bị phụ thuộc hoàn toàn vào classpath runtime.
- **Tác động bảo mật:** Lỗ hổng tiềm ẩn loại unsafe-deserialization/RCE; khả năng khai thác phụ thuộc vào các gadget có thể tiếp cận được (do đó độ tin cậy ở mức Trung bình).
- **Phạm vi ảnh hưởng:** Luồng xác thực Google OAuth.
- **Khuyến nghị:** Lưu trữ OAuth request phía server bằng mã định danh ngẫu nhiên (opaque handle), hoặc sử dụng token JSON được xác thực và parse nghiêm ngặt theo schema cho phép; tuyệt đối không native-deserialize chuỗi byte từ client.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 2–4 ngày.
- **Phương pháp xác minh:** Cookie bị can thiệp bị từ chối trước khi parse; không có API native deserialization nào có thể tiếp cận từ dữ liệu HTTP đầu vào; bổ sung các bài test OAuth-state đối kháng.

## F-004 — Stored XSS có thể đánh cắp token xác thực lưu trong localStorage

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Critical (Nghiêm trọng)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `LessonBlockServiceImpl` các dòng 65–67 lưu nội dung giáo viên nhập vào mà không sanitize. `BlockRenderer.jsx` các dòng 83/85 và `SyllabusManager.jsx` dòng 125 render nội dung đó bằng `dangerouslySetInnerHTML`. Không tìm thấy thư viện sanitizer hay cấu hình CSP nào. `AuthContext.jsx` các dòng 29–30 lưu access và refresh token trong localStorage.
- **Nguyên nhân gốc rễ:** Hệ thống coi HTML từ giáo viên/CSDL là tin tưởng trong khi giữ credential dạng bearer token có thể đọc được bằng JavaScript.
- **Tác động nghiệp vụ:** Một giáo viên độc hại hoặc tài khoản bị chiếm đoạt có thể thực thi mã độc dai dẳng trong phiên làm việc của học viên.
- **Tác động kỹ thuật:** Ranh giới nội dung và mã hóa đầu ra không được định nghĩa.
- **Tác động bảo mật:** Đánh cắp tài khoản/phiên làm việc, mạo danh thực hiện hành động, thao túng nội dung.
- **Phạm vi ảnh hưởng:** Văn bản bài học, xem trước syllabus, render HTML từ điển, tất cả các phiên làm việc giữ trên trình duyệt.
- **Khuyến nghị:** Sanitize bằng thư viện được bảo trì theo whitelist khi ghi và/hoặc render, tránh dùng HTML thô nếu có thể, triển khai CSP, và chuyển refresh/session credential sang Secure HttpOnly SameSite cookie.
- **Mức độ nỗ lực ước tính:** Lớn (L), 5–8 ngày.
- **Phương pháp xác minh:** Bộ payload Stored XSS render thành văn bản vô hại; CSP chặn thực thi inline; test trình duyệt xác nhận JavaScript không thể đọc được token.

## F-005 — Các thao tác thay đổi tài nguyên của Teacher thiếu phân quyền sở hữu

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** Các endpoint Lesson, block, quiz và AI chỉ kiểm tra vai trò TEACHER/ADMIN. Signature của service (`createLesson(courseId,...)`, `createBlock(lessonId,...)`, `createOrUpdateQuiz(request,creatorId)`, `generateSyllabusForCourse(courseId,model)`) không nhận/kiểm tra quyền sở hữu của người thực hiện. Các thao tác trên Course có pattern owner/admin, khẳng định không có cơ chế bù đắp toàn cục nào.
- **Nguyên nhân gốc rễ:** Phân quyền theo vai trò (RBAC) được triển khai nhưng thiếu phân quyền cấp đối tượng (ABAC / Ownership).
- **Tác động nghiệp vụ:** Bất kỳ giáo viên nào cũng có thể sửa/xóa chương trình học của giáo viên khác hoặc sinh nội dung/chi phí ngoài ý muốn.
- **Tác động kỹ thuật:** Tính toàn vẹn giữa các tenant không được thực thi tại ranh giới service.
- **Tác động bảo mật:** Lỗi vi phạm phân quyền cấp đối tượng (Broken Object-Level Authorization - BOLA).
- **Phạm vi ảnh hưởng:** CRUD/sắp xếp lại Lesson, CRUD/sắp xếp lại LessonBlock, chỉnh sửa quiz, sinh AI syllabus.
- **Khuyến nghị:** Truyền ID người thực hiện/cờ admin vào mọi thao tác service, xác định khóa học sở hữu, thực thi kiểm tra chủ sở hữu hoặc admin tập trung, và ghi nhận log các trường hợp bị từ chối.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 3–5 ngày.
- **Phương pháp xác minh:** Integration test chứng minh Teacher A nhận lỗi 403 cho mọi thao tác trên tài nguyên của Teacher B trong khi Admin thực hiện thành công.

## F-006 — Nội dung khóa học có thể truy cập mà không cần đăng ký/kiểm tra xuất bản

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** Cấu hình Security dùng `anyRequest().authenticated()` và cho phép tự do truy cập media. Các controller GET lesson/block/quiz nhận ID mà không kiểm tra người dùng hiện tại; các service tương ứng chỉ truy vấn theo course/lesson/block. Media hoàn toàn công khai. Không có kiểm tra đăng ký học hay khóa học đã xuất bản nào bù đắp cho các đường dẫn này.
- **Nguyên nhân gốc rễ:** Nhầm lẫn giữa xác thực (authentication) và phân quyền nội dung (content authorization).
- **Tác động nghiệp vụ:** Người dùng đã đăng nhập có thể xem nội dung khóa học trả phí/chưa xuất bản mà không cần quyền; media có thể tải ẩn danh.
- **Tác động kỹ thuật:** Chính sách truy cập mâu thuẫn giữa UI và API.
- **Tác động bảo mật:** Tiết lộ nội dung trái phép.
- **Phạm vi ảnh hưởng:** courses, lessons, lesson blocks, nội dung quiz, `/api/v1/media/**`.
- **Khuyến nghị:** Định nghĩa rõ DTO/route cho xem trước công khai so với học viên đã đăng ký, thực thi kiểm tra đăng ký/thanh toán/xuất bản trong service, và sử dụng cơ chế phân quyền/URL presigned cho media.
- **Mức độ nỗ lực ước tính:** Lớn (L), 5–8 ngày.
- **Phương pháp xác minh:** Bài test API phủ định cho các vai trò ẩn danh, đã đăng nhập chưa mua, đã mua, chủ sở hữu và admin trên từng endpoint nội dung.

## F-007 — OAuth chuyển hướng bearer token và PII qua URL query

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `OAuth2AuthenticationSuccessHandler` các dòng 60–67 thêm access token, refresh token, ID, email, username, name, avatar và roles vào query chuyển hướng; frontend đọc chúng từ `location.search`.
- **Nguyên nhân gốc rễ:** Việc hoàn tất OAuth sử dụng URL làm kênh truyền tải credential.
- **Tác động nghiệp vụ:** Token có thể lưu lại trong lịch sử trình duyệt, xuất hiện trong access log, hệ thống giám sát và Referer header của các bên liên quan.
- **Tác động kỹ thuật:** Việc quay vòng/xử lý sự cố không thể liệt kê hết các bản sao bị rò rỉ.
- **Tác động bảo mật:** Tiết lộ phiên làm việc và PII (thông tin cá nhân).
- **Phạm vi ảnh hưởng:** Tất cả các lượt đăng nhập Google OAuth.
- **Khuyến nghị:** Đổi mã xác thực một lần ngắn hạn ở backend, đặt cookie refresh/session dạng Secure HttpOnly, và chuyển hướng mà không chứa credential/PII trên URL.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 3–5 ngày.
- **Phương pháp xác minh:** URL callback/redirect OAuth chỉ chứa state/code không nhạy cảm; kiểm tra proxy/lịch sử trình duyệt không thấy bearer token.

## F-008 — Lưu trữ token/đăng xuất ở frontend bỏ ngỏ phiên làm việc backend vẫn hoạt động

- **Nguồn gốc:** Xác minh Kiểm thử cũ / Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** Still Open (Tồn đọng)
- **Bằng chứng:** `AuthContext` lưu cả 2 token trong localStorage và `logout()` chỉ xóa các key cục bộ. `authService.logout()` có tồn tại nhưng không bao giờ được gọi từ context/UI. Access token có thời hạn 24 giờ.
- **Nguyên nhân gốc rễ:** Xóa state phía client được coi như hủy phiên phía server.
- **Tác động nghiệp vụ:** Refresh token bị đánh cắp vẫn có thể sử dụng; người dùng đăng xuất không làm kết thúc phiên ở backend.
- **Tác động kỹ thuật:** Vòng đời phiên làm việc không thống nhất giữa trình duyệt và cơ sở dữ liệu.
- **Tác động bảo mật:** Đánh cắp/phát lại phiên làm việc dai dẳng.
- **Phạm vi ảnh hưởng:** Đăng nhập/đăng xuất bằng mật khẩu và OAuth.
- **Khuyến nghị:** Gọi API đăng xuất server, quay vòng refresh token, dùng HttpOnly cookie, rút ngắn thời gian sống của access token, và thu hồi phiên khi đặt lại mật khẩu/có sự cố bảo mật.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 3–5 ngày.
- **Phương pháp xác minh:** Đăng xuất làm vô hiệu hóa refresh token trên server; đặt lại mật khẩu hủy mọi phiên; không còn refresh token trong Web Storage.

## F-009 — Server tin tưởng client tự đánh dấu hoàn thành nội dung học

- **Nguồn gốc:** Kiểm thử Mã nguồn / Mâu thuẫn Tài liệu - Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `ProgressServiceImpl` đặt trực tiếp trạng thái hoàn thành từ request (dòng 79–80); `completeLesson` các dòng 113–126 đánh dấu tất cả các block là hoàn thành. Ngưỡng 85%/80% chỉ tồn tại trong `BlockRenderer`; UI cũng có nút hoàn thành thủ công. Block trắc nghiệm có thể bị đánh dấu hoàn thành thông qua endpoint tiến độ chung.
- **Nguyên nhân gốc rễ:** Quy tắc hoàn thành nghiệp vụ được triển khai ở client thay vì service có thẩm quyền.
- **Tác động nghiệp vụ:** Tiến độ, chứng chỉ/mở khóa và phân tích dữ liệu không đáng tin cậy.
- **Tác động kỹ thuật:** Bất kỳ API client nào cũng có thể vượt qua quy tắc media/quiz.
- **Tác động bảo mật:** Vượt quy tắc phân quyền/tính toàn vẹn nghiệp vụ.
- **Phạm vi ảnh hưởng:** Tiến độ lesson-block, lesson và course.
- **Khuyến nghị:** Xây dựng các endpoint riêng theo sự kiện phía server để xác minh vị trí/thời lượng media và các lượt làm quiz; hạn chế hoàn thành thủ công chỉ cho các loại block được phép; tự động tính toán hoàn thành lesson/course.
- **Mức độ nỗ lực ước tính:** Lớn (L), 5–8 ngày.
- **Phương pháp xác minh:** Request hoàn thành trực tiếp trước khi đạt ngưỡng sẽ thất bại; chỉ các sự kiện được xác minh mới tạo trạng thái hoàn thành trong integration test.

## F-010 — Đăng ký học bỏ qua trạng thái xuất bản, giá cả và thanh toán

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `EnrollmentServiceImpl` các dòng 33–50 chỉ kiểm tra trùng lặp, user và khóa học chưa bị xóa. Nó không kiểm tra `isPublished`, `price`, thanh toán hay vai trò. Module 6 mới chỉ có schema.
- **Nguyên nhân gốc rễ:** Việc đăng ký học được triển khai trước khi có chính sách quyền hạn/thanh toán và bị bỏ ngỏ không điều kiện.
- **Tác động nghiệp vụ:** Các khóa học chưa xuất bản và trả phí có thể được đăng ký miễn phí.
- **Tác động kỹ thuật:** Việc tích hợp thanh toán sau này phải dọn dẹp các quyền không hợp lệ đã tạo trước đó.
- **Tác động bảo mật:** Vượt qua cơ chế phân quyền sở hữu nội dung.
- **Phạm vi ảnh hưởng:** Tất cả lượt đăng ký học và mô hình kinh doanh khóa học trả phí.
- **Khuyến nghị:** Thực thi chính sách đã xuất bản/miễn phí hoặc thanh toán thành công được xác minh theo giao dịch, và làm cho callback thanh toán cấp quyền đăng ký một cách định đẳng (idempotently).
- **Mức độ nỗ lực ước tính:** Lớn (L), 7–12 ngày cùng với Module 6.
- **Phương pháp xác minh:** Thử nghiệm Sandbox E2E chứng minh không thể đăng ký khóa trả phí trước khi IPN được xác minh và chỉ đúng một quyền đăng ký được cấp sau đó.

## F-011 — XP bài trắc nghiệm có thể cày cống vô hạn

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `QuizServiceImpl` dòng 124 cộng 10 XP cho mỗi lượt điểm ≥70. Không có quy tắc làm lần đầu/định đẳng hay sổ cái XP; đáp án thì bị lộ bởi F-002.
- **Nguyên nhân gốc rễ:** Việc cộng thưởng bị gắn chặt vào các lượt làm bài mà không có sổ cái sự kiện/tính duy nhất.
- **Tác động nghiệp vụ:** Người dùng có thể thổi phồng XP/bảng xếp hạng, làm tính năng gamification mất ý nghĩa.
- **Tác động kỹ thuật:** XP không thể kiểm toán hay tính toán lại an toàn; các lượt làm đồng thời có thể mất/cập nhật không nhất quán.
- **Tác động bảo mật:** Lạm dụng tính toàn vẹn nghiệp vụ.
- **Phạm vi ảnh hưởng:** XP người dùng và các huy hiệu/bảng xếp hạng tương lai.
- **Khuyến nghị:** Tạo các giao dịch XP bất biến với event key duy nhất và chỉ trao thưởng một lần theo chính sách rõ ràng.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 3–5 ngày.
- **Phương pháp xác minh:** Các lượt làm đạt liên tiếp/đồng thời chỉ tạo ra một sự kiện XP và số dư nhất định.

## F-012 — Vòng đời tải lên/truy cập/xóa media không an toàn

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** Giới hạn tải lên là 500 MB; không có whitelist MIME/phần mở rộng; `FileStorageServiceImpl` các dòng 48/63 tạo và công khai bucket, dòng 74 trả về URL API localhost hardcode, trong khi xóa dòng 83–89 chỉ nhận định dạng URL MinIO trực tiếp. Bảo mật media là permit-all.
- **Nguyên nhân gốc rễ:** Lưu trữ, phân phối và xóa sử dụng các mô hình URL/truy cập mâu thuẫn không có chính sách mối đe dọa.
- **Tác động nghiệp vụ:** Lạm dụng dung lượng/băng thông, media trả phí bị công khai, ảnh đại diện/thumbnail bị mồ côi, hỏng triển khai.
- **Tác động kỹ thuật:** Việc thay thế không thể xóa cẩn thận các object cũ; request lớn làm tăng áp lực tài nguyên.
- **Tác động bảo mật:** Lưu trữ nội dung công khai không giới hạn và rủi ro phân phối file độc hại.
- **Phạm vi ảnh hưởng:** Media khóa học, ảnh đại diện, thumbnail, bucket MinIO.
- **Khuyến nghị:** Xác thực loại/kích thước/nội dung, giữ bucket riêng tư, lưu trữ object key thay vì URL, phân quyền phân phối/chữ ký tạm (presign), và xóa theo key.
- **Mức độ nỗ lực ước tính:** Lớn (L), 5–8 ngày.
- **Phương pháp xác minh:** Tải lên file độc hại/quá kích thước thất bại; truy cập media trả phí ẩn danh thất bại; thay thế file xóa chính xác object cũ trong MinIO integration test.

## F-013 — Migration sạch làm mất toàn bộ mối quan hệ Kanji–Bộ thủ chính

- **Nguồn gốc:** Mâu thuẫn Tài liệu - Mã nguồn / Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** Still Open (Tồn đọng)
- **Bằng chứng:** V2 chèn các ký tự bộ thủ dạng số sau đó update 1–213 sang dạng chữ đồ họa. Tất cả 3.003 câu lệnh chèn V3 đều truy vấn dạng số `WHERE character = '<mã_số>'`; quét cấu trúc đếm được 3.003 lượt tra cứu số. Không còn mã số nào khớp cho các giá trị tham chiếu đó.
- **Nguyên nhân gốc rễ:** Khóa tra cứu seed dữ liệu bị thay đổi trong một migration đã áp dụng mà không cập nhật các tham chiếu sinh ra trong migration tiếp theo.
- **Tác động nghiệp vụ:** Học tập/chi tiết theo bộ thủ bị thiếu trên mọi cơ sở dữ liệu V1→V7 migration sạch.
- **Tác động kỹ thuật:** `kanji.radical_id` bị null mặc dù dữ liệu gốc có tồn tại; các môi trường bị sai lệch tùy thuộc vào việc sửa thủ công.
- **Tác động bảo mật:** N/A.
- **Phạm vi ảnh hưởng:** Tất cả dữ liệu seed Kanji và các triển khai sạch.
- **Khuyến nghị:** Thêm migration tiến V8+ ánh xạ định danh bộ thủ số sang dạng đồ họa/UUID một cách định đằng; không chỉnh sửa V1–V7.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 2–4 ngày bao gồm xác minh.
- **Phương pháp xác minh:** Migration sạch V1→V8+ khẳng định số lượng non-null đúng như kỳ vọng và xác minh các ánh xạ Kanji/bộ thủ mẫu.

## F-014 — Cơ chế kiểm soát lạm dụng xác thực/phiên làm việc chưa đầy đủ

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** Không tìm thấy bộ giới hạn tần suất (rate limiter) hay khóa tài khoản nào. Quên mật khẩu bắn lỗi "user not found", cho phép dò tài khoản. Refresh token trả lại chính token đó. Đặt lại mật khẩu đổi hash nhưng không xóa refresh token. Access token sống 24 giờ.
- **Nguyên nhân gốc rễ:** Chức năng endpoint được chuyển giao mà không có chính sách kiểm soát lạm dụng và phiên làm việc hợp nhất.
- **Tác động nghiệp vụ:** Tấn công credential stuffing, lạm dụng email, dò tài khoản và token bị đánh cắp sống quá lâu.
- **Tác động kỹ thuật:** Ngữ nghĩa thu hồi khác nhau giữa đăng xuất/đặt lại/vô hiệu hóa.
- **Tác động bảo mật:** Tấn công vét cạn (brute force), dò danh tính và phát lại token.
- **Phạm vi ảnh hưởng:** Đăng nhập, đăng ký, quên/đặt lại mật khẩu, refresh, đăng xuất.
- **Khuyến nghị:** Giới hạn rate limit theo tài khoản/IP, dùng phản hồi/thời gian quên mật khẩu đồng nhất, quay vòng refresh token có phát hiện tái sử dụng, thu hồi khi đặt lại, và rút ngắn thời gian access token.
- **Mức độ nỗ lực ước tính:** Lớn (L), 5–8 ngày.
- **Phương pháp xác minh:** Các bài test lạm dụng/bảo mật xác nhận giới hạn, phản hồi đồng nhất, quay vòng/phát hiện tái sử dụng và thu hồi khi đặt lại mật khẩu.

## F-015 — Audit log không phải là cơ chế kiểm soát trách nhiệm giải trình đáng tin cậy

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Trung bình
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `AuditLogService.log` đánh dấu `@Async` (dòng 28) và đọc `SecurityContextHolder` bên trong worker (dòng 32, 55–56). Không có executor ủy quyền security-context. Mọi exception đều bị nuốt trôi (dòng 50–51). Đăng nhập được ghi nhận như một `INSERT` trên bảng users chứ không phải sự kiện auth.
- **Nguyên nhân gốc rễ:** Sử dụng nỗ lực ghi log bất đồng bộ (best-effort) cho một cơ chế kiểm soát đòi hỏi định danh và đảm bảo chuyển giao.
- **Tác động nghiệp vụ:** Điều tra quản trị có thể thiếu định danh người thực hiện hoặc mất hoàn toàn sự kiện.
- **Tác động kỹ thuật:** Lỗi bị ẩn đi và phân loại gây hiểu lầm.
- **Tác động bảo mật:** Phủ nhận hành vi và làm yếu khả năng điều tra sự cố.
- **Phạm vi ảnh hưởng:** Các thao tác thay đổi của user/admin và vết kiểm toán đăng nhập.
- **Khuyến nghị:** Thu thập metadata người thực hiện/request trước khi đẩy bất đồng bộ, dùng outbox/phân loại sự kiện bền vững, giám sát lỗi và định nghĩa các sự kiện audit bắt buộc.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 3–5 ngày.
- **Phương pháp xác minh:** Integration test khẳng định người thực hiện/IP/loại sự kiện chính xác khi chạy bất đồng bộ và cố tình gây lỗi CSDL sẽ bắn cảnh báo/thử lại quan sát được.

## F-016 — File Lockfile chứa các cảnh báo lỗ hổng bảo mật mức Cao đã biết

- **Nguồn gốc:** Runtime
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `npm audit --json` báo cáo 6 node lỗ hổng mức Cao ở frontend (`axios`, `form-data`, `postcss`, `react-router`, `react-router-dom`, `vite`). Quét script dữ liệu báo cáo 2 (`adm-zip`, `fast-xml-builder`). Đã có bản sửa lỗi.
- **Nguyên nhân gốc rễ:** Không có cổng kiểm tra bảo mật phụ thuộc tự động hoặc chu kỳ cập nhật định kỳ.
- **Tác động nghiệp vụ:** Dễ bị khai thác các lỗ hổng đã biết và chậm trễ nâng cấp khẩn cấp.
- **Tác động kỹ thuật:** Pipeline build/dev/data thừa hưởng các bộ parse/thư viện mạng có lỗ hổng.
- **Tác động bảo mật:** DoS, injection, tiết lộ thông tin hoặc thao túng request tùy theo cảnh báo.
- **Phạm vi ảnh hưởng:** Cây build/runtime frontend và các script sinh seed offline.
- **Khuyến nghị:** Nâng cấp lên các bản đã sửa lỗi, xem xét thay đổi breaking/khả năng áp dụng, sinh lại lockfile, và chặn CI theo các cảnh báo/SBOM đã duyệt.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 2–5 ngày.
- **Phương pháp xác minh:** Quét kiểm tra báo cáo 0 mục High/Critical chưa chấp nhận và các bản build/test không bị lỗi.

## F-017 — Cơ chế dự phòng AI syllabus có thể ghi dữ liệu biến dạng/trùng lặp một phần

- **Nguồn gốc:** Kiểm thử Mã nguồn / Mâu thuẫn Tài liệu - Mã nguồn
- **Mức độ nghiêm trọng:** Medium (Trung bình)
- **Độ tin cậy:** Trung bình
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `generateSyllabusForCourse` có `@Transactional`, parse map thô chưa xác thực và bắt exception nhà cung cấp/parse/lưu trước khi gọi seed cục bộ. Chỉ mô hình được chọn mới được thử. Thất bại sau khi một số entity đã được tạo có thể trộn lẫn dữ liệu AI một phần và seed cục bộ hoặc đánh dấu transaction là rollback-only.
- **Nguyên nhân gốc rễ:** Sinh dữ liệu, xác thực, lưu trữ và dự phòng dùng chung một transaction rộng bị bắt exception.
- **Tác động nghiệp vụ:** Syllabus bị trùng lặp/biến dạng và kết quả giáo viên nhận được không thể đoán trước.
- **Tác động kỹ thuật:** Tính nguyên tố (atomicity) khi thất bại và ngữ nghĩa dự phòng trong tài liệu không rõ ràng.
- **Tác động bảo mật:** Nội dung AI bên ngoài được tin tưởng về mặt cấu trúc (nội dung XSS đã phủ bởi F-004).
- **Phạm vi ảnh hưởng:** Sinh AI syllabus.
- **Khuyến nghị:** Xác thực thành DTO có kiểu trước khi ghi, lưu nguyên tố trong transaction riêng biệt, định nghĩa rõ thứ tự thử lại nhà cung cấp và hiển thị trạng thái thất bại.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 3–5 ngày.
- **Phương pháp xác minh:** Các bài test lỗi biến dạng/lỗi giữa chừng/lỗi nhà cung cấp không để lại dòng dữ liệu dở dang nào và tạo ra đúng một kết quả dự phòng như tài liệu.

## F-018 — Xóa mục sổ tay tùy chỉnh bỏ ngỏ flashcard SRS bị mồ côi

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Medium (Trung bình)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** Tạo mục tùy chỉnh đặt `Flashcard.itemId = savedNotebook.id`, trong khi `UserNotebook.itemId` vẫn null. Xóa dòng 324 tìm kiếm flashcard bằng `item.getItemId()` (null), sau đó chỉ xóa dòng notebook.
- **Nguyên nhân gốc rễ:** Hai mã định danh đại diện cho mục tùy chỉnh một cách không nhất quán.
- **Tác động nghiệp vụ:** Các mục tùy chỉnh đã xóa vẫn tồn tại trong hàng chờ ôn tập với nội dung bị thiếu.
- **Tác động kỹ thuật:** Bản ghi mồ côi và thống kê không nhất quán.
- **Tác động bảo mật:** N/A.
- **Phạm vi ảnh hưởng:** Các mục sổ tay tùy chỉnh / SRS.
- **Khuyến nghị:** Sử dụng một ID mục tùy chỉnh chuẩn và xóa theo notebook ID theo giao dịch; thêm migration/job dọn dẹp dữ liệu.
- **Mức độ nỗ lực ước tính:** Nhỏ (S), 1–2 ngày.
- **Phương pháp xác minh:** Integration test tạo/xóa xác nhận cả 2 dòng biến mất và hàng chờ ôn tập sạch sẽ.

## F-019 — Truy xuất SRS/sổ tay bị lỗi N+1 và phân trang trong bộ nhớ

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Medium (Trung bình)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `NotebookService` dòng 342 tải tất cả flashcard của user; các dòng 351/366 lọc/giới hạn stream; các dòng 381+ dựng `PageImpl`; việc ánh xạ thực hiện tra cứu repository từng thẻ tại các dòng 400–430. Thẻ đến hạn thiếu thứ tự sắp xếp định đằng và dùng ranh giới ngày cục bộ hệ thống.
- **Nguyên nhân gốc rễ:** Khởi tạo domain và chọn hàng chờ triển khai trong vòng lặp ứng dụng thay vì truy vấn/projection của repository.
- **Tác động nghiệp vụ:** Độ lệch/bộ nhớ tăng theo bộ sưu tập của mỗi user; thứ tự hàng chờ không nhất quán.
- **Tác động kỹ thuật:** Truy vấn N+1 và tổng số phân trang sai sau khi limit.
- **Tác động bảo mật:** Nguy cơ cạn kiệt tài nguyên đối với người dùng đã xác thực ở quy mô lớn.
- **Phạm vi ảnh hưởng:** Thư mục, hàng chờ ôn tập, thống kê SRS.
- **Khuyến nghị:** Truy vấn thẻ đến hạn theo user/folder/due/order có phân trang CSDL, project/hydrate theo lô, và dùng múi giờ user/nghiệp vụ rõ ràng.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 3–5 ngày.
- **Phương pháp xác minh:** Kiểm tra đếm SQL/tải trọng cho thấy số lượng truy vấn/bộ nhớ có giới hạn và các trang sắp xếp ổn định cho tập dữ liệu lớn.

## F-020 — Contract xác thực/lỗi API không an toàn và không nhất quán

- **Nguồn gốc:** Kiểm thử Mã nguồn / Mâu thuẫn Tài liệu - Mã nguồn
- **Mức độ nghiêm trọng:** Medium (Trung bình)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** `ResponseEntity<?>` đại diện, map thô và entity trực tiếp xuất hiện phổ biến; đầu vào quiz/progress/raw note thiếu validation; `GlobalExceptionHandler` trả về `RuntimeException.getMessage()` (dòng 101), bao gồm cả văn bản exception nội bộ.
- **Nguyên nhân gốc rễ:** Việc chuyên nghiệp hóa contract API bị hoãn lại và các exception chung mang cả ý nghĩa nội bộ lẫn client.
- **Tác động nghiệp vụ:** Client không ổn định, lỗi mơ hồ và các lỗi 500 có thể tránh được.
- **Tác động kỹ thuật:** Đầu vào quiz null/không hợp lệ gây lỗi runtime; message nội bộ làm rò rỉ chi tiết triển khai.
- **Tác động bảo mật:** Tiết lộ thông tin và ranh giới đầu vào yếu.
- **Phạm vi ảnh hưởng:** Hầu hết các controller, đặc biệt là quiz/notebook/progress/auth.
- **Khuyến nghị:** Đóng gói request/response có kiểu, Bean Validation toàn diện, ánh xạ domain exception với mã công khai an toàn, và không trả về entity thô.
- **Mức độ nỗ lực ước tính:** Lớn (L), 7–12 ngày.
- **Phương pháp xác minh:** Bài test OpenAPI/contract sinh ra phủ các schema và đầu vào phủ định; phản hồi 5xx không chứa văn bản exception nội bộ.

## F-021 — Các trường DTO API được sinh ra bị null ẩn

- **Nguồn gốc:** Runtime / Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Medium (Trung bình)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** Mã MapStruct sinh ra từ bản build thành công không bao giờ gán `CourseResponse.teacherName`, `LessonResponse.courseId`, hoặc `LessonBlockResponse.lessonId`; các interface dùng `unmappedTargetPolicy = IGNORE` mà không có ánh xạ lồng nhau rõ ràng.
- **Nguyên nhân gốc rễ:** Chính sách bỏ qua ẩn giấu các trường API chưa được ánh xạ.
- **Tác động nghiệp vụ:** UI/bên tiêu thụ API nhận được bản ghi không đầy đủ.
- **Tác động kỹ thuật:** Sai lệch contract biên dịch vẫn thành công.
- **Tác động bảo mật:** N/A.
- **Phạm vi ảnh hưởng:** Phản hồi course, lesson và lesson-block.
- **Khuyến nghị:** Thêm ánh xạ lồng nhau rõ ràng, dùng WARN/ERROR cho DTO phản hồi, và test các đầu ra ánh xạ đại diện.
- **Mức độ nỗ lực ước tính:** Nhỏ (S), 1–2 ngày.
- **Phương pháp xác minh:** Bài test mapper khẳng định tất cả ID/tên đã khai báo; build thất bại nếu có target phản hồi mới chưa ánh xạ.

## F-022 — Các luồng quan trọng có rất ít độ bao phủ tự động

- **Nguồn gốc:** Runtime / Xác minh Kiểm thử cũ
- **Mức độ nghiêm trọng:** Medium (Trung bình)
- **Độ tin cậy:** Cao
- **Trạng thái:** Still Open (Tồn đọng)
- **Bằng chứng:** 6 class/14 test vượt qua, nhưng có tới 80 mapping API rõ ràng. Không có test controller/auth/OAuth/upload/quiz/payment/migration PostgreSQL và không có test frontend nào. H2 test tắt Flyway nên không thể xác minh hành vi JSONB/array/enum.
- **Nguyên nhân gốc rễ:** Kiểm thử tập trung vào một vài service được trích xuất hơn là các luồng quan trọng dựa trên rủi ro.
- **Tác động nghiệp vụ:** Các lỗi sụt giảm bảo mật và quyền hạn có thể lọt qua CI xanh.
- **Tác động kỹ thuật:** Tương thích CSDL/API/trình duyệt sản xuất không được xác minh.
- **Tác động bảo mật:** Các trường hợp phủ định phân quyền/phiên làm việc không được kiểm thử.
- **Phạm vi ảnh hưởng:** Toàn bộ sản phẩm và CI.
- **Khuyến nghị:** Thêm integration test PostgreSQL, ma trận bảo mật MockMvc, component/E2E golden flow cho frontend và các cổng độ bao phủ/rủi ro.
- **Mức độ nỗ lực ước tính:** Rất lớn (XL), 10–20 ngày tăng dần.
- **Phương pháp xác minh:** CI thể hiện các test vai trò phủ định, migration V1→mới nhất, vòng đời auth, tải lên, quiz/progress và luồng chuẩn trình duyệt.

## F-023 — Thiếu các cơ chế kiểm soát triển khai sản xuất

- **Nguồn gốc:** Kiểm thử Mã nguồn / Xác minh Kiểm thử cũ
- **Mức độ nghiêm trọng:** High (Cao)
- **Độ tin cậy:** Cao
- **Trạng thái:** Still Open (Tồn đọng)
- **Bằng chứng:** Không có `application-prod.yml`, healthcheck, manifest triển khai, cấu hình giám sát/cảnh báo, sao lưu/phục hồi hay quy trình rollback nào. Swagger mở công khai và runtime cảnh báo nó được bật. Cấu hình base chứa các giá trị dự phòng phát triển và CORS localhost.
- **Nguyên nhân gốc rễ:** Repository nhắm tới vận hành cục bộ/demo, trong khi tài liệu đôi khi thể hiện trạng thái cấp sản xuất.
- **Tác động nghiệp vụ:** Khởi chạy sản xuất không an toàn hoặc thất bại, khả năng phục hồi kém và gián đoạn không được phát hiện.
- **Tác động kỹ thuật:** Hành vi môi trường và SLO vận hành chưa được định nghĩa.
- **Tác động bảo mật:** Dễ bị dò khám phá debug/API và lộ cấu hình mặc định.
- **Phạm vi ảnh hưởng:** Triển khai và vận hành.
- **Khuyến nghị:** Thêm profile prod rõ ràng, cấu hình fail-fast, health/readiness, Swagger riêng tư, khả năng quan sát (observability), diễn tập sao lưu-phục hồi, rollback và runbook triển khai.
- **Mức độ nỗ lực ước tính:** Lớn (L), 7–12 ngày.
- **Phương pháp xác minh:** Triển khai staging vượt qua các buổi diễn tập readiness, secret/config, sao lưu phục hồi, rollback và cảnh báo.

## F-024 — Frontend bỏ qua tầng API nhận biết môi trường

- **Nguồn gốc:** Kiểm thử Mã nguồn / Mâu thuẫn Tài liệu - Mã nguồn
- **Mức độ nghiêm trọng:** Medium (Trung bình)
- **Độ tin cậy:** Cao
- **Trạng thái:** Still Open (Tồn đọng)
- **Bằng chứng:** `SaveToNotebookPopup.jsx` chứa 3 lệnh fetch trực tiếp `http://localhost:8080`; `Login.jsx` hardcode URL backend OAuth; `FileStorageServiceImpl` cũng trả về URL localhost. Axios trung tâm có VITE base nhưng bản thân nó vẫn giữ giá trị dự phòng localhost.
- **Nguyên nhân gốc rễ:** Việc xây dựng endpoint bị trùng lặp thay vì tập trung hóa.
- **Tác động nghiệp vụ:** Các triển khai phi cục bộ bị lỗi cục bộ và bỏ qua xử lý refresh/lỗi.
- **Tác động kỹ thuật:** Hành vi API mâu thuẫn giữa các component.
- **Tác động bảo mật:** Nguy cơ định tuyến sai/nội dung hỗn hợp (mixed-content) dưới HTTPS.
- **Phạm vi ảnh hưởng:** Popup sổ tay, đăng nhập Google, URL media, triển khai.
- **Khuyến nghị:** Định tuyến tất cả các cuộc gọi frontend qua service trung tâm và suy ra origin OAuth/media từ cấu hình môi trường được xác thực.
- **Mức độ nỗ lực ước tính:** Nhỏ (S), 1–2 ngày.
- **Phương pháp xác minh:** Quét mã nguồn không thấy origin backend hardcode; staging dưới origin phi cục bộ hoàn thành mọi luồng.

## F-025 — Tuyên bố tìm kiếm từ điển và triển khai không mở rộng tương ứng

- **Nguồn gốc:** Mâu thuẫn Tài liệu - Mã nguồn / Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Medium (Trung bình)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** Các repository dùng `%query%` LIKE/ILIKE; schema không có `tsvector` hay chỉ mục GIN văn bản cho từ vựng/ngữ pháp. Tìm kiếm toàn cục chạy 3 truy vấn phân trang độc lập. Tài liệu tuyên bố 300K+ và dưới 500 ms mà không có bằng chứng benchmark.
- **Nguyên nhân gốc rễ:** Tài liệu tầm nhìn/hiệu năng được quảng bá trước khi triển khai schema/truy vấn.
- **Tác động nghiệp vụ:** Độ trễ tìm kiếm sẽ suy giảm khi dữ liệu tăng và kỳ vọng sản phẩm gây hiểu lầm.
- **Tác động kỹ thuật:** Quét ký tự đại diện đầu không thể dùng chỉ mục B-tree thông thường.
- **Tác động bảo mật:** N/A.
- **Phạm vi ảnh hưởng:** Tìm kiếm Kanji/từ vựng/ngữ pháp.
- **Khuyến nghị:** Thiết lập mục tiêu dung lượng/độ trễ thực tế, benchmark bằng `EXPLAIN ANALYZE`, sau đó thêm các chỉ mục full-text/trigram chuẩn hóa và các truy vấn xếp hạng phù hợp.
- **Mức độ nỗ lực ước tính:** Trung bình (M), 4–7 ngày.
- **Phương pháp xác minh:** Benchmark có thể tái lập trên dữ liệu mục tiêu đạt p95 đã nêu và query plan sử dụng đúng chỉ mục dự kiến.

## F-026 — Migration dữ liệu seed chứa ký tự không in được

- **Nguồn gốc:** Kiểm thử Mã nguồn
- **Mức độ nghiêm trọng:** Low (Thấp)
- **Độ tin cậy:** Cao
- **Trạng thái:** New (Mới)
- **Bằng chứng:** Quét UTF-8 toàn diện phát hiện U+001D tại V3 các dòng 5 và 958; tất cả các câu lệnh V3–V5 khác đều kết thúc đúng cấu trúc.
- **Nguyên nhân gốc rễ:** Các ký tự điều khiển trong file nguồn không được chuẩn hóa trước khi sinh SQL.
- **Tác động nghiệp vụ:** Các mẹo ghi nhớ (mnemonics) có thể render/tìm kiếm/xuất dữ liệu không chính xác.
- **Tác động kỹ thuật:** Các ký tự ẩn làm phức tạp việc so sánh/debug.
- **Tác động bảo mật:** N/A.
- **Phạm vi ảnh hưởng:** Hai dòng seed Kanji.
- **Khuyến nghị:** Sửa thông qua migration tiến và thêm xác thực bộ sinh dữ liệu từ chối các ký tự điều khiển không cho phép.
- **Mức độ nỗ lực ước tính:** Nhỏ (S), <1 ngày.
- **Phương pháp xác minh:** Quét migration/dữ liệu trả về 0 ký tự điều khiển bị cấm.

## Tóm tắt theo mức độ nghiêm trọng

| Mức độ nghiêm trọng | Số lượng |
| --- | ---: |
| Critical (Nghiêm trọng) | 4 |
| High (Cao) | 13 |
| Medium (Trung bình) | 8 |
| Low (Thấp) | 1 |
| **Tổng cộng** | **26** |

## Tóm tắt theo trạng thái

| Trạng thái | Số lượng |
| --- | ---: |
| New (Mới) | 20 |
| Still Open (Tồn đọng) | 6 |
| Regressed (Tái phát) | 0 |
| **Tổng cộng** | **26** |
