# Mục 2 - Câu Trả Lời Phỏng Vấn Về Dự Án SakuraLearn

Tài liệu này tập trung vào phản hồi về project trong buổi phỏng vấn vị trí Integration/IAM tại Amigo. Cách trả lời nên theo form: **bài toán -> cách em thiết kế -> phần em làm -> lý do kỹ thuật -> bài học**.

---

## 1. Em mô tả tổng quan project em làm?

**Câu trả lời ngắn gọn:**
Dự án của em tên là SakuraLearn, là một nền tảng học tiếng Nhật cho người Việt. Hệ thống gồm các phần chính: quản lý khóa học, bài học, từ điển Kanji/từ vựng/ngữ pháp, sổ tay cá nhân, ôn tập SRS và phần quản trị người dùng. Backend em xây dựng bằng Java Spring Boot, database dùng PostgreSQL, frontend dùng React.

Điểm em tập trung nhiều nhất là backend: thiết kế REST API, authentication bằng JWT, phân quyền RBAC, thiết kế database, xử lý tiến độ học tập và logic ôn tập lặp lại bằng thuật toán SM-2.

**Cách nói tự nhiên hơn:**
> "Nếu nói ngắn gọn, SakuraLearn không chỉ là một web học online CRUD đơn giản. Em thiết kế nó như một hệ thống học tập có vòng lặp khép kín: người dùng học bài, lưu từ vựng vào notebook, và hệ thống tự động tạo flashcard để lên lịch ôn tập. Nhờ vậy project có nhiều bài toán backend thật như authentication, authorization, quan hệ database, transaction, search, pagination và xử lý logic nghiệp vụ."

---

## 2. Kiến trúc hệ thống như thế nào?

**Câu trả lời:**
Em thiết kế project theo hướng modular monolith. Nghĩa là backend vẫn là một ứng dụng Spring Boot duy nhất, nhưng bên trong tách module rõ ràng theo domain như Auth, User, Course, Lesson, Dictionary, Notebook, SRS và Admin.

**Luồng tổng quan là:**
1. Frontend React gọi REST API qua Axios.
2. Backend Spring Boot tiếp nhận request ở controller, validate dữ liệu, gọi service xử lý nghiệp vụ, service làm việc với repository, repository truy vấn PostgreSQL bằng Spring Data JPA.
3. Với các API cần bảo mật, request sẽ đi qua Spring Security filter để kiểm tra JWT trước khi vào controller.

Em chọn modular monolith vì project của em cần sự nhất quán dữ liệu giữa các module, ví dụ Notebook tạo flashcard cho SRS, Course cập nhật tiến độ học tập. Nếu tách microservices quá sớm thì phức tạp hơn về network, transaction và deployment.

---

## 3. Em phụ trách phần gì trong project?

**Câu trả lời:**
Project này em tự thiết kế và xây dựng phần lớn, trong đó em phụ trách chính backend. Các phần em làm gồm:
- Thiết kế database PostgreSQL và migration bằng Flyway.
- Xây dựng REST API bằng Spring Boot.
- Làm authentication với JWT, refresh token, logout, forgot/reset password.
- Phân quyền role-based access control cho admin, teacher, student.
- Xây dựng module course, lesson, lesson block và learning progress.
- Xây dựng dictionary, notebook và SRS review.
- Xử lý exception, validation, response format và một số phần audit log.

**Nếu phỏng vấn hỏi sâu, em có thể nói:**
> "Vì đây là project cá nhân/dự án tốt nghiệp của em nên em được chạm vào khá nhiều lớp của hệ thống, từ database đến API và frontend. Nhưng phần em tự tin nhất để trao đổi sâu là Auth/JWT, thiết kế database, flow REST API và module SRS."

---

## 4. Project có bao nhiêu module?

**Câu trả lời:**
Project có các module chính:
1. **Auth và Identity:** đăng ký, đăng nhập, JWT, refresh token, logout, quên mật khẩu, RBAC.
2. **User/Admin:** quản lý người dùng, role, status.
3. **Course/Lesson:** quản lý khóa học, bài học, lesson block.
4. **Learning Progress:** theo dõi tiến độ học của người dùng.
5. **Dictionary:** tra cứu Kanji, từ vựng, ngữ pháp.
6. **Notebook:** lưu nội dung học tập vào sổ tay cá nhân.
7. **SRS Review:** tạo flashcard và lên lịch ôn tập theo SM-2.
8. **File/Media:** xử lý tải lên và truy cập tài nguyên học tập.

**Em có thể tóm tắt:**
> "Nếu chia theo nghiệp vụ thì có khoảng 7-8 module. Nhưng về backend pattern thì các module đều theo cấu trúc Controller -> Service -> Repository -> Entity/DTO."

