class Verse {
  final String reference, text, theme;
  const Verse(this.reference, this.text, this.theme);
}

// King James Version: seven days, three verses per day.
const verses = <Verse>[
  Verse(
    'Psalm 118:24',
    'This is the day which the LORD hath made; we will rejoice and be glad in it.',
    'Gratitude',
  ),
  Verse(
    'Philippians 4:13',
    'I can do all things through Christ which strengtheneth me.',
    'Strength',
  ),
  Verse(
    'Psalm 4:8',
    'I will both lay me down in peace, and sleep: for thou, LORD, only makest me dwell in safety.',
    'Peace',
  ),
  Verse(
    'Proverbs 3:5',
    'Trust in the LORD with all thine heart; and lean not unto thine own understanding.',
    'Trust',
  ),
  Verse(
    'Psalm 46:10',
    'Be still, and know that I am God: I will be exalted among the heathen, I will be exalted in the earth.',
    'Stillness',
  ),
  Verse(
    'Matthew 11:28',
    'Come unto me, all ye that labour and are heavy laden, and I will give you rest.',
    'Rest',
  ),
  Verse('Psalm 23:1', 'The LORD is my shepherd; I shall not want.', 'Trust'),
  Verse(
    '1 Corinthians 16:14',
    'Let all your things be done with charity.',
    'Love',
  ),
  Verse(
    'Psalm 91:2',
    'I will say of the LORD, He is my refuge and my fortress: my God; in him will I trust.',
    'Peace',
  ),
  Verse(
    'Psalm 119:105',
    'Thy word is a lamp unto my feet, and a light unto my path.',
    'Guidance',
  ),
  Verse(
    'Romans 12:12',
    'Rejoicing in hope; patient in tribulation; continuing instant in prayer;',
    'Hope',
  ),
  Verse(
    '1 Peter 5:7',
    'Casting all your care upon him; for he careth for you.',
    'Rest',
  ),
  Verse(
    'Lamentations 3:23',
    'They are new every morning: great is thy faithfulness.',
    'Faith',
  ),
  Verse(
    'Proverbs 16:3',
    'Commit thy works unto the LORD, and thy thoughts shall be established.',
    'Guidance',
  ),
  Verse(
    'Psalm 121:2',
    'My help cometh from the LORD, which made heaven and earth.',
    'Trust',
  ),
  Verse(
    'Psalm 100:5',
    'For the LORD is good; his mercy is everlasting; and his truth endureth to all generations.',
    'Gratitude',
  ),
  Verse(
    'Romans 12:21',
    'Be not overcome of evil, but overcome evil with good.',
    'Strength',
  ),
  Verse(
    'Psalm 62:1',
    'Truly my soul waiteth upon God: from him cometh my salvation.',
    'Stillness',
  ),
  Verse('1 Thessalonians 5:16', 'Rejoice evermore.', 'Joy'),
  Verse(
    'Micah 6:8',
    'He hath shewed thee, O man, what is good; and what doth the LORD require of thee, but to do justly, and to love mercy, and to walk humbly with thy God?',
    'Faith',
  ),
  Verse(
    'Psalm 139:14',
    'I will praise thee; for I am fearfully and wonderfully made: marvellous are thy works; and that my soul knoweth right well.',
    'Gratitude',
  ),
];
int verseIndex(DateTime date, int period) => (date.weekday - 1) * 3 + period;
