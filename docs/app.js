'use strict';
const readings = [
  { period: 'Morning', text: 'He maketh me to lie down in green pastures: he leadeth me beside the still waters.', reference: 'Psalm 23:2', color: '#243e36' },
  { period: 'Afternoon', text: 'Be careful for nothing; but in every thing by prayer and supplication with thanksgiving let your requests be made known unto God.', reference: 'Philippians 4:6', color: '#4c5b3e' },
  { period: 'Night', text: 'Peace I leave with you, my peace I give unto you: not as the world giveth, give I unto you. Let not your heart be troubled, neither let it be afraid.', reference: 'John 14:27', color: '#363e46' },
];
const tabs = [...document.querySelectorAll('[data-period]')];
function selectPeriod(index, focus = false) {
  const verse = readings[index];
  tabs.forEach((tab, i) => { tab.setAttribute('aria-selected', String(i === index)); tab.tabIndex = i === index ? 0 : -1; });
  document.getElementById('verse-period').textContent = `${verse.period.toUpperCase()} SCRIPTURE`;
  document.getElementById('verse-text').textContent = `“${verse.text}”`;
  document.getElementById('verse-reference').textContent = verse.reference;
  const panel = document.getElementById('verse-panel');
  panel.style.backgroundColor = verse.color;
  panel.setAttribute('aria-labelledby', tabs[index].id);
  if (focus) tabs[index].focus();
}
tabs.forEach((tab, i) => {
  tab.addEventListener('click', () => selectPeriod(i));
  tab.addEventListener('keydown', event => {
    const next = event.key === 'ArrowRight' ? (i+1)%3 : event.key === 'ArrowLeft' ? (i+2)%3 : event.key === 'Home' ? 0 : event.key === 'End' ? 2 : null;
    if (next !== null) { event.preventDefault(); selectPeriod(next, true); }
  });
});
fetch('downloads/release.json').then(response => response.ok ? response.json() : null).then(release => {
  if (release && typeof release.version === 'string' && Number.isFinite(release.size)) {
    document.getElementById('download-meta').textContent = `Android · v${release.version} · ${(release.size / 1048576).toFixed(1)} MB · Preview build`;
  }
}).catch(() => { /* Static download remains usable without metadata. */ });