---

## 5. Flow request đi như thế nào?

**Câu trả lời:**
Một request thông thường sẽ đi theo flow:
1. Frontend gọi API bằng Axios, kèm access token nếu API cần đăng nhập.
2. Request vào backend và đi qua Spring Security filter.
3. Nếu có JWT, filter validate token, lấy user identity và set vào SecurityContext.
4. Controller nhận request, validate input và gọi service.
5. Service xử lý business logic, kiểm tra quyền nếu cần, sau đó gọi repository.
6. Repository truy vấn PostgreSQL bằng JPA.
7. Service map entity sang DTO response.
8. Controller trả về JSON response cho frontend.

**Ví dụ với API thêm từ vựng vào Notebook:**
> "User bấm lưu từ vựng trên frontend. Frontend gọi API notebook kèm JWT. Backend kiểm tra user đăng nhập, kiểm tra item có tồn tại không, tạo notebook item, sau đó có thể tạo flashcard tương ứng cho SRS. Các thao tác ghi liên quan nên được đặt trong transaction để tránh trường hợp lưu notebook thành công nhưng tạo flashcard thất bại."

---

## 6. Authentication em dùng gì?

**Câu trả lời:**
Em dùng JWT cho authentication. Khi user đăng nhập thành công, backend trả về access token và refresh token. Access token được frontend gửi kèm trong header Authorization cho các request cần bảo mật. Backend validate token để xác định user là ai và có quyền gì.

Refresh token dùng để xin access token mới khi access token hết hạn. Cách này giúp access token có thời gian sống ngắn hơn, giảm rủi ro nếu token bị lộ, nhưng user vẫn không phải đăng nhập lại liên tục.

Trong dự án em cũng có logout, khi logout thì refresh token bị vô hiệu hóa ở phía backend.

---

## 7. Vì sao chọn JWT?

**Câu trả lời:**
Em chọn JWT vì backend REST API của em theo hướng stateless. Sau khi đăng nhập, mỗi request có thể tự mang token, backend không cần lưu session trên server cho từng request. Cách này phù hợp với frontend React SPA và dễ mở rộng hơn khi sau này có mobile app hoặc nhiều client cùng gọi API.

Nhưng em cũng hiểu JWT có nhược điểm: nếu access token bị lộ thì khó revoke ngay lập tức nếu chỉ dùng stateless JWT. Vì vậy em kết hợp access token ngắn hạn với refresh token lưu backend. Khi user logout hoặc bị khóa tài khoản, backend có thể vô hiệu hóa refresh token và kiểm tra trạng thái user.

---

## 8. Em xử lý exception như thế nào?

**Câu trả lời:**
Em xử lý exception theo hướng centralized. Thay vì try-catch ở từng controller, em dùng global exception handler để bắt các lỗi chung và trả về response format thống nhất.

**Ví dụ:**
- Input sai thì trả 400 Bad Request.
- Chưa đăng nhập thì trả 401 Unauthorized.
- Không đủ quyền thì trả 403 Forbidden.
- Không tìm thấy resource thì trả 404 Not Found.
- Lỗi không mong muốn thì trả 500 Internal Server Error.

Ở service, em thường throw custom exception có message rõ ràng, controller không xử lý business error trực tiếp. Cách này giúp code gọn hơn và frontend dễ hiển thị lỗi hơn.

**Nếu muốn nói hay hơn:**
> "Em cố gắng phân biệt lỗi do người dùng, lỗi do quyền truy cập và lỗi hệ thống. Đây là thói quen quan trọng khi làm API cho enterprise, vì frontend, tester và người vận hành cần nhìn status code/log là khoanh vùng được vấn đề."

---

## 9. Pagination, filter, search em làm sao?

**Câu trả lời:**
Với các danh sách như course, user, dictionary, em không trả hết dữ liệu một lần mà dùng pagination. API nhận các tham số như page, size, keyword, sort hoặc filter. Backend dùng Pageable của Spring Data JPA để truy vấn theo trang.

Với search, tùy từng module em dùng query theo keyword. Ví dụ dictionary có thể search theo từ khóa, romaji hoặc nghĩa. Nếu dữ liệu lớn hơn, hướng tối ưu tốt hơn là dùng full-text search của PostgreSQL, GIN index, hoặc Elasticsearch nếu yêu cầu search phức tạp.

Em hiểu mục tiêu của pagination là giảm tải cho database, giảm response size và giúp frontend render nhanh hơn.

---

## 10. Transaction em xử lý ra sao?

