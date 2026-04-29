const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const path = require('path');

async function peek() {
    const apkgPath = path.join(__dirname, '../raw/848_im_Ng_Php_N5-N1.apkg');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki21') || zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());
    
    const res = db.exec('SELECT flds FROM notes LIMIT 10 OFFSET 295');
    res[0].values.forEach((v, i) => { console.log(`--- Note ${296+i} ---`); console.log(v[0].split('\x1f')[0]); });
}

peek().catch(console.error);
