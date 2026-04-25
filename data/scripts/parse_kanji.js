const fs = require('fs');
const path = require('path');
const { XMLParser } = require('fast-xml-parser');

async function parseKanji() {
    const rawPath = path.join(__dirname, '../raw/kanjidic2.xml');
    const outputPath = path.join(__dirname, '../processed/v1/kanji_master.json');

    console.log('🚀 Đang đọc file KanjiDic2.xml...');
    if (!fs.existsSync(rawPath)) {
        console.error('❌ Lỗi: Không tìm thấy file kanjidic2.xml tại data/raw/');
        return;
    }

    const xmlData = fs.readFileSync(rawPath, 'utf-8');
    
    const parser = new XMLParser({
        ignoreAttributes: false,
        attributeNamePrefix: "@_"
    });
    
    console.log('⚙️  Đang phân tích XML (Parsing)...');
    const jsonObj = parser.parse(xmlData);
    const characters = jsonObj.kanjidic2.character;
    
    console.log(`📊 Tìm thấy ${characters.length} ký tự. Đang xử lý...`);

    const processedKanji = characters.map(char => {
        const literal = char.literal;
        const jlptOld = char.misc?.jlpt;
        
        // Map old JLPT (1-4) sang N1-N5 cơ bản
        // 4 -> N5, 3 -> N4, 2 -> N3, 1 -> N2/N1
        let level = 'N/A';
        if (jlptOld == 4) level = 'N5';
        else if (jlptOld == 3) level = 'N4';
        else if (jlptOld == 2) level = 'N3';
        else if (jlptOld == 1) level = 'N2'; // Level 1 thường bao gồm cả N1/N2 cũ
        
        const readings = [];
        const meanings = [];
        
        const rm = char.reading_meaning?.rmgroup;
        if (rm) {
            // Xử lý Reading (Âm On/Kun)
            const rList = Array.isArray(rm.reading) ? rm.reading : (rm.reading ? [rm.reading] : []);
            rList.forEach(r => {
                readings.push({
                    type: r['@_r_type'],
                    value: typeof r === 'object' ? r['#text'] : r
                });
            });
            
            // Xử lý Meaning (Nghĩa)
            const mList = Array.isArray(rm.meaning) ? rm.meaning : (rm.meaning ? [rm.meaning] : []);
            mList.forEach(m => {
                const lang = m['@_m_lang'] || 'en';
                const val = typeof m === 'object' ? m['#text'] : m;
                if (val) meanings.push({ lang, value: val });
            });
        }
        
        return {
            id: `kanji_${literal}`,
            kanji: literal,
            level: level,
            stroke_count: char.misc?.stroke_count,
            readings: readings,
            meanings: meanings,
            radicals: char.radical?.rad_value
        };
    });
    
    console.log(`✅ Đã xử lý xong ${processedKanji.length} Kanji.`);
    
    const outputDir = path.dirname(outputPath);
    if (!fs.existsSync(outputDir)) {
        fs.mkdirSync(outputDir, { recursive: true });
    }
    
    fs.writeFileSync(outputPath, JSON.stringify(processedKanji, null, 2));
    console.log(`💾 Đã lưu dữ liệu Master vào: data/processed/v1/kanji_master.json`);
}

parseKanji().catch(err => {
    console.error('❌ Lỗi thực thi:', err);
});
