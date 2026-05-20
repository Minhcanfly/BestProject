# 📔 The 15-Session Golden Playbook: Quy Chuẩn Phát Triển Phần Mềm Chất Lượng Cao

Sổ tay này là bộ quy chuẩn kiến trúc và phát triển phần mềm được áp dụng nhất quán trên toàn bộ dự án **SakuraLearn** (bao gồm Backend Java Spring Boot, Frontend React/Vite, Database PostgreSQL/MinIO, và Hạ tầng Docker).

---

## 🗺️ Quy Trình Phát Triển 3 Phase (Hybrid Lifecycle)

```mermaid
graph TD
    subgraph Phase 1: Waterfall Initiation (Kiến trúc & Thiết kế)
        A[Phân rã WBS & 20% Buffer] --> B[Thiết kế ERD & API Contract]
        B --> C[Lập Security Threat Model]
    end
    subgraph Phase 2: Agile Craftsmanship (Lập trình Chuyên nghiệp)
        C --> D[SOLID & Design Patterns]
        D --> E[Clean Code & Type Safety]
        E --> F[DB Normalization & SQL Tuning]
    end
    subgraph Phase 3: Quality Gate & Operations (Vận hành & Kiểm thử)
        F --> G[SAST / Secrets Scan]
        G --> H[Unit Test Coverage >= 80%]
        H --> I[Release Checklist & Rollback Plan]
    end
```

---

## 📂 Danh Mục Quy Chuẩn (Playbook Packages)

Bộ quy chuẩn này được chia thành 4 phần chuyên biệt để dễ dàng tra cứu và áp dụng:

1.  **[01. Quy Chuẩn Backend (Spring Boot)](file:///d:/BestProject/playbook/01_backend_standards.md)**
    *   Nguyên lý SOLID & GoF Design Patterns (Adapter, Strategy, Factory).
    *   Chuẩn hóa API Contract (`ApiResponse<T>`) & Custom Exception Handling.
    *   Bảo mật (OWASP Top 10, IDOR Prevention, Parameterized Query).
2.  **[02. Quy Chuẩn Frontend (React/Vite)](file:///d:/BestProject/playbook/02_frontend_standards.md)**
    *   Cấu trúc Component (Container/Presenter) & Clean Props.
    *   Quản lý State & API Interaction (Axios Interceptors, Clean Axios Service).
    *   Quản lý CSS/Styling, Error Boundary, và Performance (Lazy Loading).
3.  **[03. Quy Chuẩn Cơ Sở Dữ Liệu (Database)](file:///d:/BestProject/playbook/03_database_standards.md)**
    *   Chuẩn hóa 3NF, Khóa ngoại, và Tối ưu hóa Index.
    *   Phòng chống lỗi N+1 Query & Eager Loading trong Hibernate/JPA.
    *   Cơ chế Soft Delete (`deleted_at`) & Audit Logging.
4.  **[04. Quy Chuẩn Hạ Tầng & Vận Hành (Infra/Ops)](file:///d:/BestProject/playbook/04_infrastructure_ops.md)**
    *   Dockerization (Docker Compose) & Quản lý Biến môi trường (`.env`).
    *   Security Scan (SAST, Secret leaks) & CI/CD.
    *   Quy trình Release & Kịch bản Rollback hệ thống dưới 15 phút.

---

> [!IMPORTANT]
> **Quy tắc vàng cho mọi Developer tham gia dự án:**
> Trước khi tạo Pull Request (PR), hãy tự đối chiếu mã nguồn của mình với từng hạng mục trong 4 bộ quy chuẩn trên. Mọi dòng code vi phạm quy chuẩn sẽ bị từ chối merge lập tức ở bước Code Review.
