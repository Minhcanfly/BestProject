# 🌸 MODULE 4: Knowledge Base (Dictionary) - Trạng thái & Nhiệm vụ còn lại

## 1. Đánh giá hiện trạng (Đã hoàn thành)
- **Backend**: Chạy tốt với `DictionaryService` và `NotebookService`. Phân chia rõ `Kanji`, `Vocabulary`, `Grammar`. Đã hỗ trợ tự thêm từ vựng (Custom Item).
- **Frontend**: Giao diện `Library.jsx`, `FolderDetail.jsx` và tổ chức "Sổ tay" (`MyNotebook.jsx`) rất gọn gàng. Có Text-To-Speech (TTS) cho phát âm. Chức năng Global Search tìm kiếm tốt (Việt-Nhật tương đối).

## 2. Các mục tiêu chưa đạt / Cần nâng cấp (Remaining Tasks)

### 🔴 Cải thiện tính năng (Must Have)
- [x] **Liên kết Knowledge Graph**: (Đã xong ✅ - Hỗ trợ click tra cứu chéo và hiển thị Hán tự cấu thành chi tiết)
- [x] **Dữ liệu Mẹo nhớ (Mnemonics)**: (Đã xong ✅ - Tích hợp hiển thị trong Sổ tay, Flashcards và Sidebar chi tiết)
- [x] **Cải thiện trang chi tiết (Mazii-style)**: (Đã xong ✅ - Layout 2 cột, phân tích Hán tự động, Ví dụ dạng hội thoại)
- [ ] **Tham chiếu Giáo trình**: (Giai đoạn 3 - Đang chờ dữ liệu)

### 🟡 Tính năng nâng cấp (Phát triển tiếp ở Giai đoạn sau)
- [ ] **Diễn họa thứ tự nét viết (Stroke Animation)**: (Đã có SVG tĩnh, sẽ nâng cấp lên hanzi-writer ở Phase sau)
- [ ] **Tìm kiếm bằng cách vẽ tay (Handwriting Recognition)**: (Giai đoạn 3 - Tích hợp nhận diện chữ Hán qua canvas vẽ tay)
- [ ] **Search Engine (Elasticsearch)**: (Sẽ triển khai khi data > 10.000 records)
- [ ] **Custom Item Review System**: (Giai đoạn 3 - Xây dựng luồng duyệt nội dung cộng đồng)
