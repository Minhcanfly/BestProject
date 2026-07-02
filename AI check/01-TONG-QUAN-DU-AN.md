# 01 — Tổng quan dự án SakuraLearn

## Sản phẩm

- **Đối tượng:** Người Việt học tiếng Nhật (JLPT N5–N1).
- **Ngôn ngữ UI:** Tiếng Việt (chính); nội dung học: Nhật; hỗ trợ En.
- **Vai trò:** `STUDENT`, `TEACHER`, `ADMIN` (RBAC).

## Stack thực tế (khớp `pom.xml` / `package.json`)

| Tầng | Công nghệ |
|------|-----------|
| Frontend | React **19**, Vite 8, React Router 7, Axios, **custom CSS** (không Tailwind), Lucide, @dnd-kit |
| Backend | Java **21**, Spring Boot **4.0.5**, Spring Security, JPA, Flyway, MapStruct, Lombok |
| DB | PostgreSQL **16**, UUID PK, migrations V1–V7 |
| Storage / mail | MinIO (S3), Mailpit (SMTP dev) |
| AI | Spring AI (OpenAI, Gemini); syllabus generator có fallback local |
| Infra local | `docker-compose.yml`: Postgres **5433**, Redis, Kafka, MinIO, Mailpit |
| CI | GitHub Actions: `mvn package`, `npm run build` (chưa gate `mvn test`) |

## Cấu trúc repository

```text
BestProject/
├── sakuralearn-frontend/     # SPA, port 3000
├── sakuralearn-backend/      # REST /api/v1, port 8080
├── data/scripts/             # Node ETL → Flyway seed (raw data gitignored)
├── docs/                     # Spec + backlog (docs/README.md)
├── HienTrang/                # Phase status, stabilization tasks
├── AI đánh giá/              # ← Gói ngữ cảnh cho AI (thư mục này)
├── playbook/                 # Chuẩn code (một phần là target, chưa khớp 100% code)
├── PV/                       # Portfolio — không phải spec deploy
├── docker-compose.yml
├── README.md
└── QUICK_START.md
```

## Chạy local (tóm tắt)

```powershell
docker compose up -d
cd sakuralearn-backend; .\mvnw.cmd spring-boot:run
cd sakuralearn-frontend; npm install; npm run dev
```

- API: `http://localhost:8080/api/v1`
- App: `http://localhost:3000`
- Mailpit: `http://localhost:8025`
- Dev admin (seeder): `admin@sakuralearn.com` / `admin123` — **chỉ local**

## 8 module (product map)

| # | Tên | Mô tả ngắn |
|---|-----|------------|
| M1 | Auth & User | JWT, refresh, email verify, OAuth Google, profile |
| M2 | Course & Lesson | CRUD khóa/bài/block, publish, AI syllabus, MinIO media |
| M3 | Learning & Progress | Learning view, % tiến độ, quiz, resume timestamp |
| M4 | Dictionary & Notebook | Kanji/vocab/grammar, search, sổ tay, folder |
| M5 | SRS | SM-2, flashcard, practice UI, daily limit |
| M6 | Payment & Notification | VNPay, IPN, bell — **planned** |
| M7 | Admin & Analytics | User, audit log, dashboard — **partial** |
| M8 | Gamification | XP, streak, badge — **schema only + XP quiz đơn giản** |

## Điểm nổi bật kỹ thuật (để pitch / review)

1. **SRS SM-2** tách `SrsCalculatorService`, có unit test.
2. **Progress phân cấp:** block → lesson → enrollment + recalc khi đổi cấu trúc khóa.
3. **Dictionary scale:** seed lớn + ETL Anki/JMdict/Kanjidic.
4. **AI syllabus** multi-model fallback.
5. **Audit log** async cho admin.

## Điểm tổng thể (đã audit code)

- **MVP/portfolio:** ~**7.5/10**
- **Production thương mại:** ~**5.5/10** (test, M6, hardening)

Chi tiết: [02-HIEN-TRANG-CODE.md](./02-HIEN-TRANG-CODE.md).
