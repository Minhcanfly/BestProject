# 🌸 CHIẾN LƯỢC TRIỂN KHAI MODULE 4: KNOWLEDGE BASE PIPELINE

## I. Tầm nhìn & Nguyên tắc cốt lõi
Module 4 không chỉ là một trang tra cứu, mà là một **Hệ thống Quản lý Dữ liệu Học thuật**. Chúng ta sẽ không "nhặt" dữ liệu thủ công mà xây dựng một **Data Pipeline** (Đường ống dữ liệu) chuyên nghiệp.

*   **Data as Code:** Dữ liệu được quản lý, phiên bản hóa (versioning) và có thể tái tạo (reproducible) giống như mã nguồn.
*   **Static over Crawling:** Ưu tiên khai thác Dataset tĩnh (XML/JSON/Anki) thay vì crawl web để đảm bảo tốc độ và độ ổn định.

---

## II. Kiến trúc Dữ liệu (Folder Structure)
Để đạt chuẩn "Senior", dự án sẽ tổ chức dữ liệu như sau:

```text
d:\BestProject\
├── data/
│   ├── raw/                # Dữ liệu gốc tải về (không bao giờ sửa trực tiếp)
│   │   ├── kanjidic2.xml
│   │   ├── jmdict_simplified.json
│   │   ├── kanjivg.zip
│   │   └── grammar_anki.apkg
│   ├── processed/          # Dữ liệu sau khi đã Parse & Clean (chia version)
│   │   └── v1/
│   │       ├── kanji_master.json
│   │       ├── vocab_master.json
│   │       └── grammar_master.json
│   └── scripts/            # Các công cụ "bào" dữ liệu (Python/Nodejs)
│       ├── parse_kanji.py
│       ├── parse_anki_grammar.py
│       └── validator.py
```

---

## III. Chiến lược Khai thác Nguồn (The Big Four)

### 1. Kanji (Xương sống)
*   **Nguồn:** [KanjiDic2](http://www.edrdg.org/kanjidic/kanjidic2.html).
*   **Dữ liệu lấy được:** Onyomi, Kunyomi, Ý nghĩa (English), Số nét, Cấp độ JLPT cũ.
*   **Thứ tự nét:** [KanjiVG](https://kanjivg.tagaini.net/) (Lấy file SVG để làm animation).

### 2. Từ vựng (Huyết mạch)
*   **Nguồn:** [jmdict-simplified](https://github.com/scriptin/jmdict-simplified) (Bản JSON đã tối ưu).
*   **Kỹ thuật Filter:** Kết hợp với **JLPT Word List** để lọc ra đúng các từ thuộc N5-N1 (vì JMdict gốc có 180k+ từ).

### 3. Ngữ pháp & Tiếng Việt (Mỏ vàng)
*   **Nguồn:** [AnkiWeb](https://ankiweb.net/shared/decks/).
*   **Bộ đề xuất:** "848 Điểm Ngữ Pháp N5-N1" (Trí Lữ) & "2k Kanji N5-N1".
*   **Kỹ thuật:** Dùng Python `ankipandas` để "mổ" file `.apkg`, xuất ra JSON để lấy toàn bộ giải thích tiếng Việt và ví dụ chuẩn.

---

## IV. Cấu trúc Database (Sử dụng bảng hiện có)

Chúng ta sẽ sử dụng trực tiếp các bảng đã được định nghĩa trong `V1__Phase_1_MVP_Foundation.sql` để đảm bảo tính tương thích toàn hệ thống (SRS, Review, AI).

### 1. Bảng `kanji`
*   **Dữ liệu đổ vào:** `character`, `jlpt_level`, `meaning_vi`, `meaning_en`, `onyomi`, `kunyomi`, `stroke_count`, `example_sentences` (JSONB).
*   **Liên kết:** Tự động map `radical_id` từ bảng `radicals`.

### 2. Bảng `vocabulary`
*   **Dữ liệu đổ vào:** `word_ja`, `reading`, `jlpt_level`, `meaning_vi`, `meaning_en`, `part_of_speech`, `example_sentences` (JSONB).

### 3. Bảng `grammar_points`
*   **Dữ liệu đổ vào:** `pattern_ja`, `jlpt_level`, `explanation_vi`, `explanation_en`, `example_sentences` (JSONB).
*   `search_vector`: tsvector (Để Search cực nhanh)

---

## V. Quy trình ETL (Extract - Transform - Load)

### Bước 1: Ingestion (Thu thập)
Tải toàn bộ file raw vào `data/raw/`.

### Bước 2: Transformation (Xử lý - Script Python)
*   **Parser:** Đọc XML/JSON gốc.
*   **Mapper:** Ánh xạ nghĩa tiếng Việt từ file Anki sang ID tương ứng của JMdict.
*   **Cleaner:** Loại bỏ các ký tự rác, chuẩn hóa định dạng ví dụ câu.
*   **Validator:** Kiểm tra dữ liệu (thiếu field, sai level).

### Bước 3: Loading (Đổ vào DB)
*   **Cơ chế:** Tạo các file `SQL Seeder` (Insert script) từ JSON.
*   **Tối ưu:** Dùng `INSERT ... ON CONFLICT (character/word_ja) DO UPDATE` để có thể cập nhật dữ liệu mà không gây lỗi duplicate.
*   **Thực thi:** Có thể chạy qua Flyway (V5__) hoặc Import trực tiếp vào Postgres Docker.

---

## VI. Lộ trình thực hiện (Roadmap)

1.  **Tuần 1: Kanji Master**
    *   Tải Kanjidic2 + KanjiVG.
    *   Viết script Parse sang `kanji_master.json`.
    *   Tạo bảng trong DB và import thử.

2.  **Tuần 2: Vocab & Mapping**
    *   Tải jmdict-simplified.
    *   Mổ file Anki để lấy nghĩa tiếng Việt.
    *   Mapping và tạo `vocab_master.json`.

## VI. Trạng thái hiện tại & Chuyển giao (Handover)

### 1. Dữ liệu đã nạp (Baseline N5-N2)
*   **Radicals:** 214 bộ thủ (V5). ✅
*   **Kanji:** 2,230 chữ chuẩn N5-N2 (V6). ✅
*   **Vocabulary:** 22,582 từ vựng cốt lõi (CORE) (V7). ✅

### 2. Cơ chế vận hành
*   Dữ liệu được quản lý qua **Flyway**. Mọi thay đổi về schema hoặc data sau này chỉ cần thêm file `V8`, `V9`...
*   **Persistent Storage:** Dữ liệu lưu trong Docker Volume `postgres_data`.

### 3. Bước tiếp theo cho BE/FE
*   **Backend:** Viết REST API cho `KanjiController` và `VocabController`.
*   **Frontend:** Thiết kế giao diện tra cứu (Search bar) và chi tiết (Detail view) theo phong cách Mazii tối giản.

> [!TIP]
> **Hành động tiếp theo:** Chiều nay bạn có thể bắt đầu code BE/FE ngay trên nền tảng dữ liệu sạch này. Nếu có file `.apkg` ngữ pháp, hãy để vào `data/raw/` để chúng ta xử lý tiếp!
