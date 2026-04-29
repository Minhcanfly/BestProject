# 🌸 MODULE 4: Knowledge Base (Dictionary) - Trạng thái & Nhiệm vụ còn lại

## 1. Đánh giá hiện trạng (Đã hoàn thành)
- **Backend**: Chạy tốt với `DictionaryService` và `NotebookService`. Phân chia rõ `Kanji`, `Vocabulary`, `Grammar`. Đã hỗ trợ tự thêm từ vựng (Custom Item).
- **Frontend**: Giao diện `Library.jsx`, `FolderDetail.jsx` và tổ chức "Sổ tay" (`MyNotebook.jsx`) rất gọn gàng. Có Text-To-Speech (TTS) cho phát âm. Chức năng Global Search tìm kiếm tốt (Việt-Nhật tương đối).

## 2. Các mục tiêu chưa đạt / Cần nâng cấp (Remaining Tasks)

### 🔴 Cải thiện tính năng (Must Have)
- **Liên kết Knowledge Graph còn yếu**: Việc click từ Kanji ra các từ vựng chứa Kanji đó làm tốt, nhưng từ Vocab click ngược lại xem chi tiết Kanji cấu thành còn rất sơ sài, thiếu dữ liệu.
- **Dữ liệu Mẹo nhớ (Mnemonics)**: Các trường dữ liệu về mẹo nhớ Kanji/Từ vựng đang để trống hoặc sơ sài. Cần thiết kế giao diện hiển thị mnemonic rõ ràng.
- **Tham chiếu Giáo trình**: Việc phân loại từ vựng theo giáo trình (Minna no Nihongo, Sou Matome) chưa hiển thị rõ ở giao diện (mặc dù specs có nhắc đến).

### 🟡 Tính năng mở rộng (Enhancements)
- **Diễn họa thứ tự nét viết (Stroke Animation)**: Hiện Kanji chỉ là ảnh tĩnh. Cần tích hợp thư viện vẽ SVG (VD: `hanzi-writer` chỉnh sửa cho tiếng Nhật) để tạo độ "wow" cho app.
- **Search Engine**: Công cụ tìm kiếm hiện tại dựa trên PostgreSQL. Khi data lớn, cần chuyển sang tìm kiếm mờ (Fuzzy Search) hoặc dùng Elasticsearch.
- **Custom Item Review**: Cần làm quy trình duyệt (Review) cho các "Custom Item" từ User. Nếu nhiều user cùng thêm 1 từ giống nhau, Admin nên duyệt nó thành Global Master Data.
