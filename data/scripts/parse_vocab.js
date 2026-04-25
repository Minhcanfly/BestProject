const fs = require('fs');
const path = require('path');

async function parseVocab() {
    const rawPath = path.join(__dirname, '../raw/jmdict-eng-3.6.2.json');
    const outputPath = path.join(__dirname, '../processed/v1/vocab_seed.sql');

    console.log('🚀 Đang đọc file JMdict JSON...');
    const rawData = fs.readFileSync(rawPath, 'utf-8');
    const data = JSON.parse(rawData);
    const words = data.words;
    
    console.log(`📊 Tìm thấy ${words.length} từ vựng. Đang lọc và tạo SQL...`);

    let sql = '-- Seed data for Vocabulary\n';
    let count = 0;

    words.forEach(entry => {
        // Lấy tất cả các từ thông dụng (common)
        const isCommon = entry.kana.some(k => k.common) || entry.kanji.some(k => k.common);
        
        if (!isCommon) return;

        const wordJa = entry.kanji.length > 0 ? entry.kanji[0].text : entry.kana[0].text;
        const reading = entry.kana[0].text;
        const meaningEn = entry.sense[0].gloss.map(g => g.text).join('; ').replace(/'/g, "''");
        const pos = entry.sense[0].partOfSpeech.join(', ');

        sql += `INSERT INTO vocabulary (word_ja, reading, jlpt_level, meaning_en, meaning_vi, part_of_speech) 
        VALUES ('${wordJa}', '${reading}', 'CORE', '${meaningEn}', '', '${pos}') 
        ON CONFLICT DO NOTHING;\n`;
        count++;
    });

    fs.writeFileSync(outputPath, sql);
    console.log(`✅ Đã tạo SQL cho ${count} từ vựng thông dụng.`);
}

parseVocab().catch(console.error);
