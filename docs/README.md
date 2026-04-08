# SakuraLearn Documentation (BA & System Design)

Welcome to the documentation folder for SakuraLearn. 
Bên dưới là các tài liệu thiết kế và yêu cầu phần mềm song ngữ (EN/JP) dành cho dự án CMS học tiếng Nhật.

## System Architecture Overview
Dự án sử dụng kiến trúc Backend-heavy:
- **Backend:** Spring Boot 3.4, Java 21, Spring Security 6 (JWT), Redis, PostgreSQL, Kafka, WebSocket
- **Frontend:** React 18, Vite, Typecript
- **Infrastructure:** Docker, NGINX

## Quick Links
- [SRS (Software Requirements Specification)](SRS.md)
- [API Spec (TBD)](#)

## Core ERD (Draft)

```mermaid
erDiagram
    USERS ||--o{ ENROLLMENT_PROGRESS : has
    USERS ||--o{ PAYMENTS : makes
    USERS }o--o{ ROLES : assigned_to

    ROLES {
        int id PK
        string name "ROLE_STUDENT, ROLE_TEACHER, ROLE_ADMIN"
    }

    USERS {
        uuid id PK
        string email
        string password_hash
        string full_name
        string avatar_url
    }

    COURSES ||--o{ LESSONS : contains
    COURSES ||--o{ ENROLLMENT_PROGRESS : tracks
    COURSES ||--o{ PAYMENTS : is_paid_for

    COURSES {
        uuid id PK
        string title
        text description
        decimal price
        uuid teacher_id FK
    }

    LESSONS ||--o{ QUIZZES : has

    LESSONS {
        uuid id PK
        uuid course_id FK
        string title
        text content
        int order_index
    }

    QUIZZES {
        uuid id PK
        uuid lesson_id FK
        text question
        json options
        string correct_answer
    }
```
