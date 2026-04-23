🌸 PHÂN TÍCH SÂU MODULE 4: Knowledge Base (Dictionary) Phiên bản: 1.0 Deep Dive Mục tiêu: Làm rõ toàn bộ logic của kho kiến thức tra cứu – đây là một trong những điểm mạnh nhất của SakuraLearn so với các app JLPT khác.

## 1. Mục tiêu cốt lõi của Module 4

Xây dựng một từ điển JLPT chuyên sâu, dễ tra cứu, dành riêng cho người Việt.

Dữ liệu phải chính xác, đầy đủ và có tổ chức tốt (Kanji, Vocabulary, Grammar).

Cho phép tra cứu độc lập, không phụ thuộc vào Course.

Làm “cầu nối” mạnh mẽ với SRS (Module 5) và Lesson (Module 2 & 3).

Tạo giá trị lâu dài: User có thể tra cứu bất cứ lúc nào trong quá trình học.

## 2. Luồng nghiệp vụ chính (User Journey)

Luồng tra cứu điển hình:

User vào trang Dictionary

Tìm kiếm bằng từ khóa (Kanji, Hiragana, Romaji, nghĩa tiếng Việt, hoặc kết hợp).

Áp dụng filter: JLPT level (N5–N1), Loại nội dung (Kanji / Vocab / Grammar).

Xem danh sách kết quả → click vào item để xem chi tiết.

Trong trang chi tiết:

Kanji: Xem radical, onyomi/kunyomi, số nét, thứ tự nét, ví dụ câu, audio, các từ vựng chứa kanji này, các từ đồng nghĩa với kanji này, cấu tạo bởi các bộ thủ nào. - tạm thời thế này đã

Vocab: Từ, reading, nghĩa (vi + en), loại từ, ví dụ câu, audio.

Grammar: Pattern, giải thích chi tiết bằng tiếng Việt, cấu trúc, ví dụ, các ngữ pháp tương tự.

User có thể:

Nghe audio phát âm.

Thêm vào My Notebook.

Thêm trực tiếp vào SRS (tạo flashcard).

Xem các mục liên quan (Knowledge Graph).

Luồng Teacher/Admin: - phần này cần làm kỹ vì tôi chỉ nghĩ ra cách gõ vào DB

Import dữ liệu ban đầu (KanjiDic, JMdict…). - cần hướng dẫn

Chỉnh sửa / bổ sung nội dung (rất hạn chế, vì dữ liệu nên ổn định). - nội dung này đã được kiểm chứng

Xem thống kê tra cứu phổ biến. - tính sau

## 3. Chức năng chính

Chức năng

Mô tả chi tiết

Độ quan trọng

Global Search

Tìm theo từ khóa, romaji, kanji, nghĩa tiếng Việt

★★★★★

Advanced Filter

JLPT Level, Type (Kanji/Vocab/Grammar), Part of Speech

★★★★

Kanji Detail Page

Character, Radical, Onyomi/Kunyomi, Stroke count, Stroke order animation, Examples, Audio - phải đầy đủ như trên ( tham khảo Mazii, TFlat)

★★★★★

Vocabulary Detail Page

Word, Reading, Meaning (vi/en), POS, Examples, Audio - phải đầy đủ như trên ( tham khảo Mazii, TFlat)

★★★★★

Grammar Detail Page - phải đầy đủ như trên ( tham khảo Mazii, TFlat)

Pattern, Explanation (vi), Structure, Examples

★★★★

Knowledge Graph - phải đầy đủ như trên ( tham khảo Mazii, TFlat)

Liên kết: Kanji → Vocab chứa nó, Vocab → Kanji thành phần

★★★★

Add to Notebook / SRS - chưa làm

Nút nhanh từ trang chi tiết

★★★★★

Audio Playback - chưa làm

Phát âm chuẩn (native hoặc TTS). **Lưu ý: Phải có phát âm cho mọi item.**

★★★★


### B. Các tính năng mở rộng (User Request)
- **Notebook "Facebook style":** Cho phép đặt tên thư mục lưu (Notebook) linh hoạt, phân loại và lưu trữ theo chủ đề giống như cách lưu bài viết trên Facebook. - tôi muốn cái này, người dùng sẽ tự tạo các notebook theo chủ đề mình muốn.
- **Kanji Quick Preview:** Hiển thị số nét và phiên âm của Kanji ngay ở danh sách hiển thị (bên ngoài), không cần đợi click vào chi tiết mới thấy. - tính sau
- **Smart Dictionary UI:** Khi nhấn vào Dictionary, màn hình mặc định trống/sạch. Chỉ hiển thị kết quả sau khi người dùng chọn Level và hạng mục muốn học. - tôi muốn cái này
- **Ghi âm & Chấm điểm (AI):** Chức năng ghi âm giọng đọc của user, chấm điểm phát âm và cho phép tự đặt câu với từ đang học (AI hỗ trợ). - tính sau, tôi nghĩ có thể cho người dùng nói tiếng Việt xong hệ thống dịch ra tiếng Nhật hoặc cho người dùng nói tiếng Nhật và hệ thống dịch ra tiếng Việt. Chấm điểm để sau
- **Worksheet Printing:** Cho phép xuất file (PDF/Image) để In ra giấy luyện viết/luyện tập tay. - tính sau - hay nhưng để sau
- **Handwriting Search:** Tìm kiếm bằng cách vẽ Kanji (giống Google Dịch hoặc Mazii). - tính sau

## 4. Quy tắc & Logic nghiệp vụ quan trọng

