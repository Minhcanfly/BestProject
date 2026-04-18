# 🌸 SakuraLearn Backend — Module 1: Authentication & User Management
## Phân tích TOÀN BỘ Logic Backend — Hướng dẫn tường tận

---

## 1. Tổng quan kiến trúc (Architecture Overview)

```mermaid
graph TB
    subgraph "Client Layer"
        FE["Frontend React<br/>(localhost:3000)"]
    end

    subgraph "API Layer"
        AC["AuthController<br/>/api/v1/auth/**"]
        PC["ProfileController<br/>/api/v1/users/**"]
        VC["VerificationController<br/>/api/v1/auth/verify"]
    end

    subgraph "Security Layer"
        SC["SecurityConfig"]
        JF["JwtAuthFilter"]
        UDI["UserDetailsImpl"]
        UDS["UserDetailsServiceImpl"]
        OAuth["OAuth2 (Google)"]
    end

    subgraph "Service Layer"
        AS["AuthServiceImpl"]
        JS["JwtServiceImpl"]
        RTS["RefreshTokenServiceImpl"]
        MS["MailServiceImpl"]
        US["UserServiceImpl"]
        FS["FileStorageServiceImpl"]
    end

    subgraph "Repository Layer"
        UR["UserRepository"]
        RR["RoleRepository"]
        RTR["RefreshTokenRepository"]
        VTR["VerificationTokenRepository"]
        PRTR["PasswordResetTokenRepository"]
    end

    subgraph "Database & Infrastructure"
        PG["PostgreSQL<br/>(port 5433)"]
        RD["Redis<br/>(port 6379)"]
        MP["Mailpit<br/>(SMTP 1025, UI 8025)"]
        MN["MinIO<br/>(S3 API 9000, UI 9001)"]
        KF["Kafka<br/>(port 9092)"]
    end

    FE -->|HTTP Request| AC
    FE -->|HTTP Request| PC
    AC --> AS
    PC --> US
    VC --> AS
    AS --> JS
    AS --> RTS
    AS --> MS
    US --> FS
    AS --> UR
    AS --> RR
    AS --> VTR
    AS --> PRTR
    RTS --> RTR
    RTS --> UR
    UR --> PG
    RR --> PG
    RTR --> PG
    VTR --> PG
    PRTR --> PG
    MS --> MP
    FS --> MN
    JF --> JS
    JF --> UDS
    UDS --> UR
    SC --> JF
    SC --> OAuth
```

> [!IMPORTANT]
> Project tuân theo kiến trúc **Layered Architecture** chuẩn doanh nghiệp:
> `Controller → Service (Interface + Impl) → Repository → Database`

---

## 2. Infrastructure — Docker Compose

Toàn bộ hạ tầng chạy qua `docker-compose.yml`:

| Service | Image | Port | Vai trò |
|---------|-------|------|---------|
| **PostgreSQL** | `postgres:16-alpine` | `5433:5432` | Database chính |
| **Redis** | `redis:7-alpine` | `6379` | Cache (chưa sử dụng trực tiếp trong M1) |
| **Mailpit** | `axllent/mailpit` | `1025` SMTP, `8025` Web | Mail server dev (xem email verification) |
| **MinIO** | `minio/minio` | `9000` API, `9001` UI | Object Storage (avatar upload) |
| **Kafka** | `confluentinc/cp-kafka:7.6.0` | `9092` | Message Queue (chuẩn bị cho modules sau) |

---

## 3. Database Schema — Module 1

### Flyway Migrations

Quản lý bằng **Flyway**:

| Migration | Mô tả |
|-----------|-------|
| V1.0 | Tạo toàn bộ schema, ENUM types, indexes, triggers, seed roles |
| V1.1 | Tạo bảng `refresh_tokens` |
| V1.2 | Tạo bảng `verification_tokens` |
| V1.3 | Tạo bảng `password_reset_tokens` |

### ERD Module 1

```mermaid
erDiagram
    users ||--o{ user_roles : has
    roles ||--o{ user_roles : has
    users ||--o| refresh_tokens : has
    users ||--o| verification_tokens : has
    users ||--o| password_reset_tokens : has

    users {
        UUID id PK
        VARCHAR username UK
        VARCHAR email UK
        VARCHAR password_hash
        VARCHAR full_name
        TEXT avatar_url
        VARCHAR preferred_language
        BOOLEAN is_active
        BOOLEAN email_verified
        BOOLEAN is_deleted
        BIGINT xp
        INT current_streak
        INT longest_streak
        DATE last_activity_date
        TIMESTAMPTZ created_at
        TIMESTAMPTZ updated_at
    }

    roles {
        UUID id PK
        VARCHAR name UK "STUDENT|TEACHER|ADMIN"
    }

    user_roles {
        UUID user_id FK
        UUID role_id FK
    }

    refresh_tokens {
        UUID id PK
        UUID user_id FK
        VARCHAR token UK
        TIMESTAMPTZ expiry_date
    }

    verification_tokens {
        UUID id PK
        VARCHAR token UK
        UUID user_id FK
        TIMESTAMPTZ expiry_date
    }

    password_reset_tokens {
        UUID id PK
        VARCHAR token UK
        UUID user_id FK
        TIMESTAMPTZ expiry_date
    }
```

