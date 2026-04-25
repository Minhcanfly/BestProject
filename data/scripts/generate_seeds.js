const fs = require('fs');
const path = require('path');
const { XMLParser } = require('fast-xml-parser');
const { v4: uuidv4 } = require('uuid');

async function generateSeeds() {
    const rawPath = path.join(__dirname, '../raw/kanjidic2.xml');
    const radicalSqlPath = path.join(__dirname, '../processed/v1/radicals_seed.sql');
    const kanjiSqlPath = path.join(__dirname, '../processed/v1/kanji_seed.sql');

    console.log('🚀 Đang đọc KanjiDic2.xml...');
    const xmlData = fs.readFileSync(rawPath, 'utf-8');
    const parser = new XMLParser({ ignoreAttributes: false, attributeNamePrefix: "@_" });
    const jsonObj = parser.parse(xmlData);
    const characters = jsonObj.kanjidic2.character;

    const radicalMap = new Map(); // character -> uuid
    const kanjiData = [];

    console.log('⚙️  Đang phân tích dữ liệu...');

    // 1. Thu thập bộ thủ (Radicals) từ các Kanji
    characters.forEach(char => {
        const radValue = char.radical?.rad_value;
        const radChar = Array.isArray(radValue) ? radValue[0]['#text'] : radValue?.['#text'];
        
        if (radChar && !radicalMap.has(radChar)) {
            radicalMap.set(radChar, uuidv4());
        }

        const literal = char.literal;
        const jlptOld = char.misc?.jlpt;
        
        // CHỈ LẤY N5 -> N2 (Cấp độ 4, 3, 2, 1 trong KanjiDic2)
        if (!jlptOld || jlptOld > 4) return;

        let level = null;
        if (jlptOld == 4) level = 'N5';
        else if (jlptOld == 3) level = 'N4';
        else if (jlptOld == 2) level = 'N3';
        else if (jlptOld == 1) level = 'N2';

        const onyomi = [];
        const kunyomi = [];
        const meaningsEn = [];
        const meaningsVi = [];

        const rm = char.reading_meaning?.rmgroup;
        if (rm) {
            const rList = Array.isArray(rm.reading) ? rm.reading : (rm.reading ? [rm.reading] : []);
            rList.forEach(r => {
                const val = typeof r === 'object' ? r['#text'] : r;
                if (r['@_r_type'] === 'ja_on') onyomi.push(val);
                if (r['@_r_type'] === 'ja_kun') kunyomi.push(val);
                if (r['@_r_type'] === 'vietnam') meaningsVi.push(val);
            });

            const mList = Array.isArray(rm.meaning) ? rm.meaning : (rm.meaning ? [rm.meaning] : []);
            mList.forEach(m => {
                let val = typeof m === 'object' ? m['#text'] : m;
                if (val && !m['@_m_lang']) {
                    val = String(val).replace(/'/g, "''");
                    meaningsEn.push(val);
                }
            });
        }

        const strokeCountRaw = char.misc?.stroke_count;
        const strokeCount = Array.isArray(strokeCountRaw) ? strokeCountRaw[0] : strokeCountRaw;

        kanjiData.push({
            literal,
            level,
            meaning_en: meaningsEn.join(', '),
            meaning_vi: meaningsVi.join(', '),
            onyomi,
            kunyomi,
            stroke_count: strokeCount,
            radical_char: radChar
        });
    });

    // 2. Tạo SQL cho Radicals
    let radicalSql = '-- Seed data for Radicals\n';
    radicalMap.forEach((id, char) => {
        radicalSql += `INSERT INTO radicals (id, character, meaning_en) VALUES ('${id}', '${char}', 'Radical ${char}') ON CONFLICT (character) DO NOTHING;\n`;
    });
    fs.writeFileSync(radicalSqlPath, radicalSql);
    console.log(`✅ Đã tạo ${radicalMap.size} bộ thủ.`);

    // 3. Tạo SQL cho Kanji
    let kanjiSql = '-- Seed data for Kanji\n';
    kanjiData.forEach(k => {
        const radId = radicalMap.get(k.radical_char);
        const onyomiArr = k.onyomi.length > 0 ? `ARRAY['${k.onyomi.join("','")}']` : 'NULL';
        const kunyomiArr = k.kunyomi.length > 0 ? `ARRAY['${k.kunyomi.join("','")}']` : 'NULL';
        const level = k.level ? `'${k.level}'` : 'NULL';

        kanjiSql += `INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, onyomi, kunyomi, stroke_count, radical_id) 
        VALUES ('${k.literal}', ${level}, '${k.meaning_en}', '${k.meaning_vi}', ${onyomiArr}, ${kunyomiArr}, ${k.stroke_count}, ${radId ? `'${radId}'` : 'NULL'}) 
        ON CONFLICT (character) DO UPDATE SET meaning_en = EXCLUDED.meaning_en, jlpt_level = EXCLUDED.jlpt_level;\n`;
    });
    fs.writeFileSync(kanjiSqlPath, kanjiSql);
    console.log(`✅ Đã tạo SQL cho ${kanjiData.length} Kanji.`);
}

generateSeeds().catch(console.error);
