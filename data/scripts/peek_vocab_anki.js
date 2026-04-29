const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const path = require('path');

async function peekVocab() {
    const apkgPath = path.join(__dirname, '../raw/T_vng_ting_Nht_tng_hp_N5_N4_N3_N2_N1__cc_ch_.apkg');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki21') || zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());
    
    const first = db.exec('SELECT flds FROM notes LIMIT 5');
    const last = db.exec('SELECT flds FROM notes ORDER BY rowid DESC LIMIT 5');
    
    console.log('--- First 5 ---');
    first[0].values.forEach((v, i) => {
        console.log(`${i+1}: ${v[0].split('\x1f')[1]} - ${v[0].split('\x1f')[0]}`);
    });
    
    console.log('--- Last 5 ---');
    last[0].values.forEach((v, i) => {
        console.log(`${i+1}: ${v[0].split('\x1f')[1]} - ${v[0].split('\x1f')[0]}`);
    });
    
    const count = db.exec('SELECT COUNT(*) FROM notes');
    console.log('Total notes:', count[0].values[0][0]);
}

peekVocab().catch(console.error);
