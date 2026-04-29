const AdmZip = require('adm-zip');
const initSqlJs = require('sql.js');
const fs = require('fs');
const path = require('path');

async function consolidateGrammar() {
    const apkgPath = path.join(__dirname, '../raw/848_im_Ng_Php_N5-N1.apkg');
    const outputPath = path.join(__dirname, '../../sakuralearn-backend/src/main/resources/db/migration/V5__Seed_Grammar_Master.sql');

    console.log('📦 Đang trích xuất dữ liệu Ngữ pháp từ Anki...');
    const zip = new AdmZip(apkgPath);
    const dbEntry = zip.getEntry('collection.anki21') || zip.getEntry('collection.anki2');
    const SQL = await initSqlJs();
    const db = new SQL.Database(dbEntry.getData());

    // 1. Build deck ID -> JLPT level map
    const decksRaw = db.exec('SELECT decks FROM col');
    const deckObj = JSON.parse(decksRaw[0].values[0][0]);
    const deckLevelMap = {};
    Object.entries(deckObj).forEach(([id, d]) => {
        const name = d.name;
        if (name.includes('::N5')) deckLevelMap[id] = 'N5';
        else if (name.includes('::N4')) deckLevelMap[id] = 'N4';
        else if (name.includes('::N3')) deckLevelMap[id] = 'N3';
        else if (name.includes('::N2')) deckLevelMap[id] = 'N2';
        else if (name.includes('::N1')) deckLevelMap[id] = 'N1';
    });
    console.log('🗂️  Deck mapping:', deckLevelMap);

    // 2. Build note ID -> JLPT level map (via cards table)
    const cardRes = db.exec('SELECT nid, did FROM cards');
    const noteLevelMap = {};
    cardRes[0].values.forEach(([nid, did]) => {
        if (deckLevelMap[did]) {
            noteLevelMap[nid] = deckLevelMap[did];
        }
    });

    // 3. Extract notes
    const ankiRes = db.exec('SELECT id, flds FROM notes');

    let sql = '-- Seed data for Grammar Master (N5-N1)\n';
    sql += '-- Generated from 848 Grammar Anki Pack with deck-based JLPT mapping\n';
    sql += 'DELETE FROM grammar_points;\n\n';

    let count = 0;
    const levelCounts = { N5: 0, N4: 0, N3: 0, N2: 0, N1: 0, BEYOND: 0 };

    ankiRes[0].values.forEach(v => {
        const noteId = v[0];
        const fields = v[1].split('\x1f');
        const level = noteLevelMap[noteId] || 'BEYOND';

        // Field 0: Pattern title
        let patternJa = fields[0]?.replace(/<[^>]*>/g, '').trim() || '';
        // Field 1: Content block (structure + explanation + examples)
        const contentHtml = fields[1] || '';

        // --- Parse Structure ---
        let structure = '';
        const structMatch = contentHtml.match(/<b>Công thức:<\/b>([\s\S]*?)(?:──────────|<b>Cách dùng:<\/b>)/);
        if (structMatch) {
            structure = structMatch[1].replace(/<br\s*\/?>/gi, ' ').replace(/<[^>]*>/g, '').replace(/\\n/g, ' ').replace(/[\r\n]/g, ' ').trim();
        }

        // --- Parse Explanation ---
        let explanation = '';
        const expMatch = contentHtml.match(/<b>Cách dùng:<\/b>([\s\S]*?)(?:──────────|<b>Ví dụ:<\/b>)/);
        if (expMatch) {
            explanation = expMatch[1].replace(/<br\s*\/?>/gi, ' ').replace(/<[^>]*>/g, '').replace(/\\n/g, ' ').replace(/[\r\n]/g, ' ').trim();
        }

        // --- Parse Examples ---
        let examples = [];
        const exMatch = contentHtml.match(/<b>Ví dụ:<\/b>([\s\S]*)/);
        if (exMatch) {
            // Split by double <br> to separate example blocks
            const rawBlock = exMatch[1];
            const blocks = rawBlock.split(/<br\s*\/?>\s*<br\s*\/?>/gi).filter(b => b.trim());
            
            blocks.forEach(block => {
                const lines = block.split(/<br\s*\/?>/gi)
                    .map(l => l.replace(/<[^>]*>/g, '').replace(/\\n/g, ' ').replace(/[\r\n]/g, ' ').trim())
                    .filter(l => l);
                
                if (lines.length >= 1) {
                    examples.push({
                        ja: lines[0] || '',
                        romaji: lines[1] || '',
                        vi: lines[2] || ''
                    });
                }
            });
        }

        if (patternJa) {
            const s = (str) => (str || '').replace(/'/g, "''").replace(/[\r\n]/g, ' ');
            
            const sPattern = s(patternJa);
            const sExp = s(explanation) || 'Đang cập nhật nội dung...';
            const sStruct = s(structure) || 'Xem ví dụ để biết cách dùng';
            const sExamples = JSON.stringify(examples).replace(/'/g, "''");

            sql += `INSERT INTO grammar_points (pattern_ja, jlpt_level, explanation_vi, structure_vi, example_sentences) VALUES ('${sPattern}', '${level}', '${sExp}', '${sStruct}', '${sExamples}') ON CONFLICT DO NOTHING;\n`;
            count++;
            levelCounts[level]++;
        }
    });

    fs.writeFileSync(outputPath, sql);
    console.log(`\n✅ Thành công! Tạo ${count} điểm ngữ pháp.`);
    console.log('📊 Phân bổ theo level:');
    Object.entries(levelCounts).forEach(([l, c]) => {
        if (c > 0) console.log(`   ${l}: ${c}`);
    });
}

consolidateGrammar().catch(console.error);
