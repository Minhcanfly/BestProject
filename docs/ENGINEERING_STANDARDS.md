# 🏗️ ENGINEERING STANDARDS & ARCHITECTURE
**SakuraLearn Project – System Standards**
**Version:** 1.0 (Consolidated)

This document defines the architectural patterns, coding standards, and design philosophies to be followed across the SakuraLearn ecosystem.

---

## 1. Backend Architecture (Spring Boot)

### 1.1 Domain-Driven Layering
All modules must follow the clean Separation of Concerns:

| Layer | Responsibility |
| :--- | :--- |
| `controller` | Handle HTTP requests, DTO mapping, and input validation. |
| `service` | Business logic, transaction management, and inter-module coordination. |
| `repository` | Data access logic (Spring Data JPA). |
| `entity` | JPA Database mappings. |
| `dto` | Data Transfer Objects for Request/Response payloads. |
| `security` | JWT configuration, Auth filters, and Password encoding. |

### 1.2 Database Management (Flyway)
- **Never** use `hibernate.hbm2ddl.auto=update` in production or shared dev environments.
- Use Flyway migrations in `src/main/resources/db/migration`.
- Naming convention: `V[Version]__[Description].sql` (e.g., `V1.1__Add_Lesson_Type.sql`).

### 1.3 Error Handling & Internationalized (i18n)
- Use `@RestControllerAdvice` for global exception handling.
- Store user-facing messages in `messages.properties` and `messages_vi.properties`.
- Consistently return a standardized Error Response object.

---

## 2. Frontend Architecture (React + Vite)

### 2.1 Directory Structure (`/src`)
| Directory | Purpose |
| :--- | :--- |
| `components/` | **Atomic UI fragments**: Reusable buttons, inputs, cards. |
| `contexts/` | **Global State**: `AuthContext` (Auth tracking), etc. |
| `hooks/` | **Reusable Logic**: Custom hooks for business/UI logic. |
| `layouts/` | **Master Templates**: `AuthLayout`, `MainLayout`. |
| `pages/` | **View Components**: Full page implementations. |
| `services/` | **API Communication**: Axios instances and service wrappers. |

### 2.2 API Service Standard
Always use an Axios instance with Interceptors for transparent JWT handling and error catching.

### 2.3 Design Philosophy & Tokens
- **Premium Rich Aesthetics**: Focus on modern looks.
- **Glassmorphism**: Use `backdrop-filter: blur(10px)` and semi-transparent backgrounds for cards.
- **Typography**: Prefer `Outfit` or `Inter`.
- **Micro-animations**: Implement smooth CSS transitions (`0.3s ease`) for hover and state changes.

---

## 3. General Development Standards

### 3.1 Git Workflow
- **Branching**: Use `feature/`, `bugfix/`, or `hotfix/` prefixes.
- **Commits**: Use Conventional Commits (`feat:`, `fix:`, `docs:`, `chore:`).

### 3.2 Security First
- No hardcoded secrets in code or `application.yml`. Use environment variables (`${DB_PASSWORD}`).
- Protect all sensitive APIs with Spring Security and verify tokens.
- Enforce mandatory email verification for all new accounts.

> [!IMPORTANT]
> These standards ensure the project remains scalable, maintainable, and professional. Adherence is mandatory for all contributors.
