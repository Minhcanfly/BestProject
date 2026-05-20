# 📔 Quy Chuẩn Phát Triển Frontend (React / Vite)

Tài liệu này định nghĩa cấu trúc, quy tắc viết code và tiêu chuẩn thẩm mỹ cho ứng dụng Client React trong hệ thống **SakuraLearn**.

---

## 1. Cấu Trúc Component & Props Design

### Container / Presenter Pattern (Hoặc Hook / UI Separation)
*   **Logic Isolation:** Tách biệt tối đa phần xử lý dữ liệu (gọi API, quản lý state phức tạp) khỏi phần hiển thị (UI).
    *   Sử dụng Custom Hooks để gom logic nghiệp vụ (ví dụ: `useCourseList.js`).
    *   UI Component chỉ nhận dữ liệu qua `props` và render giao diện.
*   **Props Destructuring:** Luôn giải nén (destructure) props ngay tại tham số của component. Thiết lập giá trị mặc định (default values) khi cần thiết:
    ```javascript
    const CourseCard = ({ course, isActive = false, onSelect }) => {
        // Render UI
    };
    ```
*   **Không dùng Placeholders cẩu thả:** Nếu dữ liệu thật chưa tải xong, sử dụng **Skeleton Screen** thay vì các dòng text thông báo đơn điệu "Loading...".

---

## 2. Tích Hợp API & Axios Interceptors

*   **Axios Instance:** Tạo duy nhất một file cấu hình Axios trung tâm với `baseURL` đọc từ biến môi trường (`import.meta.env.VITE_API_URL`).
*   **Request Interceptor:** Tự động đính kèm Token xác thực vào Header của mọi request:
    ```javascript
    axiosInstance.interceptors.request.use(config => {
        const token = localStorage.getItem('token');
        if (token) {
            config.headers.Authorization = `Bearer ${token}`;
        }
        return config;
    });
    ```
*   **Response Interceptor (Tự động phục hồi lỗi):**
    *   Bắt lỗi `401 Unauthorized` để tự động gọi API Refresh Token hoặc chuyển hướng user về trang đăng nhập.
    *   Chuyển đổi các lỗi hệ thống của backend thành thông báo người dùng thân thiện (Sử dụng Toast Notification).

---

## 3. Quản Lý Styling & Thẩm Mỹ Giao Diện (Aesthetics)

*   **Theme Tokenization (CSS Variables):** Sử dụng CSS Variables để quản lý mã màu, font-size, padding một cách tập trung, phục vụ thiết kế Light/Dark Mode:
    ```css
    :root {
        --color-primary: #e056fd;
        --color-bg-dark: #121212;
        --border-radius-lg: 12px;
    }
    ```
*   **Không viết Inline CSS:** Tránh viết `style={{ color: 'red', padding: '10px' }}` trừ khi thuộc tính đó thay đổi liên tục theo dynamic state. Sử dụng các class CSS hoặc CSS Modules để gom nhóm style.
*   **Micro-Animations & Hover Effects:**
    *   Mọi nút bấm (Button), Thẻ (Card), và Liên kết (Link) tương tác được bắt buộc phải có hiệu ứng chuyển đổi mượt mà (`transition: all 0.3s ease`).
    *   Sử dụng scale nhẹ (`transform: scale(1.02)`) khi hover các thẻ card học tập.

---

## 4. Khả Năng Chống Chịu Lỗi & Tối Ưu Hiệu Năng

*   **Error Boundary (Phòng chống sập trang):**
    *   Bao bọc các phần UI độc lập (ví dụ Widget Từ Vựng, Sidebar, Video Player) bằng `ErrorBoundary` để tránh tình trạng một lỗi nhỏ làm "trắng trang" toàn bộ ứng dụng.
*   **Route Lazy Loading:**
    *   Sử dụng `React.lazy()` phối hợp với `Suspense` để trì hoãn tải các trang lớn (như Dictionary, Quiz, Admin Panel) cho đến khi người dùng thực sự truy cập:
    ```javascript
    const Dictionary = React.lazy(() => import('./pages/Dictionary'));
    ```
*   **Responsive Mobile-First:** Giao diện bắt buộc phải hoạt động mượt mà trên cả Mobile (dưới 768px), Tablet (768px - 1024px) và Desktop (trên 1024px) bằng CSS Media Queries.