---

## 4. Entity Layer — Mapping với DB

### 4.1 [User.java]
- Mapping bảng `users`.
- `roles`: ManyToMany với Role (EAGER fetch).
- `isActive`: false cho tới khi verify email.

---

## 5. Security Layer — Bộ não bảo mật

### 5.1 [SecurityConfig.java] — Cấu hình trung tâm
- CSRF: disabled.
- Session: STATELESS.
- endpoint mở: `/api/v1/auth/**`, Swagger docs.
- Mọi endpoint khác: phải authenticated.

### 5.2 Luồng JwtAuthFilter

```mermaid
flowchart TD
    A["HTTP Request đến"] --> B{"Header có<br/>'Authorization: Bearer xxx'?"}
    B -->|Không| F["filterChain.doFilter()<br/>→ Cho qua (nếu public endpoint)"]
    B -->|Có| C["parseJwt() → Tách token"]
    C --> D["jwtService.extractUsername(token)"]
    D --> E{"username != null<br/>AND chưa authenticated?"}
    E -->|Không| F
    E -->|Có| G["userDetailsService.loadUserByUsername(email)"]
    G --> H{"jwtService.validateToken(token, userDetails)?"}
    H -->|Không (expired/invalid)| F
    H -->|Có| I["Tạo UsernamePasswordAuthenticationToken"]
    I --> J["SecurityContextHolder.setAuthentication()"]
    J --> F
```

---

## 6. Service Layer — Logic nghiệp vụ

### 📌 Feature 1: ĐĂNG KÝ (registerUser)

```mermaid
sequenceDiagram
    participant C as Client
    participant AC as AuthController
    participant AS as AuthServiceImpl
    participant UR as UserRepository
    participant RR as RoleRepository
    participant VTR as VerificationTokenRepo
    participant MS as MailService
    participant MP as Mailpit

    C->>AC: POST /api/v1/auth/register
    AC->>AS: registerUser(request)
    AS->>UR: existsByEmail(email)?
    AS->>AS: BCrypt.encode(password)
    AS->>AS: Build User (isActive=FALSE)
    AS->>RR: findByName("STUDENT")
    AS->>UR: save(user)
    AS->>AS: UUID.randomUUID() → verification token
    AS->>VTR: save(VerificationToken, expiry=24h)
    AS->>MS: sendHtmlEmail(email, template, variables)
    MS->>MP: SMTP → Gửi email HTML xác thực
    AC-->>C: 200 {"message": "User registered successfully!"}
```

---

### 📌 Feature 2: XÁC THỰC EMAIL (verifyEmail)

```mermaid
sequenceDiagram
    participant U as User (Click link trong Email)
    participant VC as VerificationController
    participant AS as AuthServiceImpl
    participant VTR as VerificationTokenRepo
    participant UR as UserRepository

    U->>VC: GET /api/v1/auth/verify?token=xxx
    VC->>AS: verifyEmail("xxx")
    AS->>VTR: findByToken("xxx")
    AS->>AS: user.setIsActive(TRUE)
    AS->>AS: user.setEmailVerified(TRUE)
    AS->>UR: save(user)
    AS->>VTR: delete(verificationToken)
    VC-->>U: HTML "Xác thực thành công! ✔"
```

---

### 📌 Feature 3: ĐĂNG NHẬP (authenticateUser)

```mermaid
sequenceDiagram
    participant C as Client
    participant AC as AuthController
    participant AS as AuthServiceImpl
    participant AM as AuthenticationManager
    participant UDS as UserDetailsServiceImpl
    participant JS as JwtService
    participant RTS as RefreshTokenService

    C->>AC: POST /api/v1/auth/login
    AC->>AS: authenticateUser(request)
    AS->>AM: authenticate(email, password)
    AM->>UDS: loadUserByUsername(email)
    AS->>JS: generateToken(userDetails) → JWT
    AS->>RTS: createRefreshToken(userId) → RefreshToken
    AC-->>C: 200 + AuthResponse JSON
```

---

## 7. Tổng kết — Request Flow toàn cảnh

```mermaid
flowchart TB
    subgraph "1. Client gửi Request"
        A["POST /api/v1/auth/login<br/>Body: {email, password}"]
    end

    subgraph "2. Security Filter Chain"
        B["JwtAuthFilter.doFilterInternal()"]
        B1{"Có header Authorization?"}
        B2["Parse JWT → Extract email"]
        B3["Load UserDetails → Validate"]
        B4["Set SecurityContext"]
    end

    subgraph "3. Controller"
        C["AuthController.authenticateUser()"]
    end

    subgraph "4. Service"
        D["AuthServiceImpl.authenticateUser()"]
        D1["AuthenticationManager.authenticate()"]
        D2["JwtService.generateToken()"]
        D3["RefreshTokenService.createRefreshToken()"]
    end

    subgraph "5. Response"
        F["AuthResponse JSON<br/>{token, refreshToken, email, roles}"]
    end

    A --> B
    B --> B1
    B1 --> C
    C --> D
    D --> D1
    D --> D2
    D --> D3
    D --> F
```

---
> Hướng dẫn này được tạo tự động bởi Antigravity để phân tích Module 1.
