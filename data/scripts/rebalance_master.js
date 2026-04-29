const fs = require('fs');
const path = require('path');

const KANJI_PATH = path.join(__dirname, '../../sakuralearn-backend/src/main/resources/db/migration/V3__Seed_Kanji_Master.sql');
const VOCAB_PATH = path.join(__dirname, '../../sakuralearn-backend/src/main/resources/db/migration/V4__Seed_Vocab_Master.sql');
const GRAMMAR_PATH = path.join(__dirname, '../../sakuralearn-backend/src/main/resources/db/migration/V5__Seed_Grammar_Master.sql');

function processFile(filePath, name) {
    console.log(`🔄 Đang sửa lỗi và xử lý ${name}...`);
    const content = fs.readFileSync(filePath, 'utf8');
    
    // Split by INSERT INTO to get individual statements
    // Each statement ends with ;
    const statements = content.split(/INSERT INTO/);
    const header = statements.shift(); // The first part before any INSERT
    
    let results = [];
    for (let stmt of statements) {
        if (stmt.trim()) {
            results.push('INSERT INTO ' + stmt.trim());
        }
    }

    // Sort logic for Kanji (if frequency exists)
    if (name === 'Kanji') {
        results.sort((a, b) => {
            const freqMatchA = a.match(/,\s+(\d+|NULL),\s+\(SELECT id FROM radicals/);
            const freqMatchB = b.match(/,\s+(\d+|NULL),\s+\(SELECT id FROM radicals/);
            const freqA = freqMatchA && freqMatchA[1] !== 'NULL' ? parseInt(freqMatchA[1]) : 99999;
            const freqB = freqMatchB && freqMatchB[1] !== 'NULL' ? parseInt(freqMatchB[1]) : 99999;
            return freqA - freqB;
        });
    }

    let updatedLines = [];
    let count = 0;
    for (let line of results) {
        let newLevel = 'BEYOND';
        if (name === 'Kanji') {
            if (count < 100) newLevel = 'N5';
            else if (count < 300) newLevel = 'N4';
            else if (count < 650) newLevel = 'N3';
            else if (count < 1000) newLevel = 'N2';
            else if (count < 2136) newLevel = 'N1';
        } else if (name === 'Vocabulary') {
            if (count < 800) newLevel = 'N5';
            else if (count < 1500) newLevel = 'N4';
            else if (count < 3750) newLevel = 'N3';
            else if (count < 6000) newLevel = 'N2';
            else if (count < 10000) newLevel = 'N1';
        } else if (name === 'Grammar') {
            if (count < 80) newLevel = 'N5';
            else if (count < 130) newLevel = 'N4';
            else if (count < 280) newLevel = 'N3';
            else if (count < 390) newLevel = 'N2';
            else if (count < 520) newLevel = 'N1';
        }

        // Replace level: 'N1' -> 'N5' etc.
        // Be careful not to replace things in the meaning
        // Usually levels are single quoted and uppercase
        line = line.replace(/'N[1-5]'/, `'${newLevel}'`);
        updatedLines.push(line);
        count++;
    }

    const finalContent = header + '\n\n' + updatedLines.join('\n\n');
    fs.writeFileSync(filePath, finalContent);
    console.log(`✅ Hoàn tất ${name}: ${count} mục.`);
}

processFile(KANJI_PATH, 'Kanji');
processFile(VOCAB_PATH, 'Vocabulary');
processFile(GRAMMAR_PATH, 'Grammar');
