const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const fs = require('fs');
const path = require('path');

async function updateKanjiVietnamese() {
    const apkgPath = path.join(__dirname, '../raw/2136_Kanji_Vit.apkg');
    const outputPath = path.join(__dirname, '../processed/v1/kanji_vi_update.sql');

    console.log('📦 Đang mở file Kanji Anki...');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());

    const res = db.exec("SELECT flds FROM notes");
    const notes = res[0].values;
    console.log(`📊 Tìm thấy ${notes.length} chữ Kanji có nghĩa tiếng Việt.`);

    let sql = '-- Update Vietnamese meanings for Kanji\n';
    
    notes.forEach(note => {
        const fields = note[0].split('\x1f');
        const kanji = fields[3]; // Chữ Kanji
        const hanViet = fields[0]?.replace(/'/g, "''"); // Âm Hán Việt
        const meaningVi = fields[4]?.replace(/'/g, "''").replace(/<[^>]*>/g, ''); // Nghĩa tiếng Việt (loại bỏ HTML)

        if (kanji && kanji.length === 1) {
            sql += `UPDATE kanji SET meaning_vi = '${hanViet}: ${meaningVi}' WHERE character = '${kanji}';\n`;
        }
    });

    fs.writeFileSync(outputPath, sql);
    console.log(`✅ Đã tạo xong file SQL cập nhật tiếng Việt: ${outputPath}`);
}

updateKanjiVietnamese().catch(console.error);
