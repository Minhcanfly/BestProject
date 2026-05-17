# Module 4: Knowledge Base & Notebook

## 1. Bài toán nghiệp vụ
Chuyển đổi dữ liệu từ điển tĩnh (Kanji/Vocab/Grammar) thành dữ liệu học tập cá nhân (Notebook/Flashcard).

## 2. Logic cốt lõi
- **Global Search**: Hỗ trợ tìm kiếm đa nguồn và đặc biệt là **Romaji to Hiragana conversion**.
- **Polymorphic Notebook**: Sử dụng cặp `ItemType` + `itemId` để lưu trữ mọi loại dữ liệu trong cùng một bảng `UserNotebook`.
- **Auto-SRS Sync**: Mỗi khi user lưu một item vào Notebook, hệ thống tự động khởi tạo một Flashcard trong Module 5.

## 3. Điểm nhấn kỹ thuật (Senior Level)
- **Polymorphic Design**: Giúp Module SRS không cần biết nó đang review cái gì (Kanji hay Vocab), chỉ cần quan tâm đến `itemId`.
- **Hydration Strategy**: Logic map ngược từ ID sang Entity gốc dựa trên `ItemType` để trả về đầy đủ thông tin cho Frontend.

## 4. Interview Angle
"Tôi thiết kế Module Notebook theo hướng đa hình (Polymorphic). Điều này không chỉ giúp DB gọn nhẹ mà còn cho phép Module SRS hoạt động độc lập với loại dữ liệu. Ngoài ra, việc hỗ trợ search bằng Romaji là một tính năng UX quan trọng mà tôi đã tối ưu cho người mới bắt đầu học tiếng Nhật."
