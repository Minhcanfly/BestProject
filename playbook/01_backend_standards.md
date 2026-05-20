# 📔 Quy Chuẩn Phát Triển Backend (Java Spring Boot)

Tài liệu này định nghĩa các tiêu chuẩn phát triển mã nguồn backend cho hệ thống **SakuraLearn**, đảm bảo tính mở rộng, hiệu năng và bảo mật cao.

---

## 1. Chuẩn Hóa API Contract (`ApiResponse<T>`)

Mọi Controller tuyệt đối không sử dụng kiểu trả về wildcard `ResponseEntity<?>`. Toàn bộ API response thành công phải được bao bọc (wrap) bởi một đối tượng kiểu định danh cụ thể: `ResponseEntity<ApiResponse<T>>`.

### Cấu trúc Response chuẩn:
```java
public class ApiResponse<T> {
    private boolean success;
    private String message;
    private T data;
    private LocalDateTime timestamp;

    // Constructors / Builders
}
```

*   **API Write (POST/PUT/DELETE):** Trả về `ApiResponse<Void>` với một thông điệp ý nghĩa thay vì trả về body rỗng hoặc text thuần.
*   **API Read (GET):** Trả về `ApiResponse<T>` hoặc `ApiResponse<PageResponse<T>>` nếu có phân trang.

---

## 2. Quản Lý Ngoại Lệ (Exception Handling) & Bảo Mật Lỗi

*   **Không leak thông tin hệ thống:** `GlobalExceptionHandler` tuyệt đối không được trả nguyên vẹn thông điệp của `Exception.getMessage()` hoặc print stacktrace ra client ở môi trường production.
*   **Custom Exceptions:** Tạo các business exceptions kế thừa từ `RuntimeException` cụ thể:
    *   `ResourceNotFoundException` (trả về 404 Not Found)
    *   `BadRequestException` (trả về 400 Bad Request)
    *   `ForbiddenException` (trả về 403 Forbidden)
    *   `UnauthorizedException` (trả về 401 Unauthorized)

### Cú pháp chuẩn hóa validation lỗi đầu vào:
Khi validation lỗi `@Valid`, trả về danh sách chi tiết các trường bị lỗi với định dạng:
```json
{
  "success": false,
  "message": "Validation failed",
  "errors": {
    "email": "Email must be a valid address",
    "password": "Password must be at least 8 characters"
  },
  "timestamp": "2026-05-20T15:00:00Z"
}
```

---

## 3. SOLID & Design Patterns Thực Chiến

### Single Responsibility (SRP) & DTO Decoupling
*   **Không lộ Entity:** Tầng Controller không được nhận trực tiếp hoặc trả trực tiếp Database Entity (`Kanji`, `Vocabulary`, `User`). Phải chuyển đổi qua Request/Response DTO sử dụng MapStruct hoặc Mapper Class.

### Strategy Pattern (Dành cho Logic phân loại)
*   Tránh các câu lệnh `switch-case` lặp đi lặp lại ở nhiều nơi.
*   Ví dụ: Thay vì `switch(itemType)` để đổ dữ liệu chi tiết cho Flashcard ở cả tầng list và detail, hãy sử dụng `ItemHydrator` strategy:
```java
public interface ItemHydrator {
    ItemType supports();
    HydratedItem hydrate(UUID itemId);
}
```

### Factory Pattern (AI & Integrations)
*   Sử dụng Registry + Factory để tự động đăng ký các bean vào map, thay vì dùng `@Qualifier` thủ công.
*   Ví dụ: `ChatModelFactory` quản lý các model OpenAI, Gemini, Grok dựa trên cấu hình runtime của người dùng.

### Adapter Pattern (Third-party integrations)
*   Toàn bộ tích hợp với bên thứ ba (Storage, Payment Gateway, Mail Sender) phải chạy qua Interface trừu tượng để có thể chuyển đổi dễ dàng mà không làm ảnh hưởng đến tầng nghiệp vụ (Service layer).

---

## 4. Bảo Mật Hệ Thống (OWASP & IDOR Prevention)

*   **IDOR Prevention (Kiểm soát truy cập theo hàng):**
    Mọi truy vấn lấy thông tin hoặc thay đổi tài nguyên có quan hệ sở hữu (`NotebookFolder`, `PersonalNote`, `Course`...) bắt buộc phải kiểm tra xem thực thể đó có thuộc quyền sở hữu của User đang đăng nhập hay không:
    ```java
    if (!resource.getUser().getId().equals(currentUser.getId()) && !isAdmin) {
        throw new ForbiddenException("You do not have permission to access this resource");
    }
    ```
*   **SQL Injection Prevention:**
    *   Không viết câu lệnh SQL nối chuỗi trực tiếp (`"SELECT * FROM users WHERE name = " + input`).
    *   Luôn sử dụng **Parameterized Query** thông qua Spring Data JPA, HQL/JPQL với tham số tên điền trước (`:parameterName`), hoặc MyBatis.
*   **Password Hashing:**
    *   Sử dụng BCrypt với độ mạnh (work factor) tối thiểu là 10.
    *   Tuyệt đối không lưu mật khẩu dạng plaintext hoặc dùng mã hóa yếu như MD5, SHA-1.
