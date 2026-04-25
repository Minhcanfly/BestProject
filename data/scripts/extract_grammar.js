const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const fs = require('fs');
const path = require('path');

async function extractGrammar() {
    const apkgPath = path.join(__dirname, '../raw/848_im_Ng_Php_N5-N1.apkg');
    const outputPath = path.join(__dirname, '../processed/v1/grammar_seed.sql');

    console.log('📦 Đang mở file Ngữ pháp Anki...');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki21') || zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());

    // Lấy tags để biết cấp độ N1-N5 nếu có
    const res = db.exec("SELECT flds, tags FROM notes");
    const notes = res[0].values;
    console.log(`📊 Tìm thấy ${notes.length} cấu trúc ngữ pháp.`);

    let sql = '-- Seed data for Grammar Points\n';
    
    notes.forEach(note => {
        const fields = note[0].split('\x1f');
        const tags = note[1] || '';
        const pattern = fields[0]?.replace(/'/g, "''");
        const content = fields[1]?.replace(/'/g, "''");
        
        // Tìm cấp độ trong tags (Ví dụ: "N5", "N4"...)
        let level = 'Common';
        if (tags.includes('N5')) level = 'N5';
        else if (tags.includes('N4')) level = 'N4';
        else if (tags.includes('N3')) level = 'N3';
        else if (tags.includes('N2')) level = 'N2';
        else if (tags.includes('N1')) level = 'N1';

        sql += `INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi) 
                VALUES ('${pattern}', '${level}', '${content}') ON CONFLICT DO NOTHING;\n`;
    });

    fs.writeFileSync(outputPath, sql);
    console.log(`✅ Đã tạo xong file SQL Ngữ pháp: ${outputPath}`);
}

extractGrammar().catch(console.error);
