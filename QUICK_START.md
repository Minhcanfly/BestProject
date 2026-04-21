# 🚀 SakuraLearn - Development Toolkit

Dưới đây là các câu lệnh hữu ích để quản lý môi trường phát triển cục bộ của bạn.

## 💾 1. Reset môi trường (Docker)
Sử dụng câu lệnh này khi bạn muốn xóa sạch dữ liệu cũ trong Database, MinIO, Redis và chạy lại từ đầu với Schema mới nhất.

### PowerShell (Windows):
```powershell
docker compose down -v; docker compose up -d
```

### Giải thích:
- `down -v`: Dừng tất cả container và **xóa sạch toàn bộ Volume dữ liệu** (reset DB).
- `up -d`: Khởi chạy lại các dịch vụ ở chế độ chạy ngầm (background).

---

## 🏗️ 2. Build và Chạy Backend
Sử dụng các câu lệnh này sau khi bạn đã thay đổi Code Java hoặc file SQL Migration.

### Build Project (Maven):
```powershell
./mvnw clean compile
```

### Chạy App:
```powershell
./mvnw spring-boot:run
```

---

## 🛠️ 3. Kiểm tra DB (Postgres)
Xem các bảng hiện có và dữ liệu bên trong:
```powershell
docker exec sakuralearn-postgres psql -U admin -d sakuralearn_db -c "\dt"
```

---

## 🔍 4. Xem Log hệ thống
Theo dõi những gì đang xảy ra bên trong Docker (ví dụ: DB bị lỗi start):
```powershell
docker compose logs -f
```
