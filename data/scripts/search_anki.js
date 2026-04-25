const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const fs = require('fs');
const path = require('path');

async function searchWord() {
    const apkgPath = path.join(__dirname, '../raw/T_vng_ting_Nht_tng_hp_N5_N4_N3_N2_N1__cc_ch_.apkg');
    const SQL = await initSqlJs();
    const zip = new AdmZip(apkgPath);
    const data = zip.getEntry('collection.anki21') || zip.getEntry('collection.anki2');
    const db = new SQL.Database(data.getData());

    // Tìm kiếm một từ phổ thông N5
    const res = db.exec("SELECT flds, tags FROM notes WHERE flds LIKE '%先生%' LIMIT 10");
    
    if (res.length > 0) {
        res[0].values.forEach((v, idx) => {
            console.log(`\n--- Note ${idx + 1} ---`);
            console.log('Fields:', v[0].split('\x1f'));
            console.log('Tags:', v[1]);
        });
    } else {
        console.log('Không tìm thấy từ 先生');
    }
}

searchWord().catch(console.error);
