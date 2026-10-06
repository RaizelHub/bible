import fs from 'node:fs';
import crypto from 'node:crypto';
const source = fs.readFileSync('tool/source/en_kjv.json', 'utf8').replace(/^\uFEFF/, '');
const bible = JSON.parse(source);
const original = fs.readFileSync('tool/source/legacy_verses.dart', 'utf8');
const oldReferences = new Set([...original.matchAll(/'([^']+ \d+:\d+)'/g)].map(m => m[1]));
const oldTexts = new Set([...original.matchAll(/'([^'\n]{25,})'/g)].map(m => normalize(m[1])));
function normalize(s) { return s.toLowerCase().replace(/[^a-z0-9]/g, ''); }
// Selected chapters on wisdom, prayer, faith, love, and encouragement.
const selections = [
  [18, 'Psalm', [16,19,23,27,34,37,46,63,84,91,100,103,112,116,118,121,125,128,130,131,133,138,139,145,146,147,148,150], 'Prayer'],
  [19, 'Proverbs', [3,4,15,16,17,18,19,20,21,22], 'Wisdom'],
  [39, 'Matthew', [5,6,7,11], 'Faith'],
  [42, 'John', [14,15,17], 'Love'],
  [44, 'Romans', [5,8,12,15], 'Hope'],
  [45, '1 Corinthians', [13], 'Love'],
  [46, '2 Corinthians', [4,5,9], 'Grace'],
  [47, 'Galatians', [5,6], 'Faith'],
  [48, 'Ephesians', [1,3,4,5,6], 'Grace'],
  [49, 'Philippians', [1,2,3,4], 'Joy'],
  [50, 'Colossians', [3,4], 'Gratitude'],
  [51, '1 Thessalonians', [5], 'Hope'],
  [57, 'Hebrews', [11,12,13], 'Faith'],
  [58, 'James', [1,3,5], 'Wisdom'],
  [59, '1 Peter', [1,4,5], 'Hope'],
  [61, '1 John', [3,4,5], 'Love'],
];
const seen = new Set(oldTexts), candidates = [];
for (const [book, name, chapters, theme] of selections) {
  for (const chapter of chapters) {
    bible[book].chapters[chapter-1].forEach((text, i) => {
      text = text.replace(/\{[^{}]*\}/g,'').trim();
      const reference = `${name} ${chapter}:${i+1}`;
      const norm = normalize(text);
      if (oldReferences.has(reference) || seen.has(norm) || text.length < 45 || text.length > 260) return;
      seen.add(norm);
      candidates.push({reference, text, theme});
    });
  }
}
// Fixed ordering: never regenerate with random state or reorder after shipping.
const first = ['Psalm 23:2', 'Philippians 4:6', 'John 14:27'];
candidates.sort((a,b) => crypto.createHash('sha256').update(a.reference).digest('hex').localeCompare(crypto.createHash('sha256').update(b.reference).digest('hex')));
const verses = [...first.map(ref => candidates.find(v=>v.reference===ref)), ...candidates.filter(v=>!first.includes(v.reference))].slice(0,365);
if (verses.length !== 365 || verses.some(v=>!v)) throw new Error('Incomplete library');
const dart = s => JSON.stringify(s).replaceAll('$', '\\$');
const additions = verses.map(v => `  Verse(${dart(v.reference)}, ${dart(v.text)}, ${dart(v.theme)}),`).join('\n');
const base = original.slice(0, original.lastIndexOf('];'));
fs.writeFileSync('lib/verses.dart', base.replace('// King James Version: seven days, three verses per day.', '// IDs 0–20 are preserved for legacy bookmarks. New readings start at ID 21.') + additions + '\n];\n\nconst firstReadingIndex = 21;\nconst readingCount = 365;\n');
fs.writeFileSync('docs/assets/sample-verses.json', JSON.stringify(verses.slice(0,3),null,2)+'\n');
fs.writeFileSync('tool/source/selected-verses.json', JSON.stringify(verses,null,2)+'\n');
console.log(`Generated ${verses.length} new unique verses; ${candidates.length} candidates; preserved 21 legacy IDs.`);
