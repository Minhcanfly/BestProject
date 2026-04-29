# 🌸 PHÂN TÍCH SÂU MODULE 4: KNOWLEDGE BASE (DICTIONARY)

**Phiên bản phân tích:** 1.0 Deep Dive  
**Mục đích:** Xây dựng hệ sinh thái dữ liệu học thuật tiếng Nhật đồ sộ, liên kết chặt chẽ và cá nhân hóa tối đa cho người dùng Việt.

---

## 🎯 1. Mục tiêu cốt lõi của Module 4
Module này không chỉ là một trình tra cứu, mà là trung tâm kiến thức của SakuraLearn:
- **Hệ thống liên kết (Knowledge Graph):** Kết nối chặt chẽ giữa Hán tự (Kanji), Từ vựng (Vocabulary) và Ngữ pháp (Grammar).
- **Trải nghiệm tra cứu:** Tìm kiếm nhanh chóng bằng Tiếng Việt, Tiếng Nhật (Hiragana/Kanji) hoặc Romaji.
- **Cá nhân hóa (Notebook):** Cho phép người dùng tự xây dựng kho tàng từ vựng riêng biệt thông qua hệ thống Sổ tay (My Notebook).
- **Dữ liệu chất lượng:** Tổng hợp từ các nguồn uy tín, được chuẩn hóa theo trình độ JLPT N5-N1.

---

## 🔄 2. Các thành phần chính trong hệ thống

### 🏮 Kanji (Hán tự)
Dữ liệu chi tiết bao gồm:
- **Cơ bản:** Mặt chữ, Bộ thủ (Radical), Cấp độ JLPT.
- **Cách đọc:** Âm Onyomi (âm Hán), Kunyomi (âm Nhật).
- **Chi tiết:** Số nét (Stroke count), Ý nghĩa Tiếng Việt, Ý nghĩa Tiếng Anh.
- **Diễn họa:** Hình ảnh/SVG mô tả thứ tự nét viết (Stroke Order).
- **Mở rộng:** Danh sách các ví dụ và từ vựng chứa chữ Kanji đó.

### 🍱 Vocabulary (Từ vựng)
Dữ liệu chi tiết bao gồm:
- **Cơ bản:** Chữ Nhật (Kanji/Kana), Cách đọc (Reading), Cấp độ JLPT.
- **Nghĩa:** Giải thích bằng Tiếng Việt và Tiếng Anh.
- **Loại từ:** Danh từ, Động từ, Tính từ... (Part of speech).
- **Âm thanh:** Tích hợp Text-To-Speech (TTS) hoặc tệp âm thanh mẫu.
- **Ví dụ:** Các câu mẫu kèm theo Furigana (phiên âm) để dễ học.

### 🎋 Grammar (Ngữ pháp)
Dữ liệu chi tiết bao gồm:
- **Cấu trúc:** Mẫu ngữ pháp chuẩn.
- **Giải thích:** Ý nghĩa và cách dùng bằng Tiếng Việt chi tiết.
- **Ví dụ:** Các câu mẫu thực tế, lưu ý cách chia động từ/tính từ đi kèm.

---

## 📚 3. Hệ thống Sổ tay & Custom Items (My Notebook)

### 📂 Tổ chức Sổ tay
- Hệ thống quản lý theo Thư mục (Folder) giúp người dùng phân loại từ vựng theo chủ đề hoặc cấp độ bài học.
- Giao diện thân thiện (tương tự quản lý folder của Facebook/Google Drive).

### ✍️ Custom Item
- Người dùng có thể tự thêm từ vựng, ngữ pháp không có trong thư viện gốc.
- Hỗ trợ lưu ghi chú cá nhân (Note) cho từng mục từ.

### 🧠 Tích hợp SRS
- Mọi từ vựng được lưu vào Notebook sẽ tự động được hệ thống đưa vào hàng chờ ôn tập (Module 5).

---

## ⚖️ 4. Quy tắc & Kỹ thuật quản lý dữ liệu

### 🔍 Chiến lược Tìm kiếm
- Sử dụng **tsvector** và GIN index trong PostgreSQL để tối ưu hóa tìm kiếm toàn văn bản (Full-text search).
- Hỗ trợ chuyển đổi tự động từ Romaji sang Hiragana để tra cứu thuận tiện.

### 🌍 Đa ngôn ngữ (i18n)
- Dữ liệu nghĩa từ được lưu dưới dạng `JSONB` hoặc các cột riêng biệt (`meaning_vi`, `meaning_en`) để dễ dàng mở rộng và tối ưu hiệu suất truy vấn.

### 🖼️ Xử lý Hình ảnh & Âm thanh
- Sử dụng **MinIO** để lưu trữ và phân phối các tệp media một cách chuyên nghiệp.
- Diễn họa chữ Hán sử dụng định dạng SVG (KanjiVG) để đảm bảo độ sắc nét trên mọi thiết bị.

---

## 💡 5. Quyết định & Logic nghiệp vụ quan trọng

- **Data as Code:** Toàn bộ dữ liệu Master (gần 300,000 bản ghi) được quản lý và cập nhật thông qua Flyway, đảm bảo tính nhất quán trên mọi môi trường.
- **Knowledge Graph Logic:** Khi người dùng xem một chữ Kanji, hệ thống phải truy vấn và hiển thị ngay lập tức top các từ vựng thông dụng chứa Kanji đó.
- **Cơ chế duyệt (Review):** (Phát triển sau) Các "Custom Item" do người dùng thêm vào có thể được Admin duyệt để đưa vào cơ sở dữ liệu chung (Master Data).

---

## 🇻🇳 6. Tối ưu hóa cho người Việt học tiếng Nhật
- **Ưu tiên nghĩa Hán Việt:** Đối với Kanji, nghĩa Hán Việt là yếu tố sống còn giúp người Việt học nhanh hơn.
- **Tham chiếu giáo trình:** Phân loại từ vựng theo các giáo trình quốc dân tại Việt Nam như Minna no Nihongo, Sou Matome, Shinkanzen Master.
- **Mẹo nhớ (Mnemonics):** Tích hợp các câu chuyện chiết tự chữ Hán để tăng hiệu quả ghi nhớ.

---

## ⚠️ 7. Xử lý Edge Cases
- **Từ đồng âm khác nghĩa:** Hiển thị rõ ràng các thẻ từ khác nhau cho cùng một cách đọc.
- **Dữ liệu lớn:** Sử dụng Pagination và Caching (Redis) để đảm bảo tốc độ tải trang dưới 500ms dù dữ liệu tra cứu cực lớn.
- **Lỗi hiển thị:** Xử lý fallback khi một từ thiếu âm thanh hoặc hình ảnh stroke order.

---

## 🔗 8. Liên kết hệ thống
- **Module 2/3**: Cho phép người dùng click tra từ ngay từ trong bài học.
- **Module 5**: Cung cấp dữ liệu đầu vào cho quy trình ôn tập Spaced Repetition.
- **Module 8**: Tặng huy hiệu "Dictionary Master" khi đạt mốc tra cứu hoặc lưu trữ từ vựng nhất định.