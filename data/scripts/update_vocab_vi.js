const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const fs = require('fs');
const path = require('path');

async function updateVocabVietnamese() {
    // Tên file của bạn (với các ký tự đặc biệt được xử lý)
    const apkgPath = path.join(__dirname, '../raw/T_vng_ting_Nht_tng_hp_N5_N4_N3_N2_N1__cc_ch_.apkg');
    const outputPath = path.join(__dirname, '../processed/v1/vocab_vi_update.sql');

    console.log('📦 Đang mở file Từ vựng Anki (9,127 từ)...');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki21') || zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());

    const res = db.exec("SELECT flds FROM notes");
    const notes = res[0].values;
    console.log(`📊 Tìm thấy ${notes.length} từ vựng có nghĩa tiếng Việt.`);

    let sql = '-- Update Vietnamese meanings for Vocabulary\n';
    let count = 0;
    
    notes.forEach(note => {
        const fields = note[0].split('\x1f');
        // Theo kết quả peek: Field [1] là từ Nhật, Field [0] là nghĩa Việt
        const word = fields[1]?.replace(/<[^>]*>/g, '').trim(); 
        const meaningVi = fields[0]?.replace(/'/g, "''").replace(/<[^>]*>/g, '').trim();

        if (word && meaningVi) {
            sql += `UPDATE vocabulary SET meaning_vi = '${meaningVi}' WHERE word_ja = '${word.replace(/'/g, "''")}';\n`;
            count++;
        }
    });

    fs.writeFileSync(outputPath, sql);
    console.log(`✅ Đã tạo xong file SQL cập nhật tiếng Việt cho ${count} từ vựng: ${outputPath}`);
}

updateVocabVietnamese().catch(console.error);
