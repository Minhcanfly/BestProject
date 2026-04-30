const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const fs = require('fs');
const path = require('path');

async function consolidateVocab() {
    const apkgPath = path.join(__dirname, '../raw/T_vng_ting_Nht_tng_hp_N5_N4_N3_N2_N1__cc_ch_.apkg');
    const jmdictPath = path.join(__dirname, '../raw/jmdict-eng-3.6.2.json');
    const outputPath = path.join(__dirname, '../../sakuralearn-backend/src/main/resources/db/migration/V4__Seed_Vocab_Master.sql');

    // 1. Extract Vietnamese meanings AND JLPT levels from Anki deck
    console.log('📦 Đang nạp dữ liệu tiếng Việt + JLPT levels từ Anki...');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki21') || zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());

    // Build deck ID -> JLPT level map
    const decksRaw = db.exec('SELECT decks FROM col');
    const deckObj = JSON.parse(decksRaw[0].values[0][0]);
    const deckLevelMap = {};
    Object.entries(deckObj).forEach(([id, d]) => {
        const name = d.name;
        if (name.includes('::JLPT::N5')) deckLevelMap[id] = 'N5';
        else if (name.includes('::JLPT::N4')) deckLevelMap[id] = 'N4';
        else if (name.includes('::JLPT::N3')) deckLevelMap[id] = 'N3';
        else if (name.includes('::JLPT::N2')) deckLevelMap[id] = 'N2';
        else if (name.includes('::JLPT::N1')) deckLevelMap[id] = 'N1';
    });
    console.log('🗂️  Deck level mapping:', deckLevelMap);

    // Build note ID -> JLPT level
    const cardRes = db.exec('SELECT nid, did FROM cards');
    const noteLevelMap = {};
    cardRes[0].values.forEach(([nid, did]) => {
        if (deckLevelMap[did]) {
            noteLevelMap[nid] = deckLevelMap[did];
        }
    });

    // Build word -> { meaningVi, level } from Anki notes
    const ankiRes = db.exec('SELECT id, flds FROM notes');
    const viMap = new Map(); // word -> meaningVi
    const ankiLevelMap = new Map(); // word -> JLPT level

    // Helper to detect Japanese characters
    const isJapanese = (text) => /[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FAF]/.test(text);

    ankiRes[0].values.forEach(v => {
        const noteId = v[0];
        const fields = v[1].split('\x1f');
        
        const field0 = fields[0] || '';
        const field1 = fields[1] || '';
        
        let rawWord = '';
        let meaningVi = '';
        
        // Smart field detection: find which one is Japanese
        if (isJapanese(field0) && !isJapanese(field1)) {
            rawWord = field0;
            meaningVi = field1;
        } else if (isJapanese(field1) && !isJapanese(field0)) {
            rawWord = field1;
            meaningVi = field0;
        } else {
            // Fallback: assume field 1 is Japanese word (standard for most decks)
            rawWord = field1;
            meaningVi = field0;
        }

        // Clean meaningVi
        meaningVi = meaningVi.replace(/'/g, "''").replace(/<[^>]*>/g, '').trim();

        const level = noteLevelMap[noteId] || null;

        if (rawWord && meaningVi) {
            const cleanWord = rawWord.replace(/\[(.*?)\[(.*?)\]\]/g, '$1')
                                     .replace(/\[(.*?)\]/g, '$1')
                                     .replace(/<[^>]*>/g, '')
                                     .trim();

            const variations = cleanWord.split(/[／/・]/);
            variations.forEach(variant => {
                const final = variant.trim();
                if (final) {
                    viMap.set(final, meaningVi);
                    if (level) ankiLevelMap.set(final, level);
                }
            });
        }
    });
    console.log(`✅ Tìm thấy ${viMap.size} nghĩa tiếng Việt, ${ankiLevelMap.size} từ có JLPT level.`);

    // 2. Load JMDict for comprehensive vocabulary
    console.log('📖 Đang đọc JMDict...');
    const jmdict = JSON.parse(fs.readFileSync(jmdictPath, 'utf8'));
    const words = jmdict.words;

    // Build JMDict Lookup Map
    console.log('🔍 Building JMDict lookup map...');
    const jmdictLookup = new Map();
    words.forEach(w => {
        if (w.kanji) {
            w.kanji.forEach(k => {
                if (!jmdictLookup.has(k.text)) jmdictLookup.set(k.text, w);
            });
        }
        if (w.kana) {
            w.kana.forEach(k => {
                if (!jmdictLookup.has(k.text)) jmdictLookup.set(k.text, w);
            });
        }
    });

    let sql = '-- Seed data for Vocabulary Master (N5-N1 + BEYOND)\n';
    sql += '-- Sources: JMDict, Vietnamese meanings from Anki pack\n';
    sql += '-- JLPT levels from Anki deck structure\n';
    sql += 'DELETE FROM vocabulary;\n\n';

    let count = 0;
    const levelStats = { N5: 0, N4: 0, N3: 0, N2: 0, N1: 0, BEYOND: 0 };
    const seenWords = new Set();

    // First pass: Add all words that have JLPT level from Anki
    console.log('✍️  Giai đoạn 1: Xử lý từ JLPT từ Anki...');
    ankiLevelMap.forEach((level, word) => {
        if (seenWords.has(word)) return;
        seenWords.add(word);

        const meaningVi = viMap.get(word) || '';
        const sWord = word.replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const sMeaningVi = meaningVi.replace(/[\r\n]/g, ' ');

        // Find English meaning and reading from JMDict lookup
        let meaningEn = '';
        let reading = word;
        let pos = '';

        const jmdictEntry = jmdictLookup.get(word);

        if (jmdictEntry) {
            reading = jmdictEntry.kana?.[0]?.text || word;
            const glosses = jmdictEntry.sense?.[0]?.gloss?.filter(g => g.lang === 'eng').map(g => g.text) || [];
            meaningEn = glosses.join('; ');
            pos = jmdictEntry.sense?.[0]?.partOfSpeech?.join(', ') || '';
        }

        const sReading = reading.replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const sMeaningEn = meaningEn.replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const sPos = pos.replace(/'/g, "''").replace(/[\r\n]/g, ' ');

        sql += `INSERT INTO vocabulary (word_ja, reading, jlpt_level, meaning_en, meaning_vi, part_of_speech) VALUES ('${sWord}', '${sReading}', '${level}', '${sMeaningEn}', '${sMeaningVi}', '${sPos}') ON CONFLICT DO NOTHING;\n`;
        count++;
        levelStats[level]++;
    });

    console.log(`✅ Giai đoạn 1: Đã thêm ${count} từ JLPT từ Anki.`);
    console.log('📊 Phân bổ:', levelStats);

    // Second pass: Add common JMDict words not already added (as BEYOND for search)
    let beyondCount = 0;
    for (const w of words) {
        if (beyondCount >= 15000) break; // Limit BEYOND words
        
        const kanji = w.kanji?.[0]?.text;
        const kana = w.kana?.[0]?.text;
        const word = kanji || kana;
        if (!word || seenWords.has(word)) continue;
        
        // Only include common words
        const isCommon = w.kanji?.[0]?.common || w.kana?.[0]?.common;
        if (!isCommon) continue;

        seenWords.add(word);
        
        const reading = kana || word;
        const glosses = w.sense?.[0]?.gloss?.filter(g => g.lang === 'eng').map(g => g.text) || [];
        const meaningEn = glosses.join('; ');
        const pos = w.sense?.[0]?.partOfSpeech?.join(', ') || '';
        const meaningVi = viMap.get(word) || viMap.get(reading) || '';

        const sWord = word.replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const sReading = reading.replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const sMeaningEn = meaningEn.replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const sMeaningVi = meaningVi.replace(/'/g, "''").replace(/[\r\n]/g, ' ');
        const sPos = pos.replace(/'/g, "''").replace(/[\r\n]/g, ' ');

        sql += `INSERT INTO vocabulary (word_ja, reading, jlpt_level, meaning_en, meaning_vi, part_of_speech) VALUES ('${sWord}', '${sReading}', 'BEYOND', '${sMeaningEn}', '${sMeaningVi}', '${sPos}') ON CONFLICT DO NOTHING;\n`;
        count++;
        beyondCount++;
        levelStats['BEYOND']++;
    }

    fs.writeFileSync(outputPath, sql);
    console.log(`\n✅ Đã tạo xong file SQL Từ vựng Master: ${outputPath}`);
    console.log(`📊 Tổng: ${count} từ`);
    console.log('📊 Phân bổ theo level:');
    Object.entries(levelStats).forEach(([l, c]) => {
        if (c > 0) console.log(`   ${l}: ${c}`);
    });
}

consolidateVocab().catch(console.error);