**Câu trả lời:**
Em dùng transaction ở service layer cho các use case có nhiều thao tác ghi liên quan với nhau. Ví dụ khi user lưu một item vào notebook và hệ thống tạo flashcard SRS tương ứng, hai thao tác này nên nằm trong cùng một transaction. Nếu bước sau thất bại thì rollback để dữ liệu không bị lệch.

Em thường đặt `@Transactional` ở method service, không đặt ở controller. Vì service là nơi chứa business logic và biết thao tác nào cần đảm bảo atomic.

**Nếu hỏi sau về transaction:**
> "Em hiểu transaction giúp đảm bảo dữ liệu hoặc thành công trọn vẹn, hoặc thất bại trọn vẹn. Điều này quan trọng trong các nghiệp vụ như thanh toán, cập nhật tiến độ, tạo dữ liệu liên quan hoặc tích hợp nhiều bảng."

---

## 11. Vì sao dùng PostgreSQL/MySQL?

**Câu trả lời nếu nói PostgreSQL:**
Em dùng PostgreSQL vì nó ổn định, hỗ trợ quan hệ dữ liệu tốt, có transaction mạnh, index tốt và phù hợp với hệ thống có nhiều bảng liên kết như user, role, course, lesson, notebook, flashcard. Ngoài ra PostgreSQL có các tính năng nâng cao như JSONB và full-text search, hữu ích nếu sau này em cần mở rộng metadata của lesson block hoặc search dictionary.

**Nếu so sánh với MySQL:**
> "MySQL cũng rất phổ biến và dễ dùng. Nhưng với dự án này em chọn PostgreSQL vì em muốn tận dụng khả năng query, index và kiểu dữ liệu nâng cao hơn. Tuy vậy về nền tảng SQL, em có thể làm việc với cả PostgreSQL và MySQL."

---

## 12. Thiết kế database như thế nào?

**Câu trả lời:**
Em thiết kế database theo các nhóm bảng tương ứng với domain.
- **Nhóm identity:** có users, roles và các bảng liên quan token.
- **Nhóm course:** có courses, lessons, lesson_blocks.
- **Nhóm learning:** có enrollment, lesson_progress, block_progress.
- **Nhóm dictionary:** có kanji, vocabulary, grammar.
- **Nhóm notebook và SRS:** có notebook_items, flashcards và review state.

**Em cố gắng thiết kế theo quan hệ rõ ràng:**
- User có nhiều enrollment.
- Course có nhiều lesson.
- Lesson có nhiều lesson block.
- User có nhiều notebook item.
- Notebook item có thể tạo flashcard để ôn tập.

Em dùng primary key để định danh bản ghi, foreign key để giữ toàn vẹn quan hệ, và index cho các cột hay search/filter như user_id, course_id, item_type, due_date.

---

## 13. Có dùng index không?

**Câu trả lời:**
Có. Em dùng index cho các cột thường xuyên nằm trong điều kiện truy vấn, join, filter hoặc sort. Ví dụ:
- `user_id` trong các bảng progress, notebook, flashcard.
- `course_id`, `lesson_id` trong các bảng lesson/progress.
- `due_date` trong flashcard để lấy danh sách thẻ đến hạn ôn tập.
- Keyword/search field nếu search nhiều.

Em hiểu index giúp SELECT nhanh hơn, nhưng không nên tạo quá nhiều vì sẽ làm chậm INSERT/UPDATE và tốn thêm dung lượng. Nên khi tạo index cần dựa vào query thực tế.

---

## 14. N+1 query là gì?

**Câu trả lời:**
N+1 query là vấn đề khi mình lấy một danh sách N bản ghi, sau đó với mỗi bản ghi lại phát sinh thêm một query để lấy dữ liệu liên quan. Kết quả là thay vì 1 query tối ưu, hệ thống có thể chạy 1 + N query, làm chậm API khi data lớn.

Ví dụ trong project của em, nếu lấy danh sách notebook item, mỗi item lại query riêng sang bảng kanji/vocab/grammar để lấy thông tin chi tiết, thì đó có thể là N+1.

Cách xử lý là dùng fetch join, EntityGraph, batch loading bằng `findAllById`, hoặc viết query lấy gom dữ liệu cần thiết theo danh sách id. Em biết đây là lỗi khá dễ gặp khi dùng ORM như JPA.

---

## 15. Quan hệ giữa các bảng trong project?

