class Verse {
  final String reference, text, theme;
  const Verse(this.reference, this.text, this.theme);
}

// IDs 0–20 are preserved for legacy bookmarks. New readings start at ID 21.
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
  Verse(
    "Psalm 23:2",
    "He maketh me to lie down in green pastures: he leadeth me beside the still waters.",
    "Prayer",
  ),
  Verse(
    "Philippians 4:6",
    "Be careful for nothing; but in every thing by prayer and supplication with thanksgiving let your requests be made known unto God.",
    "Joy",
  ),
  Verse(
    "John 14:27",
    "Peace I leave with you, my peace I give unto you: not as the world giveth, give I unto you. Let not your heart be troubled, neither let it be afraid.",
    "Love",
  ),
  Verse(
    "Philippians 2:26",
    "For he longed after you all, and was full of heaviness, because that ye had heard that he had been sick.",
    "Joy",
  ),
  Verse(
    "1 John 5:8",
    "And there are three that bear witness in earth, the Spirit, and the water, and the blood: and these three agree in one.",
    "Love",
  ),
  Verse(
    "Psalm 37:12",
    "The wicked plotteth against the just, and gnasheth upon him with his teeth.",
    "Prayer",
  ),
  Verse(
    "Philippians 3:17",
    "Brethren, be followers together of me, and mark them which walk so as ye have us for an ensample.",
    "Joy",
  ),
  Verse(
    "Proverbs 16:15",
    "In the light of the king’s countenance is life; and his favour is as a cloud of the latter rain.",
    "Wisdom",
  ),
  Verse(
    "John 17:11",
    "And now I am no more in the world, but these are in the world, and I come to thee. Holy Father, keep through thine own name those whom thou hast given me, that they may be one, as we are .",
    "Love",
  ),
  Verse(
    "Hebrews 11:40",
    "God having provided some better thing for us, that they without us should not be made perfect.",
    "Faith",
  ),
  Verse(
    "Ephesians 5:13",
    "But all things that are reproved are made manifest by the light: for whatsoever doth make manifest is light.",
    "Grace",
  ),
  Verse(
    "Psalm 146:3",
    "Put not your trust in princes, nor in the son of man, in whom there is no help.",
    "Prayer",
  ),
  Verse(
    "Colossians 4:4",
    "That I may make it manifest, as I ought to speak.",
    "Gratitude",
  ),
  Verse(
    "Ephesians 1:2",
    "Grace be to you, and peace, from God our Father, and from the Lord Jesus Christ.",
    "Grace",
  ),
  Verse(
    "Psalm 63:2",
    "To see thy power and thy glory, so as I have seen thee in the sanctuary.",
    "Prayer",
  ),
  Verse(
    "Psalm 23:4",
    "Yea, though I walk through the valley of the shadow of death, I will fear no evil: for thou art with me; thy rod and thy staff they comfort me.",
    "Prayer",
  ),
  Verse(
    "James 1:24",
    "For he beholdeth himself, and goeth his way, and straightway forgetteth what manner of man he was.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 19:12",
    "The king’s wrath is as the roaring of a lion; but his favour is as dew upon the grass.",
    "Wisdom",
  ),
  Verse(
    "Romans 5:3",
    "And not only so , but we glory in tribulations also: knowing that tribulation worketh patience;",
    "Hope",
  ),
  Verse(
    "2 Corinthians 4:6",
    "For God, who commanded the light to shine out of darkness, hath shined in our hearts, to give the light of the knowledge of the glory of God in the face of Jesus Christ.",
    "Grace",
  ),
  Verse(
    "John 14:25",
    "These things have I spoken unto you, being yet present with you.",
    "Love",
  ),
  Verse(
    "Matthew 6:24",
    "No man can serve two masters: for either he will hate the one, and love the other; or else he will hold to the one, and despise the other. Ye cannot serve God and mammon.",
    "Faith",
  ),
  Verse(
    "James 1:10",
    "But the rich, in that he is made low: because as the flower of the grass he shall pass away.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 4:25",
    "Let thine eyes look right on, and let thine eyelids look straight before thee.",
    "Wisdom",
  ),
  Verse(
    "Ephesians 4:10",
    "He that descended is the same also that ascended up far above all heavens, that he might fill all things.)",
    "Grace",
  ),
  Verse(
    "Psalm 34:6",
    "This poor man cried, and the LORD heard him , and saved him out of all his troubles.",
    "Prayer",
  ),
  Verse(
    "Proverbs 16:21",
    "The wise in heart shall be called prudent: and the sweetness of the lips increaseth learning.",
    "Wisdom",
  ),
  Verse(
    "2 Corinthians 5:9",
    "Wherefore we labour, that, whether present or absent, we may be accepted of him.",
    "Grace",
  ),
  Verse(
    "James 5:3",
    "Your gold and silver is cankered; and the rust of them shall be a witness against you, and shall eat your flesh as it were fire. Ye have heaped treasure together for the last days.",
    "Wisdom",
  ),
  Verse(
    "1 John 3:22",
    "And whatsoever we ask, we receive of him, because we keep his commandments, and do those things that are pleasing in his sight.",
    "Love",
  ),
  Verse(
    "Proverbs 20:4",
    "The sluggard will not plow by reason of the cold; therefore shall he beg in harvest, and have nothing.",
    "Wisdom",
  ),
  Verse(
    "1 Peter 5:2",
    "Feed the flock of God which is among you, taking the oversight thereof , not by constraint, but willingly; not for filthy lucre, but of a ready mind;",
    "Hope",
  ),
  Verse(
    "Proverbs 17:12",
    "Let a bear robbed of her whelps meet a man, rather than a fool in his folly.",
    "Wisdom",
  ),
  Verse(
    "Hebrews 12:4",
    "Ye have not yet resisted unto blood, striving against sin.",
    "Faith",
  ),
  Verse(
    "Psalm 133:1",
    "Behold, how good and how pleasant it is for brethren to dwell together in unity!",
    "Prayer",
  ),
  Verse(
    "John 17:5",
    "And now, O Father, glorify thou me with thine own self with the glory which I had with thee before the world was.",
    "Love",
  ),
  Verse(
    "Psalm 37:23",
    "The steps of a good man are ordered by the LORD : and he delighteth in his way.",
    "Prayer",
  ),
  Verse(
    "Proverbs 21:2",
    "Every way of a man is right in his own eyes: but the LORD pondereth the hearts.",
    "Wisdom",
  ),
  Verse(
    "Hebrews 11:23",
    "By faith Moses, when he was born, was hid three months of his parents, because they saw he was a proper child; and they were not afraid of the king’s commandment.",
    "Faith",
  ),
  Verse(
    "Colossians 4:13",
    "For I bear him record, that he hath a great zeal for you, and them that are in Laodicea, and them in Hierapolis.",
    "Gratitude",
  ),
  Verse(
    "Proverbs 17:28",
    "Even a fool, when he holdeth his peace, is counted wise: and he that shutteth his lips is esteemed a man of understanding.",
    "Wisdom",
  ),
  Verse(
    "Colossians 3:20",
    "Children, obey your parents in all things: for this is well pleasing unto the Lord.",
    "Gratitude",
  ),
  Verse(
    "Psalm 46:5",
    "God is in the midst of her; she shall not be moved: God shall help her, and that right early.",
    "Prayer",
  ),
  Verse(
    "Psalm 112:6",
    "Surely he shall not be moved for ever: the righteous shall be in everlasting remembrance.",
    "Prayer",
  ),
  Verse(
    "Matthew 5:39",
    "But I say unto you, That ye resist not evil: but whosoever shall smite thee on thy right cheek, turn to him the other also.",
    "Faith",
  ),
  Verse(
    "2 Corinthians 4:16",
    "For which cause we faint not; but though our outward man perish, yet the inward man is renewed day by day.",
    "Grace",
  ),
  Verse(
    "2 Corinthians 4:11",
    "For we which live are alway delivered unto death for Jesus’ sake, that the life also of Jesus might be made manifest in our mortal flesh.",
    "Grace",
  ),
  Verse(
    "1 Peter 4:10",
    "As every man hath received the gift, even so minister the same one to another, as good stewards of the manifold grace of God.",
    "Hope",
  ),
  Verse(
    "Hebrews 12:23",
    "To the general assembly and church of the firstborn, which are written in heaven, and to God the Judge of all, and to the spirits of just men made perfect,",
    "Faith",
  ),
  Verse(
    "Proverbs 15:15",
    "All the days of the afflicted are evil: but he that is of a merry heart hath a continual feast.",
    "Wisdom",
  ),
  Verse(
    "Psalm 138:6",
    "Though the LORD be high, yet hath he respect unto the lowly: but the proud he knoweth afar off.",
    "Prayer",
  ),
  Verse(
    "1 Peter 5:12",
    "By Silvanus, a faithful brother unto you, as I suppose, I have written briefly, exhorting, and testifying that this is the true grace of God wherein ye stand.",
    "Hope",
  ),
  Verse(
    "Psalm 145:5",
    "I will speak of the glorious honour of thy majesty, and of thy wondrous works.",
    "Prayer",
  ),
  Verse(
    "Psalm 37:34",
    "Wait on the LORD , and keep his way, and he shall exalt thee to inherit the land: when the wicked are cut off, thou shalt see it .",
    "Prayer",
  ),
  Verse(
    "Psalm 131:2",
    "Surely I have behaved and quieted myself, as a child that is weaned of his mother: my soul is even as a weaned child.",
    "Prayer",
  ),
  Verse(
    "James 1:12",
    "Blessed is the man that endureth temptation: for when he is tried, he shall receive the crown of life, which the Lord hath promised to them that love him.",
    "Wisdom",
  ),
  Verse(
    "Psalm 116:19",
    "In the courts of the LORD’s house, in the midst of thee, O Jerusalem. Praise ye the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 125:2",
    "As the mountains are round about Jerusalem, so the LORD is round about his people from henceforth even for ever.",
    "Prayer",
  ),
  Verse(
    "Psalm 145:17",
    "The LORD is righteous in all his ways, and holy in all his works.",
    "Prayer",
  ),
  Verse(
    "Psalm 118:13",
    "Thou hast thrust sore at me that I might fall: but the LORD helped me.",
    "Prayer",
  ),
  Verse(
    "Matthew 7:28",
    "And it came to pass, when Jesus had ended these sayings, the people were astonished at his doctrine:",
    "Faith",
  ),
  Verse(
    "Psalm 63:8",
    "My soul followeth hard after thee: thy right hand upholdeth me.",
    "Prayer",
  ),
  Verse(
    "Hebrews 11:21",
    "By faith Jacob, when he was a dying, blessed both the sons of Joseph; and worshipped, leaning upon the top of his staff.",
    "Faith",
  ),
  Verse(
    "Ephesians 5:22",
    "Wives, submit yourselves unto your own husbands, as unto the Lord.",
    "Grace",
  ),
  Verse(
    "Matthew 6:18",
    "That thou appear not unto men to fast, but unto thy Father which is in secret: and thy Father, which seeth in secret, shall reward thee openly.",
    "Faith",
  ),
  Verse(
    "Ephesians 1:11",
    "In whom also we have obtained an inheritance, being predestinated according to the purpose of him who worketh all things after the counsel of his own will:",
    "Grace",
  ),
  Verse(
    "Proverbs 4:23",
    "Keep thy heart with all diligence; for out of it are the issues of life.",
    "Wisdom",
  ),
  Verse(
    "James 1:18",
    "Of his own will begat he us with the word of truth, that we should be a kind of firstfruits of his creatures.",
    "Wisdom",
  ),
  Verse(
    "Ephesians 6:17",
    "And take the helmet of salvation, and the sword of the Spirit, which is the word of God:",
    "Grace",
  ),
  Verse(
    "Matthew 5:3",
    "Blessed are the poor in spirit: for theirs is the kingdom of heaven.",
    "Faith",
  ),
  Verse(
    "Romans 8:36",
    "As it is written, For thy sake we are killed all the day long; we are accounted as sheep for the slaughter.",
    "Hope",
  ),
  Verse(
    "1 Corinthians 13:5",
    "Doth not behave itself unseemly, seeketh not her own, is not easily provoked, thinketh no evil;",
    "Love",
  ),
  Verse(
    "James 3:8",
    "But the tongue can no man tame; it is an unruly evil, full of deadly poison.",
    "Wisdom",
  ),
  Verse(
    "Psalm 147:9",
    "He giveth to the beast his food, and to the young ravens which cry.",
    "Prayer",
  ),
  Verse(
    "Ephesians 1:21",
    "Far above all principality, and power, and might, and dominion, and every name that is named, not only in this world, but also in that which is to come:",
    "Grace",
  ),
  Verse(
    "Ephesians 1:19",
    "And what is the exceeding greatness of his power to us-ward who believe, according to the working of his mighty power,",
    "Grace",
  ),
  Verse(
    "Hebrews 13:22",
    "And I beseech you, brethren, suffer the word of exhortation: for I have written a letter unto you in few words.",
    "Faith",
  ),
  Verse(
    "Psalm 118:9",
    "It is better to trust in the LORD than to put confidence in princes.",
    "Prayer",
  ),
  Verse(
    "Psalm 145:9",
    "The LORD is good to all: and his tender mercies are over all his works.",
    "Prayer",
  ),
  Verse(
    "1 Thessalonians 5:8",
    "But let us, who are of the day, be sober, putting on the breastplate of faith and love; and for an helmet, the hope of salvation.",
    "Hope",
  ),
  Verse(
    "Psalm 27:12",
    "Deliver me not over unto the will of mine enemies: for false witnesses are risen up against me, and such as breathe out cruelty.",
    "Prayer",
  ),
  Verse(
    "Psalm 147:8",
    "Who covereth the heaven with clouds, who prepareth rain for the earth, who maketh grass to grow upon the mountains.",
    "Prayer",
  ),
  Verse(
    "Hebrews 12:1",
    "Wherefore seeing we also are compassed about with so great a cloud of witnesses, let us lay aside every weight, and the sin which doth so easily beset us , and let us run with patience the race that is set before us,",
    "Faith",
  ),
  Verse(
    "Psalm 19:7",
    "The law of the LORD is perfect, converting the soul: the testimony of the LORD is sure, making wise the simple.",
    "Prayer",
  ),
  Verse(
    "1 Corinthians 13:8",
    "Charity never faileth: but whether there be prophecies, they shall fail; whether there be tongues, they shall cease; whether there be knowledge, it shall vanish away.",
    "Love",
  ),
  Verse(
    "Proverbs 4:16",
    "For they sleep not, except they have done mischief; and their sleep is taken away, unless they cause some to fall.",
    "Wisdom",
  ),
  Verse(
    "Psalm 34:20",
    "He keepeth all his bones: not one of them is broken.",
    "Prayer",
  ),
  Verse(
    "Psalm 128:6",
    "Yea, thou shalt see thy children’s children, and peace upon Israel.",
    "Prayer",
  ),
  Verse(
    "Proverbs 15:19",
    "The way of the slothful man is as an hedge of thorns: but the way of the righteous is made plain.",
    "Wisdom",
  ),
  Verse(
    "Psalm 145:2",
    "Every day will I bless thee; and I will praise thy name for ever and ever.",
    "Prayer",
  ),
  Verse(
    "Matthew 6:19",
    "Lay not up for yourselves treasures upon earth, where moth and rust doth corrupt, and where thieves break through and steal:",
    "Faith",
  ),
  Verse(
    "Proverbs 17:11",
    "An evil man seeketh only rebellion: therefore a cruel messenger shall be sent against him.",
    "Wisdom",
  ),
  Verse(
    "Psalm 103:22",
    "Bless the LORD , all his works in all places of his dominion: bless the LORD , O my soul.",
    "Prayer",
  ),
  Verse(
    "Psalm 37:28",
    "For the LORD loveth judgment, and forsaketh not his saints; they are preserved for ever: but the seed of the wicked shall be cut off.",
    "Prayer",
  ),
  Verse(
    "Philippians 1:9",
    "And this I pray, that your love may abound yet more and more in knowledge and in all judgment;",
    "Joy",
  ),
  Verse(
    "Proverbs 20:19",
    "He that goeth about as a talebearer revealeth secrets: therefore meddle not with him that flattereth with his lips.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 21:30",
    "There is no wisdom nor understanding nor counsel against the LORD .",
    "Wisdom",
  ),
  Verse(
    "Proverbs 18:19",
    "A brother offended is harder to be won than a strong city: and their contentions are like the bars of a castle.",
    "Wisdom",
  ),
  Verse(
    "Psalm 103:4",
    "Who redeemeth thy life from destruction; who crowneth thee with lovingkindness and tender mercies;",
    "Prayer",
  ),
  Verse(
    "Proverbs 22:27",
    "If thou hast nothing to pay, why should he take away thy bed from under thee?",
    "Wisdom",
  ),
  Verse(
    "Matthew 5:26",
    "Verily I say unto thee, Thou shalt by no means come out thence, till thou hast paid the uttermost farthing.",
    "Faith",
  ),
  Verse(
    "Proverbs 19:23",
    "The fear of the LORD tendeth to life: and he that hath it shall abide satisfied; he shall not be visited with evil.",
    "Wisdom",
  ),
  Verse(
    "1 Corinthians 13:3",
    "And though I bestow all my goods to feed the poor , and though I give my body to be burned, and have not charity, it profiteth me nothing.",
    "Love",
  ),
  Verse(
    "Proverbs 21:3",
    "To do justice and judgment is more acceptable to the LORD than sacrifice.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 17:7",
    "Excellent speech becometh not a fool: much less do lying lips a prince.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 19:5",
    "A false witness shall not be unpunished, and he that speaketh lies shall not escape.",
    "Wisdom",
  ),
  Verse(
    "Galatians 5:2",
    "Behold, I Paul say unto you, that if ye be circumcised, Christ shall profit you nothing.",
    "Faith",
  ),
  Verse(
    "Proverbs 17:26",
    "Also to punish the just is not good, nor to strike princes for equity.",
    "Wisdom",
  ),
  Verse(
    "Psalm 121:4",
    "Behold, he that keepeth Israel shall neither slumber nor sleep.",
    "Prayer",
  ),
  Verse(
    "Philippians 2:7",
    "But made himself of no reputation, and took upon him the form of a servant, and was made in the likeness of men:",
    "Joy",
  ),
  Verse(
    "Philippians 1:6",
    "Being confident of this very thing, that he which hath begun a good work in you will perform it until the day of Jesus Christ:",
    "Joy",
  ),
  Verse(
    "Hebrews 12:21",
    "And so terrible was the sight, that Moses said, I exceedingly fear and quake:)",
    "Faith",
  ),
  Verse(
    "Psalm 145:15",
    "The eyes of all wait upon thee; and thou givest them their meat in due season.",
    "Prayer",
  ),
  Verse(
    "Philippians 4:21",
    "Salute every saint in Christ Jesus. The brethren which are with me greet you.",
    "Joy",
  ),
  Verse(
    "Psalm 139:23",
    "Search me, O God, and know my heart: try me, and know my thoughts:",
    "Prayer",
  ),
  Verse(
    "Romans 15:20",
    "Yea, so have I strived to preach the gospel, not where Christ was named, lest I should build upon another man’s foundation:",
    "Hope",
  ),
  Verse(
    "Proverbs 15:2",
    "The tongue of the wise useth knowledge aright: but the mouth of fools poureth out foolishness.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 22:1",
    "A good name is rather to be chosen than great riches, and loving favour rather than silver and gold.",
    "Wisdom",
  ),
  Verse(
    "Colossians 4:11",
    "And Jesus, which is called Justus, who are of the circumcision. These only are my fellowworkers unto the kingdom of God, which have been a comfort unto me.",
    "Gratitude",
  ),
  Verse(
    "Matthew 6:29",
    "And yet I say unto you, That even Solomon in all his glory was not arrayed like one of these.",
    "Faith",
  ),
  Verse(
    "Ephesians 4:12",
    "For the perfecting of the saints, for the work of the ministry, for the edifying of the body of Christ:",
    "Grace",
  ),
  Verse(
    "Ephesians 3:9",
    "And to make all men see what is the fellowship of the mystery, which from the beginning of the world hath been hid in God, who created all things by Jesus Christ:",
    "Grace",
  ),
  Verse(
    "Psalm 34:15",
    "The eyes of the LORD are upon the righteous, and his ears are open unto their cry.",
    "Prayer",
  ),
  Verse(
    "Psalm 148:7",
    "Praise the LORD from the earth, ye dragons, and all deeps:",
    "Prayer",
  ),
  Verse(
    "Hebrews 11:6",
    "But without faith it is impossible to please him : for he that cometh to God must believe that he is, and that he is a rewarder of them that diligently seek him.",
    "Faith",
  ),
  Verse(
    "Colossians 3:12",
    "Put on therefore, as the elect of God, holy and beloved, bowels of mercies, kindness, humbleness of mind, meekness, longsuffering;",
    "Gratitude",
  ),
  Verse(
    "Psalm 139:9",
    "If I take the wings of the morning, and dwell in the uttermost parts of the sea;",
    "Prayer",
  ),
  Verse(
    "1 Peter 4:15",
    "But let none of you suffer as a murderer, or as a thief, or as an evildoer, or as a busybody in other men’s matters.",
    "Hope",
  ),
  Verse(
    "Matthew 6:2",
    "Therefore when thou doest thine alms, do not sound a trumpet before thee, as the hypocrites do in the synagogues and in the streets, that they may have glory of men. Verily I say unto you, They have their reward.",
    "Faith",
  ),
  Verse(
    "Proverbs 4:7",
    "Wisdom is the principal thing; therefore get wisdom: and with all thy getting get understanding.",
    "Wisdom",
  ),
  Verse(
    "Ephesians 4:3",
    "Endeavouring to keep the unity of the Spirit in the bond of peace.",
    "Grace",
  ),
  Verse(
    "Galatians 5:19",
    "Now the works of the flesh are manifest, which are these ; Adultery, fornication, uncleanness, lasciviousness,",
    "Faith",
  ),
  Verse(
    "Romans 15:8",
    "Now I say that Jesus Christ was a minister of the circumcision for the truth of God, to confirm the promises made unto the fathers:",
    "Hope",
  ),
  Verse(
    "Philippians 2:9",
    "Wherefore God also hath highly exalted him, and given him a name which is above every name:",
    "Joy",
  ),
  Verse(
    "Galatians 5:23",
    "Meekness, temperance: against such there is no law.",
    "Faith",
  ),
  Verse(
    "Psalm 121:7",
    "The LORD shall preserve thee from all evil: he shall preserve thy soul.",
    "Prayer",
  ),
  Verse(
    "Psalm 63:10",
    "They shall fall by the sword: they shall be a portion for foxes.",
    "Prayer",
  ),
  Verse(
    "Proverbs 18:22",
    "Whoso findeth a wife findeth a good thing , and obtaineth favour of the LORD .",
    "Wisdom",
  ),
  Verse(
    "Ephesians 5:26",
    "That he might sanctify and cleanse it with the washing of water by the word,",
    "Grace",
  ),
  Verse(
    "Proverbs 21:16",
    "The man that wandereth out of the way of understanding shall remain in the congregation of the dead.",
    "Wisdom",
  ),
  Verse(
    "Psalm 37:9",
    "For evildoers shall be cut off: but those that wait upon the LORD , they shall inherit the earth.",
    "Prayer",
  ),
  Verse(
    "Psalm 27:9",
    "Hide not thy face far from me; put not thy servant away in anger: thou hast been my help; leave me not, neither forsake me, O God of my salvation.",
    "Prayer",
  ),
  Verse(
    "James 5:6",
    "Ye have condemned and killed the just; and he doth not resist you.",
    "Wisdom",
  ),
  Verse(
    "Hebrews 11:1",
    "Now faith is the substance of things hoped for, the evidence of things not seen.",
    "Faith",
  ),
  Verse(
    "Matthew 6:13",
    "And lead us not into temptation, but deliver us from evil: For thine is the kingdom, and the power, and the glory, for ever. Amen.",
    "Faith",
  ),
  Verse(
    "Philippians 2:5",
    "Let this mind be in you, which was also in Christ Jesus:",
    "Joy",
  ),
  Verse(
    "1 Peter 4:19",
    "Wherefore let them that suffer according to the will of God commit the keeping of their souls to him in well doing, as unto a faithful Creator.",
    "Hope",
  ),
  Verse(
    "Hebrews 11:35",
    "Women received their dead raised to life again: and others were tortured, not accepting deliverance; that they might obtain a better resurrection:",
    "Faith",
  ),
  Verse(
    "Colossians 4:14",
    "Luke, the beloved physician, and Demas, greet you.",
    "Gratitude",
  ),
  Verse(
    "Proverbs 18:10",
    "The name of the LORD is a strong tower: the righteous runneth into it, and is safe.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 3:25",
    "Be not afraid of sudden fear, neither of the desolation of the wicked, when it cometh.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 3:34",
    "Surely he scorneth the scorners: but he giveth grace unto the lowly.",
    "Wisdom",
  ),
  Verse(
    "John 15:26",
    "But when the Comforter is come, whom I will send unto you from the Father, even the Spirit of truth, which proceedeth from the Father, he shall testify of me:",
    "Love",
  ),
  Verse(
    "Hebrews 11:22",
    "By faith Joseph, when he died, made mention of the departing of the children of Israel; and gave commandment concerning his bones.",
    "Faith",
  ),
  Verse(
    "1 Corinthians 13:2",
    "And though I have the gift of prophecy, and understand all mysteries, and all knowledge; and though I have all faith, so that I could remove mountains, and have not charity, I am nothing.",
    "Love",
  ),
  Verse(
    "Romans 5:16",
    "And not as it was by one that sinned, so is the gift: for the judgment was by one to condemnation, but the free gift is of many offences unto justification.",
    "Hope",
  ),
  Verse(
    "Colossians 4:8",
    "Whom I have sent unto you for the same purpose, that he might know your estate, and comfort your hearts;",
    "Gratitude",
  ),
  Verse(
    "1 John 3:11",
    "For this is the message that ye heard from the beginning, that we should love one another.",
    "Love",
  ),
  Verse(
    "Psalm 139:16",
    "Thine eyes did see my substance, yet being unperfect; and in thy book all my members were written, which in continuance were fashioned, when as yet there was none of them.",
    "Prayer",
  ),
  Verse(
    "Psalm 118:21",
    "I will praise thee: for thou hast heard me, and art become my salvation.",
    "Prayer",
  ),
  Verse(
    "Proverbs 15:8",
    "The sacrifice of the wicked is an abomination to the LORD : but the prayer of the upright is his delight.",
    "Wisdom",
  ),
  Verse(
    "1 John 4:9",
    "In this was manifested the love of God toward us, because that God sent his only begotten Son into the world, that we might live through him.",
    "Love",
  ),
  Verse(
    "Matthew 7:5",
    "Thou hypocrite, first cast out the beam out of thine own eye; and then shalt thou see clearly to cast out the mote out of thy brother’s eye.",
    "Faith",
  ),
  Verse(
    "James 3:17",
    "But the wisdom that is from above is first pure, then peaceable, gentle, and easy to be intreated, full of mercy and good fruits, without partiality, and without hypocrisy.",
    "Wisdom",
  ),
  Verse(
    "2 Corinthians 4:5",
    "For we preach not ourselves, but Christ Jesus the Lord; and ourselves your servants for Jesus’ sake.",
    "Grace",
  ),
  Verse(
    "1 Thessalonians 5:6",
    "Therefore let us not sleep, as do others; but let us watch and be sober.",
    "Hope",
  ),
  Verse(
    "1 Peter 1:23",
    "Being born again, not of corruptible seed, but of incorruptible, by the word of God, which liveth and abideth for ever.",
    "Hope",
  ),
  Verse(
    "1 Corinthians 13:9",
    "For we know in part, and we prophesy in part.",
    "Love",
  ),
  Verse(
    "Ephesians 1:16",
    "Cease not to give thanks for you, making mention of you in my prayers;",
    "Grace",
  ),
  Verse(
    "Matthew 11:7",
    "And as they departed, Jesus began to say unto the multitudes concerning John, What went ye out into the wilderness to see? A reed shaken with the wind?",
    "Faith",
  ),
  Verse(
    "Proverbs 19:1",
    "Better is the poor that walketh in his integrity, than he that is perverse in his lips, and is a fool.",
    "Wisdom",
  ),
  Verse(
    "Ephesians 6:8",
    "Knowing that whatsoever good thing any man doeth, the same shall he receive of the Lord, whether he be bond or free.",
    "Grace",
  ),
  Verse(
    "John 15:18",
    "If the world hate you, ye know that it hated me before it hated you.",
    "Love",
  ),
  Verse(
    "1 Thessalonians 5:21",
    "Prove all things; hold fast that which is good.",
    "Hope",
  ),
  Verse(
    "Psalm 147:3",
    "He healeth the broken in heart, and bindeth up their wounds.",
    "Prayer",
  ),
  Verse(
    "Proverbs 3:4",
    "So shalt thou find favour and good understanding in the sight of God and man.",
    "Wisdom",
  ),
  Verse(
    "1 John 5:9",
    "If we receive the witness of men, the witness of God is greater: for this is the witness of God which he hath testified of his Son.",
    "Love",
  ),
  Verse(
    "Psalm 19:4",
    "Their line is gone out through all the earth, and their words to the end of the world. In them hath he set a tabernacle for the sun,",
    "Prayer",
  ),
  Verse(
    "1 John 3:23",
    "And this is his commandment, That we should believe on the name of his Son Jesus Christ, and love one another, as he gave us commandment.",
    "Love",
  ),
  Verse(
    "John 14:1",
    "Let not your heart be troubled: ye believe in God, believe also in me.",
    "Love",
  ),
  Verse(
    "Philippians 3:4",
    "Though I might also have confidence in the flesh. If any other man thinketh that he hath whereof he might trust in the flesh, I more:",
    "Joy",
  ),
  Verse(
    "Philippians 4:12",
    "I know both how to be abased, and I know how to abound: every where and in all things I am instructed both to be full and to be hungry, both to abound and to suffer need.",
    "Joy",
  ),
  Verse(
    "Philippians 4:10",
    "But I rejoiced in the Lord greatly, that now at the last your care of me hath flourished again; wherein ye were also careful, but ye lacked opportunity.",
    "Joy",
  ),
  Verse(
    "Psalm 16:4",
    "Their sorrows shall be multiplied that hasten after another god: their drink offerings of blood will I not offer, nor take up their names into my lips.",
    "Prayer",
  ),
  Verse(
    "Psalm 91:1",
    "He that dwelleth in the secret place of the most High shall abide under the shadow of the Almighty.",
    "Prayer",
  ),
  Verse(
    "Psalm 63:6",
    "When I remember thee upon my bed, and meditate on thee in the night watches.",
    "Prayer",
  ),
  Verse(
    "Colossians 3:1",
    "If ye then be risen with Christ, seek those things which are above, where Christ sitteth on the right hand of God.",
    "Gratitude",
  ),
  Verse(
    "Romans 5:17",
    "For if by one man’s offence death reigned by one; much more they which receive abundance of grace and of the gift of righteousness shall reign in life by one, Jesus Christ.)",
    "Hope",
  ),
  Verse(
    "Romans 12:18",
    "If it be possible, as much as lieth in you, live peaceably with all men.",
    "Hope",
  ),
  Verse(
    "James 1:2",
    "My brethren, count it all joy when ye fall into divers temptations;",
    "Wisdom",
  ),
  Verse(
    "Ephesians 5:3",
    "But fornication, and all uncleanness, or covetousness, let it not be once named among you, as becometh saints;",
    "Grace",
  ),
  Verse(
    "Proverbs 16:27",
    "An ungodly man diggeth up evil: and in his lips there is as a burning fire.",
    "Wisdom",
  ),
  Verse(
    "Psalm 130:2",
    "Lord, hear my voice: let thine ears be attentive to the voice of my supplications.",
    "Prayer",
  ),
  Verse(
    "Matthew 6:3",
    "But when thou doest alms, let not thy left hand know what thy right hand doeth:",
    "Faith",
  ),
  Verse(
    "Hebrews 11:30",
    "By faith the walls of Jericho fell down, after they were compassed about seven days.",
    "Faith",
  ),
  Verse(
    "Proverbs 19:4",
    "Wealth maketh many friends; but the poor is separated from his neighbour.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 22:19",
    "That thy trust may be in the LORD , I have made known to thee this day, even to thee.",
    "Wisdom",
  ),
  Verse(
    "Galatians 5:13",
    "For, brethren, ye have been called unto liberty; only use not liberty for an occasion to the flesh, but by love serve one another.",
    "Faith",
  ),
  Verse(
    "Matthew 11:14",
    "And if ye will receive it , this is Elias, which was for to come.",
    "Faith",
  ),
  Verse(
    "1 Peter 5:8",
    "Be sober, be vigilant; because your adversary the devil, as a roaring lion, walketh about, seeking whom he may devour:",
    "Hope",
  ),
  Verse(
    "Proverbs 19:14",
    "House and riches are the inheritance of fathers: and a prudent wife is from the LORD .",
    "Wisdom",
  ),
  Verse(
    "Romans 8:6",
    "For to be carnally minded is death; but to be spiritually minded is life and peace.",
    "Hope",
  ),
  Verse(
    "Ephesians 6:1",
    "Children, obey your parents in the Lord: for this is right.",
    "Grace",
  ),
  Verse(
    "Psalm 112:3",
    "Wealth and riches shall be in his house: and his righteousness endureth for ever.",
    "Prayer",
  ),
  Verse(
    "Colossians 3:5",
    "Mortify therefore your members which are upon the earth; fornication, uncleanness, inordinate affection, evil concupiscence, and covetousness, which is idolatry:",
    "Gratitude",
  ),
  Verse(
    "1 John 3:18",
    "My little children, let us not love in word, neither in tongue; but in deed and in truth.",
    "Love",
  ),
  Verse(
    "Romans 15:19",
    "Through mighty signs and wonders, by the power of the Spirit of God; so that from Jerusalem, and round about unto Illyricum, I have fully preached the gospel of Christ.",
    "Hope",
  ),
  Verse(
    "Psalm 112:8",
    "His heart is established, he shall not be afraid, until he see his desire upon his enemies.",
    "Prayer",
  ),
  Verse(
    "James 5:8",
    "Be ye also patient; stablish your hearts: for the coming of the Lord draweth nigh.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 16:32",
    "He that is slow to anger is better than the mighty; and he that ruleth his spirit than he that taketh a city.",
    "Wisdom",
  ),
  Verse(
    "1 John 3:4",
    "Whosoever committeth sin transgresseth also the law: for sin is the transgression of the law.",
    "Love",
  ),
  Verse(
    "John 15:12",
    "This is my commandment, That ye love one another, as I have loved you.",
    "Love",
  ),
  Verse(
    "Galatians 5:1",
    "Stand fast therefore in the liberty wherewith Christ hath made us free, and be not entangled again with the yoke of bondage.",
    "Faith",
  ),
  Verse(
    "John 14:12",
    "Verily, verily, I say unto you, He that believeth on me, the works that I do shall he do also; and greater works than these shall he do; because I go unto my Father.",
    "Love",
  ),
  Verse(
    "Philippians 2:28",
    "I sent him therefore the more carefully, that, when ye see him again, ye may rejoice, and that I may be the less sorrowful.",
    "Joy",
  ),
  Verse(
    "1 John 4:11",
    "Beloved, if God so loved us, we ought also to love one another.",
    "Love",
  ),
  Verse(
    "Proverbs 4:26",
    "Ponder the path of thy feet, and let all thy ways be established.",
    "Wisdom",
  ),
  Verse(
    "1 Peter 5:9",
    "Whom resist stedfast in the faith, knowing that the same afflictions are accomplished in your brethren that are in the world.",
    "Hope",
  ),
  Verse(
    "Proverbs 4:17",
    "For they eat the bread of wickedness, and drink the wine of violence.",
    "Wisdom",
  ),
  Verse(
    "Psalm 37:15",
    "Their sword shall enter into their own heart, and their bows shall be broken.",
    "Prayer",
  ),
  Verse(
    "Proverbs 21:27",
    "The sacrifice of the wicked is abomination: how much more, when he bringeth it with a wicked mind?",
    "Wisdom",
  ),
  Verse(
    "2 Corinthians 9:10",
    "Now he that ministereth seed to the sower both minister bread for your food, and multiply your seed sown, and increase the fruits of your righteousness;)",
    "Grace",
  ),
  Verse(
    "1 John 4:18",
    "There is no fear in love; but perfect love casteth out fear: because fear hath torment. He that feareth is not made perfect in love.",
    "Love",
  ),
  Verse(
    "Psalm 37:4",
    "Delight thyself also in the LORD ; and he shall give thee the desires of thine heart.",
    "Prayer",
  ),
  Verse(
    "Psalm 118:25",
    "Save now, I beseech thee, O LORD : O LORD , I beseech thee, send now prosperity.",
    "Prayer",
  ),
  Verse(
    "Colossians 4:5",
    "Walk in wisdom toward them that are without, redeeming the time.",
    "Gratitude",
  ),
  Verse(
    "Psalm 147:4",
    "He telleth the number of the stars; he calleth them all by their names.",
    "Prayer",
  ),
  Verse(
    "Psalm 37:29",
    "The righteous shall inherit the land, and dwell therein for ever.",
    "Prayer",
  ),
  Verse(
    "Ephesians 3:18",
    "May be able to comprehend with all saints what is the breadth, and length, and depth, and height;",
    "Grace",
  ),
  Verse(
    "Proverbs 17:15",
    "He that justifieth the wicked, and he that condemneth the just, even they both are abomination to the LORD .",
    "Wisdom",
  ),
  Verse(
    "1 John 5:4",
    "For whatsoever is born of God overcometh the world: and this is the victory that overcometh the world, even our faith.",
    "Love",
  ),
  Verse(
    "Psalm 139:2",
    "Thou knowest my downsitting and mine uprising, thou understandest my thought afar off.",
    "Prayer",
  ),
  Verse(
    "Psalm 116:5",
    "Gracious is the LORD , and righteous; yea, our God is merciful.",
    "Prayer",
  ),
  Verse(
    "John 17:24",
    "Father, I will that they also, whom thou hast given me, be with me where I am; that they may behold my glory, which thou hast given me: for thou lovedst me before the foundation of the world.",
    "Love",
  ),
  Verse(
    "Psalm 91:15",
    "He shall call upon me, and I will answer him: I will be with him in trouble; I will deliver him, and honour him.",
    "Prayer",
  ),
  Verse(
    "James 3:4",
    "Behold also the ships, which though they be so great, and are driven of fierce winds, yet are they turned about with a very small helm, whithersoever the governor listeth.",
    "Wisdom",
  ),
  Verse(
    "Psalm 34:11",
    "Come, ye children, hearken unto me: I will teach you the fear of the LORD .",
    "Prayer",
  ),
  Verse(
    "James 1:15",
    "Then when lust hath conceived, it bringeth forth sin: and sin, when it is finished, bringeth forth death.",
    "Wisdom",
  ),
  Verse(
    "John 17:22",
    "And the glory which thou gavest me I have given them; that they may be one, even as we are one:",
    "Love",
  ),
  Verse(
    "Psalm 130:1",
    "Out of the depths have I cried unto thee, O LORD .",
    "Prayer",
  ),
  Verse(
    "Romans 8:31",
    "What shall we then say to these things? If God be for us, who can be against us?",
    "Hope",
  ),
  Verse(
    "Philippians 1:21",
    "For to me to live is Christ, and to die is gain.",
    "Joy",
  ),
  Verse(
    "Romans 12:6",
    "Having then gifts differing according to the grace that is given to us, whether prophecy, let us prophesy according to the proportion of faith;",
    "Hope",
  ),
  Verse(
    "Ephesians 4:31",
    "Let all bitterness, and wrath, and anger, and clamour, and evil speaking, be put away from you, with all malice:",
    "Grace",
  ),
  Verse(
    "Psalm 118:20",
    "This gate of the LORD , into which the righteous shall enter.",
    "Prayer",
  ),
  Verse(
    "Matthew 6:17",
    "But thou, when thou fastest, anoint thine head, and wash thy face;",
    "Faith",
  ),
  Verse(
    "Philippians 4:23",
    "The grace of our Lord Jesus Christ be with you all. Amen.",
    "Joy",
  ),
  Verse(
    "Romans 12:19",
    "Dearly beloved, avenge not yourselves, but rather give place unto wrath: for it is written, Vengeance is mine; I will repay, saith the Lord.",
    "Hope",
  ),
  Verse(
    "Proverbs 18:1",
    "Through desire a man, having separated himself, seeketh and intermeddleth with all wisdom.",
    "Wisdom",
  ),
  Verse(
    "Psalm 19:8",
    "The statutes of the LORD are right, rejoicing the heart: the commandment of the LORD is pure, enlightening the eyes.",
    "Prayer",
  ),
  Verse(
    "Ephesians 5:31",
    "For this cause shall a man leave his father and mother, and shall be joined unto his wife, and they two shall be one flesh.",
    "Grace",
  ),
  Verse(
    "John 14:2",
    "In my Father’s house are many mansions: if it were not so , I would have told you. I go to prepare a place for you.",
    "Love",
  ),
  Verse(
    "2 Corinthians 4:12",
    "So then death worketh in us, but life in you.",
    "Grace",
  ),
  Verse(
    "1 John 5:7",
    "For there are three that bear record in heaven, the Father, the Word, and the Holy Ghost: and these three are one.",
    "Love",
  ),
  Verse(
    "Hebrews 13:13",
    "Let us go forth therefore unto him without the camp, bearing his reproach.",
    "Faith",
  ),
  Verse(
    "Proverbs 4:20",
    "My son, attend to my words; incline thine ear unto my sayings.",
    "Wisdom",
  ),
  Verse(
    "Ephesians 1:18",
    "The eyes of your understanding being enlightened; that ye may know what is the hope of his calling, and what the riches of the glory of his inheritance in the saints,",
    "Grace",
  ),
  Verse(
    "Psalm 112:4",
    "Unto the upright there ariseth light in the darkness: he is gracious, and full of compassion, and righteous.",
    "Prayer",
  ),
  Verse(
    "Romans 15:14",
    "And I myself also am persuaded of you, my brethren, that ye also are full of goodness, filled with all knowledge, able also to admonish one another.",
    "Hope",
  ),
  Verse(
    "Romans 15:15",
    "Nevertheless, brethren, I have written the more boldly unto you in some sort, as putting you in mind, because of the grace that is given to me of God,",
    "Hope",
  ),
  Verse(
    "Psalm 147:18",
    "He sendeth out his word, and melteth them: he causeth his wind to blow, and the waters flow.",
    "Prayer",
  ),
  Verse(
    "Psalm 118:2",
    "Let Israel now say, that his mercy endureth for ever.",
    "Prayer",
  ),
  Verse(
    "Proverbs 16:16",
    "How much better is it to get wisdom than gold! and to get understanding rather to be chosen than silver!",
    "Wisdom",
  ),
  Verse(
    "Hebrews 12:25",
    "See that ye refuse not him that speaketh. For if they escaped not who refused him that spake on earth, much more shall not we escape , if we turn away from him that speaketh from heaven:",
    "Faith",
  ),
  Verse(
    "Ephesians 4:4",
    "There is one body, and one Spirit, even as ye are called in one hope of your calling;",
    "Grace",
  ),
  Verse(
    "Psalm 91:6",
    "Nor for the pestilence that walketh in darkness; nor for the destruction that wasteth at noonday.",
    "Prayer",
  ),
  Verse(
    "Philippians 4:22",
    "All the saints salute you, chiefly they that are of Caesar’s household.",
    "Joy",
  ),
  Verse(
    "Ephesians 5:8",
    "For ye were sometimes darkness, but now are ye light in the Lord: walk as children of light:",
    "Grace",
  ),
  Verse(
    "Proverbs 21:31",
    "The horse is prepared against the day of battle: but safety is of the LORD .",
    "Wisdom",
  ),
  Verse(
    "Psalm 84:12",
    "O LORD of hosts, blessed is the man that trusteth in thee.",
    "Prayer",
  ),
  Verse(
    "Ephesians 6:14",
    "Stand therefore, having your loins girt about with truth, and having on the breastplate of righteousness;",
    "Grace",
  ),
  Verse(
    "Proverbs 15:22",
    "Without counsel purposes are disappointed: but in the multitude of counsellors they are established.",
    "Wisdom",
  ),
  Verse(
    "Matthew 6:12",
    "And forgive us our debts, as we forgive our debtors.",
    "Faith",
  ),
  Verse(
    "Hebrews 12:16",
    "Lest there be any fornicator, or profane person, as Esau, who for one morsel of meat sold his birthright.",
    "Faith",
  ),
  Verse(
    "Psalm 125:5",
    "As for such as turn aside unto their crooked ways, the LORD shall lead them forth with the workers of iniquity: but peace shall be upon Israel.",
    "Prayer",
  ),
  Verse(
    "James 5:16",
    "Confess your faults one to another, and pray one for another, that ye may be healed. The effectual fervent prayer of a righteous man availeth much.",
    "Wisdom",
  ),
  Verse(
    "Psalm 103:6",
    "The LORD executeth righteousness and judgment for all that are oppressed.",
    "Prayer",
  ),
  Verse(
    "Matthew 7:3",
    "And why beholdest thou the mote that is in thy brother’s eye, but considerest not the beam that is in thine own eye?",
    "Faith",
  ),
  Verse(
    "1 Peter 4:8",
    "And above all things have fervent charity among yourselves: for charity shall cover the multitude of sins.",
    "Hope",
  ),
  Verse(
    "Matthew 6:34",
    "Take therefore no thought for the morrow: for the morrow shall take thought for the things of itself. Sufficient unto the day is the evil thereof.",
    "Faith",
  ),
  Verse(
    "Proverbs 22:14",
    "The mouth of strange women is a deep pit: he that is abhorred of the LORD shall fall therein.",
    "Wisdom",
  ),
  Verse(
    "Matthew 7:11",
    "If ye then, being evil, know how to give good gifts unto your children, how much more shall your Father which is in heaven give good things to them that ask him?",
    "Faith",
  ),
  Verse(
    "Ephesians 6:2",
    "Honour thy father and mother; (which is the first commandment with promise;)",
    "Grace",
  ),
  Verse(
    "Psalm 27:8",
    "When thou saidst , Seek ye my face; my heart said unto thee, Thy face, LORD , will I seek.",
    "Prayer",
  ),
  Verse(
    "1 John 5:11",
    "And this is the record, that God hath given to us eternal life, and this life is in his Son.",
    "Love",
  ),
  Verse(
    "Proverbs 22:10",
    "Cast out the scorner, and contention shall go out; yea, strife and reproach shall cease.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 15:27",
    "He that is greedy of gain troubleth his own house; but he that hateth gifts shall live.",
    "Wisdom",
  ),
  Verse(
    "John 17:15",
    "I pray not that thou shouldest take them out of the world, but that thou shouldest keep them from the evil.",
    "Love",
  ),
  Verse(
    "Psalm 84:4",
    "Blessed are they that dwell in thy house: they will be still praising thee. Selah.",
    "Prayer",
  ),
  Verse(
    "Proverbs 19:27",
    "Cease, my son, to hear the instruction that causeth to err from the words of knowledge.",
    "Wisdom",
  ),
  Verse(
    "Hebrews 12:15",
    "Looking diligently lest any man fail of the grace of God; lest any root of bitterness springing up trouble you , and thereby many be defiled;",
    "Faith",
  ),
  Verse(
    "1 Peter 4:13",
    "But rejoice, inasmuch as ye are partakers of Christ’s sufferings; that, when his glory shall be revealed, ye may be glad also with exceeding joy.",
    "Hope",
  ),
  Verse(
    "Psalm 116:8",
    "For thou hast delivered my soul from death, mine eyes from tears, and my feet from falling.",
    "Prayer",
  ),
  Verse(
    "Matthew 6:15",
    "But if ye forgive not men their trespasses, neither will your Father forgive your trespasses.",
    "Faith",
  ),
  Verse(
    "2 Corinthians 5:15",
    "And that he died for all, that they which live should not henceforth live unto themselves, but unto him which died for them, and rose again.",
    "Grace",
  ),
  Verse(
    "James 5:13",
    "Is any among you afflicted? let him pray. Is any merry? let him sing psalms.",
    "Wisdom",
  ),
  Verse(
    "Psalm 27:6",
    "And now shall mine head be lifted up above mine enemies round about me: therefore will I offer in his tabernacle sacrifices of joy; I will sing, yea, I will sing praises unto the LORD .",
    "Prayer",
  ),
  Verse(
    "1 Peter 4:18",
    "And if the righteous scarcely be saved, where shall the ungodly and the sinner appear?",
    "Hope",
  ),
  Verse(
    "1 John 5:10",
    "He that believeth on the Son of God hath the witness in himself: he that believeth not God hath made him a liar; because he believeth not the record that God gave of his Son.",
    "Love",
  ),
  Verse(
    "Psalm 148:9",
    "Mountains, and all hills; fruitful trees, and all cedars:",
    "Prayer",
  ),
  Verse(
    "Romans 8:2",
    "For the law of the Spirit of life in Christ Jesus hath made me free from the law of sin and death.",
    "Hope",
  ),
  Verse(
    "Psalm 84:1",
    "How amiable are thy tabernacles, O LORD of hosts!",
    "Prayer",
  ),
  Verse(
    "Romans 15:6",
    "That ye may with one mind and one mouth glorify God, even the Father of our Lord Jesus Christ.",
    "Hope",
  ),
  Verse(
    "John 15:22",
    "If I had not come and spoken unto them, they had not had sin: but now they have no cloke for their sin.",
    "Love",
  ),
  Verse(
    "Psalm 131:1",
    "LORD , my heart is not haughty, nor mine eyes lofty: neither do I exercise myself in great matters, or in things too high for me.",
    "Prayer",
  ),
  Verse(
    "Philippians 4:2",
    "I beseech Euodias, and beseech Syntyche, that they be of the same mind in the Lord.",
    "Joy",
  ),
  Verse(
    "Romans 8:29",
    "For whom he did foreknow, he also did predestinate to be conformed to the image of his Son, that he might be the firstborn among many brethren.",
    "Hope",
  ),
  Verse(
    "Hebrews 11:5",
    "By faith Enoch was translated that he should not see death; and was not found, because God had translated him: for before his translation he had this testimony, that he pleased God.",
    "Faith",
  ),
  Verse(
    "Colossians 3:25",
    "But he that doeth wrong shall receive for the wrong which he hath done: and there is no respect of persons.",
    "Gratitude",
  ),
  Verse(
    "Psalm 112:10",
    "The wicked shall see it , and be grieved; he shall gnash with his teeth, and melt away: the desire of the wicked shall perish.",
    "Prayer",
  ),
  Verse(
    "Romans 12:3",
    "For I say, through the grace given unto me, to every man that is among you, not to think of himself more highly than he ought to think; but to think soberly, according as God hath dealt to every man the measure of faith.",
    "Hope",
  ),
  Verse(
    "1 Peter 5:6",
    "Humble yourselves therefore under the mighty hand of God, that he may exalt you in due time:",
    "Hope",
  ),
  Verse(
    "Psalm 112:2",
    "His seed shall be mighty upon earth: the generation of the upright shall be blessed.",
    "Prayer",
  ),
  Verse(
    "Ephesians 5:17",
    "Wherefore be ye not unwise, but understanding what the will of the Lord is .",
    "Grace",
  ),
  Verse(
    "Psalm 103:11",
    "For as the heaven is high above the earth, so great is his mercy toward them that fear him.",
    "Prayer",
  ),
  Verse(
    "John 17:6",
    "I have manifested thy name unto the men which thou gavest me out of the world: thine they were, and thou gavest them me; and they have kept thy word.",
    "Love",
  ),
  Verse(
    "Proverbs 20:20",
    "Whoso curseth his father or his mother, his lamp shall be put out in obscure darkness.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 22:8",
    "He that soweth iniquity shall reap vanity: and the rod of his anger shall fail.",
    "Wisdom",
  ),
  Verse(
    "Psalm 139:12",
    "Yea, the darkness hideth not from thee; but the night shineth as the day: the darkness and the light are both alike to thee .",
    "Prayer",
  ),
  Verse(
    "John 15:27",
    "And ye also shall bear witness, because ye have been with me from the beginning.",
    "Love",
  ),
  Verse(
    "Romans 8:13",
    "For if ye live after the flesh, ye shall die: but if ye through the Spirit do mortify the deeds of the body, ye shall live.",
    "Hope",
  ),
  Verse(
    "1 Peter 1:25",
    "But the word of the Lord endureth for ever. And this is the word which by the gospel is preached unto you.",
    "Hope",
  ),
  Verse(
    "Proverbs 20:18",
    "Every purpose is established by counsel: and with good advice make war.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 19:22",
    "The desire of a man is his kindness: and a poor man is better than a liar.",
    "Wisdom",
  ),
  Verse(
    "2 Corinthians 9:3",
    "Yet have I sent the brethren, lest our boasting of you should be in vain in this behalf; that, as I said, ye may be ready:",
    "Grace",
  ),
  Verse(
    "Proverbs 19:9",
    "A false witness shall not be unpunished, and he that speaketh lies shall perish.",
    "Wisdom",
  ),
  Verse(
    "John 17:16",
    "They are not of the world, even as I am not of the world.",
    "Love",
  ),
  Verse(
    "Proverbs 15:7",
    "The lips of the wise disperse knowledge: but the heart of the foolish doeth not so.",
    "Wisdom",
  ),
  Verse(
    "Colossians 3:19",
    "Husbands, love your wives, and be not bitter against them.",
    "Gratitude",
  ),
  Verse(
    "Ephesians 3:16",
    "That he would grant you, according to the riches of his glory, to be strengthened with might by his Spirit in the inner man;",
    "Grace",
  ),
  Verse(
    "1 Thessalonians 5:14",
    "Now we exhort you, brethren, warn them that are unruly, comfort the feebleminded, support the weak, be patient toward all men .",
    "Hope",
  ),
  Verse(
    "Hebrews 11:31",
    "By faith the harlot Rahab perished not with them that believed not, when she had received the spies with peace.",
    "Faith",
  ),
  Verse(
    "Psalm 46:8",
    "Come, behold the works of the LORD , what desolations he hath made in the earth.",
    "Prayer",
  ),
  Verse(
    "Proverbs 22:3",
    "A prudent man foreseeth the evil, and hideth himself: but the simple pass on, and are punished.",
    "Wisdom",
  ),
  Verse(
    "Psalm 27:14",
    "Wait on the LORD : be of good courage, and he shall strengthen thine heart: wait, I say, on the LORD .",
    "Prayer",
  ),
  Verse(
    "Romans 8:20",
    "For the creature was made subject to vanity, not willingly, but by reason of him who hath subjected the same in hope,",
    "Hope",
  ),
  Verse(
    "Proverbs 4:24",
    "Put away from thee a froward mouth, and perverse lips put far from thee.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 17:6",
    "Children’s children are the crown of old men; and the glory of children are their fathers.",
    "Wisdom",
  ),
  Verse(
    "Matthew 5:14",
    "Ye are the light of the world. A city that is set on an hill cannot be hid.",
    "Faith",
  ),
  Verse(
    "Psalm 139:17",
    "How precious also are thy thoughts unto me, O God! how great is the sum of them!",
    "Prayer",
  ),
  Verse(
    "Psalm 145:1",
    "I will extol thee, my God, O king; and I will bless thy name for ever and ever.",
    "Prayer",
  ),
  Verse(
    "Psalm 145:16",
    "Thou openest thine hand, and satisfiest the desire of every living thing.",
    "Prayer",
  ),
  Verse(
    "James 5:11",
    "Behold, we count them happy which endure. Ye have heard of the patience of Job, and have seen the end of the Lord; that the Lord is very pitiful, and of tender mercy.",
    "Wisdom",
  ),
  Verse(
    "John 14:29",
    "And now I have told you before it come to pass, that, when it is come to pass, ye might believe.",
    "Love",
  ),
  Verse(
    "Psalm 121:1",
    "I will lift up mine eyes unto the hills, from whence cometh my help.",
    "Prayer",
  ),
  Verse(
    "Psalm 118:6",
    "The LORD is on my side; I will not fear: what can man do unto me?",
    "Prayer",
  ),
  Verse(
    "1 Thessalonians 5:10",
    "Who died for us, that, whether we wake or sleep, we should live together with him.",
    "Hope",
  ),
  Verse(
    "Proverbs 3:15",
    "She is more precious than rubies: and all the things thou canst desire are not to be compared unto her.",
    "Wisdom",
  ),
  Verse(
    "Matthew 7:14",
    "Because strait is the gate, and narrow is the way, which leadeth unto life, and few there be that find it.",
    "Faith",
  ),
  Verse(
    "Philippians 2:3",
    "Let nothing be done through strife or vainglory; but in lowliness of mind let each esteem other better than themselves.",
    "Joy",
  ),
  Verse(
    "Colossians 3:16",
    "Let the word of Christ dwell in you richly in all wisdom; teaching and admonishing one another in psalms and hymns and spiritual songs, singing with grace in your hearts to the Lord.",
    "Gratitude",
  ),
  Verse(
    "2 Corinthians 4:13",
    "We having the same spirit of faith, according as it is written, I believed, and therefore have I spoken; we also believe, and therefore speak;",
    "Grace",
  ),
  Verse(
    "John 17:25",
    "O righteous Father, the world hath not known thee: but I have known thee, and these have known that thou hast sent me.",
    "Love",
  ),
  Verse(
    "Psalm 19:14",
    "Let the words of my mouth, and the meditation of my heart, be acceptable in thy sight, O LORD , my strength, and my redeemer.",
    "Prayer",
  ),
  Verse(
    "Ephesians 5:28",
    "So ought men to love their wives as their own bodies. He that loveth his wife loveth himself.",
    "Grace",
  ),
  Verse(
    "Psalm 19:2",
    "Day unto day uttereth speech, and night unto night sheweth knowledge.",
    "Prayer",
  ),
  Verse(
    "John 15:7",
    "If ye abide in me, and my words abide in you, ye shall ask what ye will, and it shall be done unto you.",
    "Love",
  ),
  Verse(
    "Matthew 7:10",
    "Or if he ask a fish, will he give him a serpent?",
    "Faith",
  ),
  Verse(
    "James 1:22",
    "But be ye doers of the word, and not hearers only, deceiving your own selves.",
    "Wisdom",
  ),
  Verse(
    "Ephesians 4:32",
    "And be ye kind one to another, tenderhearted, forgiving one another, even as God for Christ’s sake hath forgiven you.",
    "Grace",
  ),
  Verse(
    "Matthew 5:36",
    "Neither shalt thou swear by thy head, because thou canst not make one hair white or black.",
    "Faith",
  ),
  Verse(
    "Matthew 6:8",
    "Be not ye therefore like unto them: for your Father knoweth what things ye have need of, before ye ask him.",
    "Faith",
  ),
  Verse(
    "Philippians 1:30",
    "Having the same conflict which ye saw in me, and now hear to be in me.",
    "Joy",
  ),
  Verse(
    "Ephesians 5:20",
    "Giving thanks always for all things unto God and the Father in the name of our Lord Jesus Christ;",
    "Grace",
  ),
  Verse(
    "1 Peter 1:19",
    "But with the precious blood of Christ, as of a lamb without blemish and without spot:",
    "Hope",
  ),
];

const firstReadingIndex = 21;
const readingCount = 365;
