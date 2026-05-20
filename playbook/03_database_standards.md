# 📔 Quy Chuẩn Cơ Sở Dữ Liệu (PostgreSQL / ORM)

Tài liệu này định nghĩa cấu trúc thiết kế cơ sở dữ liệu và các quy tắc viết câu lệnh truy vấn tối ưu cho dự án **SakuraLearn**.

---

## 1. Thiết Kế Schema & Ràng Buộc Toàn Vẹn

*   **Chuẩn Hóa 3NF (Third Normal Form):** Đảm bảo cơ sở dữ liệu đạt chuẩn 3NF để loại bỏ dư thừa dữ liệu. Các ngoại lệ (denormalization) để tối ưu hiệu năng đọc chỉ được áp dụng khi có sự đồng ý của Tech Lead.
*   **Quy Tắc Đặt Tên:**
    *   Tên bảng và tên cột phải viết thường, ngăn cách bằng dấu gạch dưới (snake_case).
    *   Tên bảng ở dạng số nhiều (ví dụ: `users`, `courses`, `lessons`).
*   **Khóa Chính & Khóa Ngoại:**
    *   Sử dụng kiểu dữ liệu `UUID` cho các khóa chính (để đảm bảo khả năng phân tán dữ liệu và bảo mật ID khỏi các cuộc tấn công đoán mò tuần tự).
    *   Tất cả các mối quan hệ phải được ràng buộc bằng Khóa ngoại (Foreign Key) ở mức Database. Ràng buộc `ON DELETE` phải được định nghĩa rõ ràng (`RESTRICT` cho các dữ liệu quan trọng như đơn hàng, `CASCADE` cho các dữ liệu phụ thuộc như khối bài học của khóa học).

---

## 2. Thiết Kế Chỉ Mục (Indexing)

*   **Khi nào cần tạo Index:**
    *   Cột làm khóa ngoại dùng để `JOIN` bảng.
    *   Cột thường xuyên nằm trong mệnh đề `WHERE` của truy vấn đọc (ví dụ: `email`, `jlpt_level`, `is_published`).
    *   Cột dùng để sắp xếp kết quả trong `ORDER BY`.
*   **Không lạm dụng Index:** Mỗi index tăng tốc độ đọc nhưng làm giảm đáng kể tốc độ ghi (`INSERT`, `UPDATE`, `DELETE`) do DB phải tính toán lại sơ đồ index.
*   **Composite Index:** Khi tạo index trên nhiều cột, hãy xếp cột có độ chọn lọc cao nhất (cardinality) lên trước.

---

## 3. Phòng Chống Lỗi SQL N+1 Trong Spring Data JPA

Lỗi N+1 xảy ra khi ứng dụng tải một danh sách gồm N thực thể, sau đó chạy thêm N câu truy vấn con để lấy thông tin liên quan của từng thực thể đó.

### Nguyên tắc phòng chống:
*   **Luôn dùng Lazy Loading:** Đặt thuộc tính `fetch = FetchType.LAZY` cho tất cả các mối quan hệ `@OneToMany`, `@ManyToMany` và `@ManyToOne`.
*   **Sử dụng `JOIN FETCH` trong HQL/JPQL:**
    Khi cần lấy thực thể kèm theo quan hệ của nó, sử dụng từ khóa `JOIN FETCH` để gom thành 1 câu SELECT duy nhất:
    ```java
    @Query("SELECT c FROM Course c LEFT JOIN FETCH c.lessons WHERE c.isDeleted = false")
    List<Course> findAllWithLessons();
    ```
*   **Sử dụng `@EntityGraph`:** Khai báo đồ thị thực thể trực tiếp trên method của JPA Repository để Spring tự động tạo Eager Join khi cần.
*   **Không gọi Repository/DB trong vòng lặp:** Luôn gom các ID lại và sử dụng truy vấn dạng `IN` (ví dụ: `findByIdIn(List<UUID> ids)`).

---

## 4. Quy Chuẩn Xóa Mềm (Soft Delete) & Auditing

*   **Cơ Chế Xóa Mềm (Soft Delete):**
    Các thực thể nghiệp vụ quan trọng (`User`, `Course`, `NotebookFolder`) không được phép dùng lệnh SQL `DELETE` vật lý. Phải sử dụng cột `is_deleted` (boolean) hoặc `deleted_at` (timestamp).
    *   Tích hợp trong JPA:
        ```java
        @SQLDelete(sql = "UPDATE courses SET is_deleted = true WHERE id = ?")
        @Where(clause = "is_deleted = false")
        ```
*   **Tự Động Auditing (Audit Logging):**
    Mọi bảng cơ sở dữ liệu bắt buộc phải có các trường audit sau:
    *   `created_at`: Thời điểm tạo thực thể.
    *   `updated_at`: Thời điểm cập nhật thực thể gần nhất.
    *   `created_by` / `updated_by`: ID của User thực hiện hành động.
    *   Sử dụng cơ chế `@CreatedDate`, `@LastModifiedDate`, `@CreatedBy`, `@LastModifiedBy` của Spring Security Auditing để tự động cập nhật dữ liệu này.