**Câu trả lời:**
Một số quan hệ chính trong project là:
- **User - Role:** một user có role để phân quyền.
- **Course - Lesson:** một course có nhiều lesson.
- **Lesson - LessonBlock:** một lesson có nhiều block nội dung.
- **User - Enrollment - Course:** user đăng ký học course thông qua enrollment.
- **User - Progress:** user có tiến độ học theo lesson/block.
- **User - NotebookItem:** user lưu nhiều mục vào sổ tay.
- **NotebookItem - Flashcard:** item đã lưu có thể tạo thành flashcard để ôn tập.

Em thiết kế theo hướng các bảng nghiệp vụ có foreign key rõ ràng để đảm bảo dữ liệu không bị mồ côi, và để query theo user/course dễ hơn.

---

## 16. Khó khăn lớn nhất em gặp là gì?

**Câu trả lời hay:**
Khó khăn lớn nhất của em là thiết kế luồng Notebook và SRS sao cho linh hoạt. Vì user có thể lưu nhiều loại nội dung khác nhau như kanji, vocabulary, grammar, nhưng hệ thống SRS lại cần xử lý chung như flashcard.

Ban đầu em có suy nghĩ tạo riêng flashcard cho từng loại nội dung, nhưng như vậy database và logic sẽ bị lặp lại. Sau đó em thiết kế theo hướng có `itemType` và `itemId`, để notebook và flashcard có thể trỏ đến nhiều loại nội dung. Cách này giúp hệ thống mở rộng tốt hơn nếu sau này thêm loại nội dung mới.

Bài học em rút ra là trước khi code nên dành thời gian vẽ luồng dữ liệu và quan hệ database, vì nếu model sai thì sửa về sau sẽ tốn công hơn rất nhiều.

---

## 17. Em debug issue kiểu gì?

**Câu trả lời:**
Khi gặp bug, em thường debug theo các bước:
1. Tái hiện lỗi bằng request cụ thể trên frontend hoặc Postman.
2. Xác định lỗi ở frontend, backend hay database bằng status code và response.
3. Xem log backend để biết request vào endpoint nào, lỗi ở service nào.
4. Nếu liên quan database, em kiểm tra query và dữ liệu trong bảng.
5. Nếu lỗi do authentication, em kiểm tra token, role và SecurityContext.
6. Sau khi sửa, em test lại case lỗi và các case liên quan.

Em không sửa theo cảm tính ngay, mà cố gắng khoanh vùng: request đầu vào là gì, expected là gì, actual là gì, và sai ở lớp nào.

---

## 18. Có bug nào em nhớ nhất?

**Câu trả lời mẫu:**
Một bug em nhớ là liên quan đến authentication/refresh token. Khi access token hết hạn, frontend cần gọi refresh token để lấy token mới. Nếu xử lý không cẩn thận, có thể bị lặp request hoặc user bị logout dù không cần thiết.

Em debug bằng cách xem Network tab trên browser, kiểm tra API nào trả 401, sau đó xem flow interceptor của Axios và log backend. Sau khi hiểu nguyên nhân, em điều chỉnh để khi gặp 401 thì frontend chỉ refresh token một cách có kiểm soát, sau đó retry request cũ.

Bug này giúp em hiểu rõ hơn về stateless authentication, token expiration và việc frontend-backend phải thống nhất contract lỗi.

---

## 19. Em đã optimize gì chưa?

**Câu trả lời:**
Có một số hướng em đã/dự kiến optimize:
- Dùng pagination cho các API danh sách để không trả quá nhiều dữ liệu.
- Dùng index cho các cột hay query như user_id, course_id, due_date.
- Với quan hệ phức tạp, cần tránh N+1 query bằng fetch join, EntityGraph hoặc batch loading.
- Với dictionary search, nếu data lớn có thể dùng full-text search của PostgreSQL thay vì LIKE đơn giản.
- Với tác vụ không cần blocking response như audit log/email, có thể xử lý bất động bộ.

**Nếu muốn nói thật hơn:**
> "Project của em chưa phải hệ thống production có traffic lớn, nên em chưa có số liệu benchmark sâu. Nhưng trong quá trình làm, em có ý thức về các điểm nghẽn như pagination, index, N+1 query và async processing."

---

## 20. Nếu interviewer hỏi: Project này có điểm yếu nào?

**Câu trả lời nên dùng:**
Có. Vì project của em vẫn là project cá nhân/sinh viên, em nghĩ có một số điểm cần cải thiện nếu đưa lên production.

Thứ nhất là test coverage cần dày hơn, đặc biệt cho auth, SRS và progress calculation. Thứ hai là cần review kỹ hơn các endpoint để đảm bảo ownership check, tránh việc user truy cập dữ liệu của user khác. Thứ ba là cần tối ưu search và một số query khi data lớn. Ngoài ra các secret/config production cần đưa vào environment hoặc secret manager.

