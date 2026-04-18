# 🛠️ OPERATIONS RUNBOOK (OPS GUIDE)
**SakuraLearn Project – System Operations & Maintenance**
**Version:** 1.0 (Consolidated)

This runbook provides step-by-step instructions for environment setup, deployment, and troubleshooting.

---

## 1. Quick Start Setup (The 7-Step Flow)

Follow these steps to set up a production-grade development environment:

1.  **Infrastructure**: Launch all services using Docker.
    ```bash
    docker compose up -d
    ```
2.  **Database Migration**: Flyway automatically handles schema changes on application startup. Ensure your SQL files are in `src/main/resources/db/migration`.
3.  **Configuration**: Use `application.yml` with Spring Profiles (`dev`, `prod`). Use environment variables for secrets.
4.  **Mail Testing**: Access **Mailpit** at `http://localhost:8025` to intercept development emails.
5.  **Object Storage**: Use **MinIO** at `http://localhost:9001` for local S3-compatible file storage.
6.  **Backend Execution**:
    ```bash
    cd sakuralearn-backend
    ./mvnw spring-boot:run
    ```
7.  **Frontend Execution**:
    ```bash
    cd sakuralearn-frontend
    npm install
    npm run dev
    ```

---

## 2. Testing & Verification Guide

### 2.1 Backend Manual Testing (Swagger)
Access Swagger UI at `http://localhost:8080/swagger-ui/index.html`.

**Core Test Scenarios:**
- **Register**: `POST /api/v1/auth/register` (Check Mailpit for activation link).
- **Email Verify**: Click link in Mailpit.
- **Login**: `POST /api/v1/auth/login` (Obtain JWT & Refresh Token).
- **Security Check**: Use the **Authorize** button in Swagger with Bearer JWT to access protected endpoints like `GET /api/v1/users/me`.

---

## 3. CI/CD & GitHub Actions

### 3.1 Workflow Overview
The `backend-ci.yml` workflow automatically triggers on pushes or pull requests to `main` and `develop` branches.
- **Jobs**: Build, Test (using a service container for Postgres).
- **Config**: CI database settings are injected via GitHub Secrets/Variables.

### 3.2 Troubleshooting CI Failures
If CI fails, check logs for:
1.  `Failed to load ApplicationContext`: Check database connection strings.
2.  `FlywayException`: Schema mismatch between code and DB.
3.  `CORS / Unauthorized`: Potential misconfiguration in `SecurityConfig.java`.

---

## 4. Maintenance Commands

| Action | Command |
| :--- | :--- |
| **Start Infra** | `docker compose up -d` |
| **Reset Infra** | `docker compose down -v` (Deletes all data/volumes) |
| **Clear Cache** | `redis-cli flushall` (If using Redis CLI) |
| **Maven Clean** | `./mvnw clean package` |

> [!TIP]
> Always check `docker ps` to ensure all containers (Postgres, Redis, Mailpit, MinIO) are healthy before starting the Backend application.
