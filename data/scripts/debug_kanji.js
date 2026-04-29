const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const path = require('path');

async function debug() {
    const zip = new AdmZip('d:/BestProject/data/raw/2136_Kanji_Vit.apkg');
    const dbEntry = zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());
    
    const res = db.exec("SELECT flds FROM notes LIMIT 10");
    res[0].values.forEach((v, i) => {
        const fields = v[0].split('\x1f');
        console.log(`--- Note ${i+1} ---`);
        fields.forEach((f, fi) => console.log(`${fi}: ${f.substring(0, 50)}`));
    });
}

debug().catch(console.error);