Dữ liệu là toàn cục (Global): Kanji, Vocab, Grammar không thuộc về user. Chỉ Notebook và Flashcard thuộc về user. - đúng 

Multi-language Support:

Nghĩa và giải thích ưu tiên tiếng Việt (rất quan trọng với người Việt). - đúng

Hỗ trợ thêm tiếng Anh và tiếng Nhật (cột riêng hoặc JSONB). - làm sau, có thể làm giải nghĩa bằng tiếng Anh hoặc Nhật

Knowledge Graph (điểm mạnh):

1 Kanji → nhiều Vocabulary chứa nó. - nên làm

1 Vocabulary → nhiều Kanji thành phần. - nên làm

Dùng để hiển thị “Từ liên quan”, “Kanji liên quan”. - nên làm

JLPT Level: Mỗi item (Kanji/Vocab/Grammar) đều có mức JLPT rõ ràng để filter và sắp xếp. - nên làm

Search Logic:

Hỗ trợ tìm gần đúng (fuzzy search). - làm sau

Tìm Romaji → chuyển thành Hiragana/Katakana để tra. - làm sau

Tìm nghĩa tiếng Việt. - search từ tiếng Việt thì ra tiếng Nhật, ngược lại search tiếng Nhật thì ra tiếng Việt, ngoài ra có thể tìm kiếm các từ đồng nghĩa của từ đang tìm kiếm.

## 5. Các điểm dễ nhầm lẫn / Quyết định then chốt

Cách lưu dữ liệu đa ngôn ngữ - cách nào tối ưu

Option A: Dùng nhiều cột (meaning_vi, meaning_en, explanation_vi…)

Option B: Dùng JSONB cho trường meaning và examples (khuyến nghị cho tính mở rộng). → Tôi nghiêng về JSONB vì sau này dễ thêm ngôn ngữ mới.

Stroke Order

Nên lưu SVG hoặc dùng thư viện KanjiVG để vẽ animation động (không lưu ảnh tĩnh). - đúng

Audio

Nguồn: Import từ Forvo, Tofugu, hoặc tự ghi âm. - tôi chưa biết

Hoặc dùng TTS chất lượng cao (Google TTS hoặc Azure) cho MVP. - chưa có kinh phí

Import dữ liệu ban đầu

Kanji: KanjiDic2 + KanjiVG - xem có thêm nguồn nào không, tham khảo cách làm các bên khác

Vocab: JMdict (EDRDG) - xem có thêm nguồn nào không, tham khảo cách làm các bên khác

Grammar: Cần tự curate hoặc lấy từ nguồn JLPT uy tín (Tae Kim, Bunpro, JLPT Study…). → Đây là công việc tốn thời gian nhất ở Module 4. - có thể tham khảo cách làm các bên khác, tôi nghĩ là có nguồn sẵn rồi

Add to SRS

Khi user thêm một Vocab vào SRS → hệ thống tự động tạo Flashcard với mặt trước/sau phù hợp (ví dụ: Japanese → Meaning hoặc Meaning → Japanese). - cần nhưng chưa làm

## 6. Edge Cases cần xử lý

User tìm từ không tồn tại → gợi ý từ gần giống hoặc “Không tìm thấy, bạn có muốn thêm vào Notebook không?”. - chưa làm

Một Vocab có nhiều cách viết (Kanji khác nhau) → cần xử lý duplicate tốt. - Tôi cần tìm hiểu thêm

Kanji hiếm không có trong JLPT nhưng user vẫn muốn tra cứu. - tính sau vì mình cũng đi lấy từ nguồn

Audio không tồn tại → fallback về TTS hoặc hiển thị “Đang cập nhật”. - tính sau

Dữ liệu thay đổi (sửa nghĩa) → không được làm ảnh hưởng đến Flashcard đã tạo của user. - cái này khó xảy ra, tính sau

## 7. Gợi ý phù hợp với người Việt học JLPT

Giải thích Grammar và ví dụ phải cực kỳ dễ hiểu bằng tiếng Việt. - nên làm

Thêm “Mẹo nhớ” (mnemonics) cho Kanji và Vocab (rất được người Việt yêu thích). - nên làm

Hiển thị furigana trên tất cả ví dụ câu. - nên ẩn, người nào cần thì bật

Có phần “Thường hay nhầm lẫn” cho Grammar và Vocab (ví dụ: は vs が). - tính sau

Cho phép user đánh dấu “Yêu thích” riêng ngoài Notebook. - hay, để sau

Tích hợp search bằng giọng nói (speech-to-text) ở Phase 2. - tính sau

Giao diện tra cứu nên sạch, font chữ dễ đọc, có Dark mode. - làm sau

## 8. Liên kết với các Module khác

Module 2 & 3: Trong LessonBlock có thể gắn link đến Kanji/Vocab/Grammar cụ thể.

Module 5 (SRS): Nút “Add to SRS” từ Dictionary là nguồn chính tạo Flashcard.

Module 8 (Gamification): Tra cứu nhiều → cộng XP nhỏ, hoặc badge “Dictionary Master”.

Module 7: Admin xem từ nào được tra cứu nhiều nhất để bổ sung nội dung.



Tóm tắt các quyết định quan trọng cho Module 4:

Sử dụng JSONB hay cột riêng cho multi-language? - tôi chưa biết

Stroke order sẽ dùng animation SVG hay ảnh tĩnh? - SVG

Nguồn audio chính thức là gì? (import hay TTS) - TTS (cần hướng dẫn)

Có cho phép user đóng góp / báo lỗi nội dung không? (Phase 2) - tính sau

Search engine sẽ dùng PostgreSQL full-text hay Elasticsearch sau? - hiện tại làm free