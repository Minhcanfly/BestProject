# 💾 Dữ liệu & Migration — Công việc còn lại

> **Đối chiếu:** `development_guidelines.md` + Flyway V1–V7 + ETL `data/scripts/`.  
> **Phát hiện mới (2026-05-23):** Lỗi liên kết `kanji.radical_id` sau V2 UPDATE radicals.

## 1. Đánh giá hiện trạng

| Hạng mục | Trạng thái |
|----------|------------|
| Flyway V1 schema | ✅ ~634 dòng, 8 module tables |
| Seed V2 radicals | ✅ INSERT số Kangxi → UPDATE glyph |
| Seed V3 kanji | ⚠️ `radical_id` lookup `WHERE character = '7'` — **sai sau V2** |
| Seed V4 vocab, V5 grammar | ✅ Chạy được |
| V6 reviews, V7 srs_daily_limit | ✅ Có trong repo; README chưa liệt kê |
| ETL scripts | ✅ 20+ file; `data/raw` gitignored |
| `database/init_schema_v1.sql` | 🟡 Duplicate V1 — rủi ro drift |

## 2. Công việc 🔴 P0 (Must fix)

- [ ] **Sửa radical FK trong seed Kanji:**
  - Cách A: Sửa `data/scripts/consolidate_kanji.js` dùng glyph sau UPDATE (hoặc `radicals.id` cố định).
  - Cách B: Migration `V8__Fix_Kanji_Radical_Links.sql` UPDATE `radical_id` theo map đúng.
  - **Verify:** Sau `docker compose down -v && up`, query mẫu `SELECT k.character, r.character FROM kanji k LEFT JOIN radicals r ON k.radical_id = r.id LIMIT 20` — không NULL hàng loạt.
- [ ] **Không sửa file V2–V5 đã migrate** trên DB production — chỉ forward migration (theo `development_guidelines.md`).
- [ ] **Flyway clean migrate test:** Script hoặc checklist chạy V1→V7 trên Postgres trống (local + CI).

## 3. Công việc 🟡 P1 (Chất lượng dữ liệu)

- [ ] **meaning_vi rỗng** cho nhiều hàng `BEYOND` — bổ sung từ nguồn hoặc gắn nhãn rõ trong UI.
- [ ] **GIN index** cho `vocabulary.word_ja`, `meaning_vi` (full-text) — migration V9.
- [ ] Đồng bộ `database/init_schema_v1.sql` với V1 hoặc ghi chú "deprecated, use Flyway only".
- [ ] `.env.example` cho ETL: liệt kê file raw cần tải (Anki, JMdict, kanjidic2).

## 4. Công việc 🟢 P2 (Pipeline)

- [ ] CI job tùy chọn: validate SQL syntax / Flyway trên ephemeral Postgres (không commit seed regen mỗi PR).
- [ ] Document quy trình regen V3–V5 trong `data/scripts/README.md` (file mới).
- [ ] Elasticsearch — **chỉ** khi PostgreSQL search > SLA; ghi trong `MODULE_4_REMAINING_TASKS.md`.

## 5. Liên kết module

- Module 4 UI "Hán tự cấu thành" phụ thuộc radical link đúng → ưu tiên trước stroke animation / ES.
