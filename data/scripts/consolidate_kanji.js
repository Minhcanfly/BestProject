const fs = require('fs');
const path = require('path');
const { XMLParser } = require('fast-xml-parser');
const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');

async function consolidateKanji() {
    const kanjidicPath = path.join(__dirname, '../raw/kanjidic2.xml');
    const apkgPath = path.join(__dirname, '../raw/2136_Kanji_Vit.apkg');
    const jlptMapPath = path.join(__dirname, 'jlpt_kanji_map.json');
    const outputPath = path.join(__dirname, '../../sakuralearn-backend/src/main/resources/db/migration/V3__Seed_Kanji_Master.sql');

    // 1. Load JLPT Kanji Map (chuẩn Kanshudo - 2136 Jōyō Kanji)
    console.log('📋 Loading JLPT Kanji map (Kanshudo standard)...');
    const jlptMap = JSON.parse(fs.readFileSync(jlptMapPath, 'utf8'));
    const jlptCounts = {};
    Object.values(jlptMap).forEach(l => jlptCounts[l] = (jlptCounts[l] || 0) + 1);
    console.log('   Distribution:', jlptCounts);

    // 2. Parse Kanjidic2
    console.log('🚀 Parsing Kanjidic2...');
    const xmlData = fs.readFileSync(kanjidicPath, 'utf-8');
    const parser = new XMLParser({ ignoreAttributes: false, attributeNamePrefix: "@_" });
    const jsonObj = parser.parse(xmlData);
    const characters = jsonObj.kanjidic2.character;

    // 3. Extract Anki Vietnamese data
    console.log('📦 Extracting Anki data...');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());
    const ankiRes = db.exec("SELECT flds FROM notes");
    const ankiNotes = ankiRes[0].values;
    
    const ankiMap = new Map();
    ankiNotes.forEach(note => {
        const fields = note[0].split('\x1f');
        const char = fields[3]?.replace(/&nbsp;/g, '').trim();
        if (char && char.length === 1) {
            ankiMap.set(char, {
                hanViet: fields[0]?.replace(/'/g, "''").trim(),
                mnemonic: fields[4]?.replace(/'/g, "''").replace(/<[^>]*>/g, '').replace(/&nbsp;/g, ' ').trim(),
                svg: fields[6]?.match(/src="([^"]+)"/)?.[1]
            });
        }
    });

    // 4. Merge data
    console.log('⚙️  Merging data...');
    let sql = '-- Consolidated Kanji Master Data (N5-N1 + BEYOND)\n';
    sql += '-- Sources: Kanjidic2, Kanshudo JLPT Map, 2136 Kanji Vit Anki Pack\n';
    sql += '-- JLPT levels from Kanshudo standard (non-cumulative)\n\n';

    let count = 0;
    const levelStats = { N5: 0, N4: 0, N3: 0, N2: 0, N1: 0, BEYOND: 0 };

    characters.forEach(char => {
        const literal = char.literal;
        const frequency = char.misc?.freq || 'NULL';
        const grade = char.misc?.grade;
        
        // Radical extraction
        const radValue = char.radical?.rad_value;
        let radNum = null;
        if (Array.isArray(radValue)) {
            radNum = radValue.find(r => r['@_rad_type'] === 'classical')?.['#text'];
        } else if (radValue?.['@_rad_type'] === 'classical') {
            radNum = radValue['#text'];
        }

        // JLPT Level: Use Kanshudo standard map first
        let level = jlptMap[literal] || null;
        
        // If not in JLPT map but is a Joyo kanji (grade 1-9) or in Anki, keep as BEYOND
        if (!level) {
            if (grade || ankiMap.has(literal)) {
                level = 'BEYOND';
            } else {
                return; // Skip completely non-relevant kanji
            }
        }

        const ankiData = ankiMap.get(literal) || {};
        
        const onyomi = [];
        const kunyomi = [];
        const meaningsEn = [];
        const rm = char.reading_meaning?.rmgroup;
        if (rm) {
            const rList = Array.isArray(rm.reading) ? rm.reading : (rm.reading ? [rm.reading] : []);
            rList.forEach(r => {
                const val = (typeof r === 'object' ? r['#text'] : r).replace(/'/g, "''").replace(/[\r\n]/g, ' ');
                if (r['@_r_type'] === 'ja_on') onyomi.push(val);
                if (r['@_r_type'] === 'ja_kun') kunyomi.push(val);
            });

            const mList = Array.isArray(rm.meaning) ? rm.meaning : (rm.meaning ? [rm.meaning] : []);
            mList.forEach(m => {
                let val = typeof m === 'object' ? m['#text'] : m;
                if (val && !m['@_m_lang']) {
                    val = String(val).replace(/'/g, "''").replace(/[\r\n]/g, ' ');
                    meaningsEn.push(val);
                }
            });
        }

        const strokeCountRaw = char.misc?.stroke_count;
        const strokeCount = Array.isArray(strokeCountRaw) ? strokeCountRaw[0] : strokeCountRaw;

        const meaningVi = (ankiData.hanViet || '').replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const mnemonicVi = (ankiData.mnemonic || '').replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const onyomiArr = onyomi.length > 0 ? `ARRAY['${onyomi.join("','")}']` : 'NULL';
        const kunyomiArr = kunyomi.length > 0 ? `ARRAY['${kunyomi.join("','")}']` : 'NULL';
        const radicalIdSub = radNum ? `(SELECT id FROM radicals WHERE character = '${radNum}')` : 'NULL';
        const sLiteral = literal.replace(/'/g, "''");

        sql += `INSERT INTO kanji (character, jlpt_level, meaning_en, meaning_vi, mnemonic_vi, onyomi, kunyomi, stroke_count, frequency, radical_id) VALUES ('${sLiteral}', '${level}', '${meaningsEn.join(', ')}', '${meaningVi}', '${mnemonicVi}', ${onyomiArr}, ${kunyomiArr}, ${strokeCount}, ${frequency}, ${radicalIdSub}) ON CONFLICT (character) DO UPDATE SET jlpt_level = EXCLUDED.jlpt_level, meaning_vi = EXCLUDED.meaning_vi, mnemonic_vi = EXCLUDED.mnemonic_vi, stroke_count = EXCLUDED.stroke_count, frequency = EXCLUDED.frequency, radical_id = EXCLUDED.radical_id;\n`;
        count++;
        levelStats[level]++;
    });

    fs.writeFileSync(outputPath, sql);
    console.log(`\n✅ Success! Generated ${count} Kanji in ${outputPath}`);
    console.log('📊 Distribution by JLPT level:');
    Object.entries(levelStats).forEach(([l, c]) => {
        if (c > 0) console.log(`   ${l}: ${c}`);
    });
}

consolidateKanji().catch(console.error);
