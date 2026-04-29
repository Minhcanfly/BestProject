const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const fs = require('fs');
const path = require('path');

async function checkTags() {
    const apkgPath = path.join(__dirname, '../raw/2136_Kanji_Vit.apkg');
    const SQL = await initSqlJs();
    const zip = new AdmZip(apkgPath);
    const data = zip.getEntry('collection.anki2');
    const db = new SQL.Database(data.getData());

    const res = db.exec("SELECT tags FROM notes WHERE tags LIKE '%N1%' OR tags LIKE '%N2%' OR tags LIKE '%N3%' OR tags LIKE '%N4%' OR tags LIKE '%N5%' LIMIT 10");
    
    if (res.length > 0) {
        console.log('Found notes with JLPT tags!');
        res[0].values.forEach((v, idx) => {
            console.log(`Tags: ${v[0]}`);
        });
    } else {
        console.log('No JLPT tags found in notes table.');
    }
}

checkTags().catch(console.error);
