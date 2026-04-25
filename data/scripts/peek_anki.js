const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const fs = require('fs');
const path = require('path');

async function peekAnki() {
    const rawDir = path.join(__dirname, '../raw');
    const files = [
        '848_im_Ng_Php_N5-N1.apkg',
        '2136_Kanji_Vit.apkg',
        'Japanese_Core_6000_Vocab__Pitch_Accent.apkg'
    ];

    const SQL = await initSqlJs();

    for (const file of files) {
        const filePath = path.join(rawDir, file);
        if (!fs.existsSync(filePath)) {
            console.log(`❌ Không tìm thấy ${file}`);
            continue;
        }

        console.log(`\n🔍 Đang xem thử file: ${file}`);
        const zip = new AdmZip(filePath);
        const dbEntry = zip.getEntry('collection.anki2');
        if (!dbEntry) continue;

        const db = new SQL.Database(dbEntry.getData());
        const res = db.exec("SELECT flds FROM notes LIMIT 1");
        
        if (res.length > 0) {
            const fields = res[0].values[0][0].split('\x1f');
            console.log('Các trường dữ liệu tìm thấy:');
            fields.forEach((f, i) => {
                console.log(`  Field [${i}]: ${f.substring(0, 100)}${f.length > 100 ? '...' : ''}`);
            });
        }
    }
}

peekAnki().catch(console.error);