Em xem đây là những điểm cần nâng cấp tiếp theo, và quan trọng là em nhìn ra rủi ro thay vì chỉ nói project hoàn hảo.

---

## 21. Nếu họ hỏi: Project của em liên quan gì đến Integration/IAM?

**Câu trả lời rất nên học:**
Project của em liên quan trực tiếp đến IAM ở phần authentication và authorization. Em có làm đăng nhập, JWT, refresh token, role-based access control và kiểm tra quyền truy cập API. Nhưng không chỉ là login, em còn học được cách backend xác định "user là ai" và "user được làm gì" trong từng request.

Về Integration, project của em có REST API làm contract giữa frontend và backend, có tích hợp database PostgreSQL, mail service để test email, object storage MinIO cho media, và có định hướng tích hợp AI service. Các phần này giúp em quen với tư duy hệ thống: mỗi thành phần có contract, có lỗi riêng, và khi debug phải trace request qua nhiều lớp.

Vì vậy em thấy vị trí Integration/IAM phù hợp với nền tảng em đang có: Java, REST API, database, authentication và khả năng đọc log/debug.

---

## 22. Câu trả lời 5 phút khi được yêu cầu trình bày project

**Script luyện nói:**
"Dự án chính của em là SakuraLearn, một nền tảng học tiếng Nhật cho người Việt. Mục tiêu của project là không chỉ cho người dùng xem bài học, mà còn giúp họ lưu kiến thức và ôn tập lại đúng thời điểm.

Về kiến trúc, em xây dựng backend bằng Java Spring Boot theo hướng modular monolith. Bên trong em tách các module như Auth, User, Course, Lesson, Dictionary, Notebook và SRS. Frontend React gọi REST API, backend xử lý qua Controller, Service, Repository và lưu dữ liệu vào PostgreSQL.

Phần em đầu tư nhiều là authentication và luồng học tập. Authentication dùng JWT access token kết hợp refresh token. Sau khi user đăng nhập, frontend gửi token trong header, backend validate token bằng Spring Security và set user vào SecurityContext. Em cũng có phần role-based access control để phân quyền admin, teacher và student.

Về nghiệp vụ học tập, user có thể học course, xem lesson block, lưu từ vựng hoặc kanji vào notebook. Từ notebook, hệ thống tạo flashcard và lên lịch ôn tập bằng logic SRS. Điểm khó ở đây là cùng một hệ thống notebook/SRS phải xử lý nhiều loại nội dung khác nhau, nên em thiết kế theo hướng itemType và itemId để linh hoạt hơn.

Về database, em thiết kế các bảng có quan hệ rõ ràng: user, role, course, lesson, lesson_block, progress, dictionary, notebook_item và flashcard. Em dùng foreign key để đảm bảo toàn vẹn dữ liệu, pagination cho danh sách, và index cho các cột hay truy vấn như user_id, course_id, due_date.

Khó khăn lớn nhất của em là giữ dữ liệu nhất quán giữa các module, vì một hành động của user có thể ảnh hưởng đến nhiều bảng. Ví dụ lưu item vào notebook và tạo flashcard nên nằm trong transaction. Qua project này em học được cách thiết kế API, xử lý security, debug lỗi theo flow request và suy nghĩ về rủi ro production như N+1 query, ownership check và logging.

Em nghĩ project này phù hợp với vị trí Integration/IAM vì em đã có nền tảng Java, REST API, database, JWT, RBAC và tư duy trace request qua nhiều lớp hệ thống."

---

## 23. Câu chốt khi bị hỏi sâu nhưng không biết

**Mẫu trả lời:**
> "Phần này em chưa làm sâu trong project, nên em không muốn trả lời quá chắc. Nhưng theo cách em hiểu, vấn đề nằm ở ... Nếu gặp trong thực tế, em sẽ đọc log, xem request/response, kiểm tra database và tài liệu của công nghệ đó để khoanh vùng trước. Em có nền tảng Java, REST API và database nên em tin có thể học và bắt nhịp được."

---

## 24. Những câu nên tránh

**Không nên nói:**
- "Em làm full hết" nhưng không nói được flow.
- "Em dùng JWT vì trên mạng ai cũng dùng."
- "Database em để JPA tự tạo."
- "Em không gặp bug nào."
- "Em chưa optimize gì và cũng không biết cần optimize gì."

**Nên nói:**
- "Phần em tự tin nhất là Auth, REST API, database và SRS."
- "Em chọn cách này vì..."
- "Điểm này project em còn có thể cải thiện..."
- "Em chưa làm sâu, nhưng em hiểu concept và hướng tìm hiểu là..."
