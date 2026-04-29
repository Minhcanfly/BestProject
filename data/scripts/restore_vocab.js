const fs = require('fs');
const path = require('path');
const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');

async function restoreVocab() {
    const rawPath = path.join(__dirname, '../raw/jmdict-eng-3.6.2.json');
    const apkgPath = path.join(__dirname, '../raw/T_vng_ting_Nht_tng_hp_N5_N4_N3_N2_N1__cc_ch_.apkg');
    const outputPath = path.join(__dirname, '../../sakuralearn-backend/src/main/resources/db/migration/V4__Seed_Vocab_Master.sql');

    console.log('📦 Loading Vietnamese data from Anki...');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki21') || zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());
    const ankiRes = db.exec("SELECT flds FROM notes");
    const viMap = new Map();
    ankiRes[0].values.forEach(v => {
        const fields = v[0].split('\x1f');
        let rawWord = fields[1] || '';
        const meaningVi = fields[0]?.replace(/'/g, "''").replace(/<[^>]*>/g, '').trim();
        if (rawWord && meaningVi) {
            const cleanWord = rawWord.replace(/\[(.*?)\[(.*?)\]\]/g, '$1').replace(/\[(.*?)\]/g, '$1').replace(/<[^>]*>/g, '').trim();
            cleanWord.split(/[／/・]/).forEach(v => { if(v.trim()) viMap.set(v.trim(), meaningVi); });
        }
    });

    console.log('📖 Reading JMDict JSON...');
    const data = JSON.parse(fs.readFileSync(rawPath, 'utf-8'));
    const allWords = data.words.filter(entry => entry.kana.some(k => k.common) || entry.kanji.some(k => k.common));

    let sql = '-- Seed data for Vocabulary Master (Restored & Rebalanced)\nDELETE FROM vocabulary;\n\n';
    let count = 0;

    for (let entry of allWords) {
        const wordJa = entry.kanji.length > 0 ? entry.kanji[0].text : entry.kana[0].text;
        const reading = entry.kana[0].text;
        const meaningEn = entry.sense[0].gloss.map(g => g.text).join('; ').replace(/'/g, "''");
        const pos = entry.sense[0].partOfSpeech.join(', ').replace(/'/g, "''");
        
        let meaningVi = viMap.get(wordJa) || viMap.get(reading) || '';

        // Assign JLPT Level (Target: 800, 1500, 3750, 6000, 10000)
        let level = 'BEYOND';
        if (count < 800) level = 'N5';
        else if (count < 1500) level = 'N4';
        else if (count < 3750) level = 'N3';
        else if (count < 6000) level = 'N2';
        else if (count < 10000) level = 'N1';

        const sWord = wordJa.replace(/'/g, "''");
        const sReading = reading.replace(/'/g, "''");

        sql += `INSERT INTO vocabulary (word_ja, reading, jlpt_level, meaning_en, meaning_vi, part_of_speech) 
        VALUES ('${sWord}', '${sReading}', '${level}', '${meaningEn}', '${meaningVi}', '${pos}') ON CONFLICT DO NOTHING;\n`;
        count++;
    }

    fs.writeFileSync(outputPath, sql);
    console.log(`✅ Success! Restored ${count} Vocabulary items to ${outputPath}`);
}

restoreVocab().catch(console.error);
