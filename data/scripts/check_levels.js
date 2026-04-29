const fs = require('fs');
const path = require('path');

const data = JSON.parse(fs.readFileSync(path.join(__dirname, '../processed/v1/kanji_master.json'), 'utf8'));

const levels = {};
data.forEach(k => {
    levels[k.level] = (levels[k.level] || 0) + 1;
});

console.log('Kanji Levels in kanji_master.json:');
console.log(levels);

const n1Example = data.find(k => k.level === 'N1');
if (n1Example) {
    console.log('\nN1 Example:');
    console.log(JSON.stringify(n1Example, null, 2));
} else {
    console.log('\nNo N1 found.');
}
