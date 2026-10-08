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
  Verse(
    "Psalm 55:14",
    "We took sweet counsel together, and walked unto the house of God in company.",
    "Prayer",
  ),
  Verse(
    "Psalm 7:5",
    "Let the enemy persecute my soul, and take it; yea, let him tread down my life upon the earth, and lay mine honour in the dust. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 115:17",
    "The dead praise not the LORD , neither any that go down into silence.",
    "Prayer",
  ),
  Verse(
    "Psalm 72:10",
    "The kings of Tarshish and of the isles shall bring presents: the kings of Sheba and Seba shall offer gifts.",
    "Prayer",
  ),
  Verse(
    "Psalm 80:16",
    "It is burned with fire, it is cut down: they perish at the rebuke of thy countenance.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:44",
    "So shall I keep thy law continually for ever and ever.",
    "Prayer",
  ),
  Verse(
    "Psalm 57:5",
    "Be thou exalted, O God, above the heavens; let thy glory be above all the earth.",
    "Prayer",
  ),
  Verse(
    "Psalm 26:6",
    "I will wash mine hands in innocency: so will I compass thine altar, O LORD :",
    "Prayer",
  ),
  Verse(
    "Psalm 41:11",
    "By this I know that thou favourest me, because mine enemy doth not triumph over me.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:17",
    "For thou art the glory of their strength: and in thy favour our horn shall be exalted.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:19",
    "I am a stranger in the earth: hide not thy commandments from me.",
    "Prayer",
  ),
  Verse(
    "Psalm 26:3",
    "For thy lovingkindness is before mine eyes: and I have walked in thy truth.",
    "Prayer",
  ),
  Verse(
    "Psalm 77:14",
    "Thou art the God that doest wonders: thou hast declared thy strength among the people.",
    "Prayer",
  ),
  Verse(
    "Psalm 81:9",
    "There shall no strange god be in thee; neither shalt thou worship any strange god.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:82",
    "Mine eyes fail for thy word, saying, When wilt thou comfort me?",
    "Prayer",
  ),
  Verse(
    "Psalm 55:16",
    "As for me, I will call upon God; and the LORD shall save me.",
    "Prayer",
  ),
  Verse(
    "Psalm 57:4",
    "My soul is among lions: and I lie even among them that are set on fire, even the sons of men, whose teeth are spears and arrows, and their tongue a sharp sword.",
    "Prayer",
  ),
  Verse(
    "Psalm 59:11",
    "Slay them not, lest my people forget: scatter them by thy power; and bring them down, O Lord our shield.",
    "Prayer",
  ),
  Verse(
    "Psalm 38:18",
    "For I will declare mine iniquity; I will be sorry for my sin.",
    "Prayer",
  ),
  Verse(
    "Psalm 50:15",
    "And call upon me in the day of trouble: I will deliver thee, and thou shalt glorify me.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:35",
    "Make me to go in the path of thy commandments; for therein do I delight.",
    "Prayer",
  ),
  Verse(
    "Psalm 81:3",
    "Blow up the trumpet in the new moon, in the time appointed, on our solemn feast day.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:129",
    "Thy testimonies are wonderful: therefore doth my soul keep them.",
    "Prayer",
  ),
  Verse(
    "Psalm 51:18",
    "Do good in thy good pleasure unto Zion: build thou the walls of Jerusalem.",
    "Prayer",
  ),
  Verse(
    "Psalm 143:9",
    "Deliver me, O LORD , from mine enemies: I flee unto thee to hide me.",
    "Prayer",
  ),
  Verse(
    "Psalm 44:21",
    "Shall not God search this out? for he knoweth the secrets of the heart.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:16",
    "He brought streams also out of the rock, and caused waters to run down like rivers.",
    "Prayer",
  ),
  Verse(
    "Psalm 32:4",
    "For day and night thy hand was heavy upon me: my moisture is turned into the drought of summer. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 122:2",
    "Our feet shall stand within thy gates, O Jerusalem.",
    "Prayer",
  ),
  Verse(
    "Psalm 71:4",
    "Deliver me, O my God, out of the hand of the wicked, out of the hand of the unrighteous and cruel man.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:18",
    "Their soul abhorreth all manner of meat; and they draw near unto the gates of death.",
    "Prayer",
  ),
  Verse(
    "Psalm 115:11",
    "Ye that fear the LORD , trust in the LORD : he is their help and their shield.",
    "Prayer",
  ),
  Verse(
    "Psalm 73:20",
    "As a dream when one awaketh; so , O Lord, when thou awakest, thou shalt despise their image.",
    "Prayer",
  ),
  Verse(
    "Psalm 109:12",
    "Let there be none to extend mercy unto him: neither let there be any to favour his fatherless children.",
    "Prayer",
  ),
  Verse(
    "Psalm 109:29",
    "Let mine adversaries be clothed with shame, and let them cover themselves with their own confusion, as with a mantle.",
    "Prayer",
  ),
  Verse(
    "Psalm 14:4",
    "Have all the workers of iniquity no knowledge? who eat up my people as they eat bread, and call not upon the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 109:4",
    "For my love they are my adversaries: but I give myself unto prayer.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:114",
    "Thou art my hiding place and my shield: I hope in thy word.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:17",
    "The chariots of God are twenty thousand, even thousands of angels: the Lord is among them, as in Sinai, in the holy place .",
    "Prayer",
  ),
  Verse(
    "Psalm 78:45",
    "He sent divers sorts of flies among them, which devoured them; and frogs, which destroyed them.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:5",
    "O that my ways were directed to keep thy statutes!",
    "Prayer",
  ),
  Verse(
    "Psalm 104:25",
    "So is this great and wide sea, wherein are things creeping innumerable, both small and great beasts.",
    "Prayer",
  ),
  Verse(
    "Psalm 43:5",
    "Why art thou cast down, O my soul? and why art thou disquieted within me? hope in God: for I shall yet praise him, who is the health of my countenance, and my God.",
    "Prayer",
  ),
  Verse(
    "Psalm 24:8",
    "Who is this King of glory? The LORD strong and mighty, the LORD mighty in battle.",
    "Prayer",
  ),
  Verse(
    "Psalm 31:2",
    "Bow down thine ear to me; deliver me speedily: be thou my strong rock, for an house of defence to save me.",
    "Prayer",
  ),
  Verse(
    "Psalm 50:14",
    "Offer unto God thanksgiving; and pay thy vows unto the most High:",
    "Prayer",
  ),
  Verse(
    "Psalm 119:24",
    "Thy testimonies also are my delight and my counsellors.",
    "Prayer",
  ),
  Verse(
    "Psalm 86:13",
    "For great is thy mercy toward me: and thou hast delivered my soul from the lowest hell.",
    "Prayer",
  ),
  Verse(
    "Psalm 56:4",
    "In God I will praise his word, in God I have put my trust; I will not fear what flesh can do unto me.",
    "Prayer",
  ),
  Verse(
    "Psalm 47:8",
    "God reigneth over the heathen: God sitteth upon the throne of his holiness.",
    "Prayer",
  ),
  Verse(
    "Psalm 122:9",
    "Because of the house of the LORD our God I will seek thy good.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:81",
    "My soul fainteth for thy salvation: but I hope in thy word.",
    "Prayer",
  ),
  Verse(
    "Psalm 110:5",
    "The Lord at thy right hand shall strike through kings in the day of his wrath.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:32",
    "Sing unto God, ye kingdoms of the earth; O sing praises unto the Lord; Selah:",
    "Prayer",
  ),
  Verse(
    "Psalm 101:5",
    "Whoso privily slandereth his neighbour, him will I cut off: him that hath an high look and a proud heart will not I suffer.",
    "Prayer",
  ),
  Verse(
    "Psalm 132:14",
    "This is my rest for ever: here will I dwell; for I have desired it.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:39",
    "For he remembered that they were but flesh; a wind that passeth away, and cometh not again.",
    "Prayer",
  ),
  Verse(
    "Psalm 74:17",
    "Thou hast set all the borders of the earth: thou hast made summer and winter.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:24",
    "O LORD , how manifold are thy works! in wisdom hast thou made them all: the earth is full of thy riches.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:15",
    "Let not the waterflood overflow me, neither let the deep swallow me up, and let not the pit shut her mouth upon me.",
    "Prayer",
  ),
  Verse(
    "Psalm 40:17",
    "But I am poor and needy; yet the Lord thinketh upon me: thou art my help and my deliverer; make no tarrying, O my God.",
    "Prayer",
  ),
  Verse(
    "Psalm 113:6",
    "Who humbleth himself to behold the things that are in heaven, and in the earth!",
    "Prayer",
  ),
  Verse(
    "Psalm 85:9",
    "Surely his salvation is nigh them that fear him; that glory may dwell in our land.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:9",
    "He bowed the heavens also, and came down: and darkness was under his feet.",
    "Prayer",
  ),
  Verse(
    "Psalm 50:12",
    "If I were hungry, I would not tell thee: for the world is mine, and the fulness thereof.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:7",
    "Yet they say, The LORD shall not see, neither shall the God of Jacob regard it .",
    "Prayer",
  ),
  Verse(
    "Psalm 119:79",
    "Let those that fear thee turn unto me, and those that have known thy testimonies.",
    "Prayer",
  ),
  Verse(
    "Psalm 38:10",
    "My heart panteth, my strength faileth me: as for the light of mine eyes, it also is gone from me.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:25",
    "He turned their heart to hate his people, to deal subtilly with his servants.",
    "Prayer",
  ),
  Verse(
    "Psalm 99:9",
    "Exalt the LORD our God, and worship at his holy hill; for the LORD our God is holy.",
    "Prayer",
  ),
  Verse(
    "Psalm 22:15",
    "My strength is dried up like a potsherd; and my tongue cleaveth to my jaws; and thou hast brought me into the dust of death.",
    "Prayer",
  ),
  Verse(
    "Psalm 109:19",
    "Let it be unto him as the garment which covereth him, and for a girdle wherewith he is girded continually.",
    "Prayer",
  ),
  Verse(
    "Psalm 33:11",
    "The counsel of the LORD standeth for ever, the thoughts of his heart to all generations.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:20",
    "Thou makest darkness, and it is night: wherein all the beasts of the forest do creep forth .",
    "Prayer",
  ),
  Verse(
    "Psalm 30:2",
    "O LORD my God, I cried unto thee, and thou hast healed me.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:8",
    "Understand, ye brutish among the people: and ye fools, when will ye be wise?",
    "Prayer",
  ),
  Verse(
    "Psalm 25:16",
    "Turn thee unto me, and have mercy upon me; for I am desolate and afflicted.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:12",
    "They that sit in the gate speak against me; and I was the song of the drunkards.",
    "Prayer",
  ),
  Verse(
    "Psalm 24:2",
    "For he hath founded it upon the seas, and established it upon the floods.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:17",
    "Where the birds make their nests: as for the stork, the fir trees are her house.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:19",
    "In the multitude of my thoughts within me thy comforts delight my soul.",
    "Prayer",
  ),
  Verse(
    "Psalm 49:4",
    "I will incline mine ear to a parable: I will open my dark saying upon the harp.",
    "Prayer",
  ),
  Verse(
    "Psalm 51:3",
    "For I acknowledge my transgressions: and my sin is ever before me.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:45",
    "And I will walk at liberty: for I seek thy precepts.",
    "Prayer",
  ),
  Verse(
    "Psalm 35:5",
    "Let them be as chaff before the wind: and let the angel of the LORD chase them .",
    "Prayer",
  ),
  Verse(
    "Psalm 49:5",
    "Wherefore should I fear in the days of evil, when the iniquity of my heels shall compass me about?",
    "Prayer",
  ),
  Verse(
    "Psalm 109:9",
    "Let his children be fatherless, and his wife a widow.",
    "Prayer",
  ),
  Verse(
    "Psalm 41:1",
    "Blessed is he that considereth the poor: the LORD will deliver him in time of trouble.",
    "Prayer",
  ),
  Verse(
    "Psalm 64:4",
    "That they may shoot in secret at the perfect: suddenly do they shoot at him, and fear not.",
    "Prayer",
  ),
  Verse(
    "Psalm 80:13",
    "The boar out of the wood doth waste it, and the wild beast of the field doth devour it.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:27",
    "Add iniquity unto their iniquity: and let them not come into thy righteousness.",
    "Prayer",
  ),
  Verse(
    "Psalm 48:8",
    "As we have heard, so have we seen in the city of the LORD of hosts, in the city of our God: God will establish it for ever. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 45:15",
    "With gladness and rejoicing shall they be brought: they shall enter into the king’s palace.",
    "Prayer",
  ),
  Verse(
    "Psalm 95:1",
    "O come, let us sing unto the LORD : let us make a joyful noise to the rock of our salvation.",
    "Prayer",
  ),
  Verse(
    "Psalm 74:22",
    "Arise, O God, plead thine own cause: remember how the foolish man reproacheth thee daily.",
    "Prayer",
  ),
  Verse(
    "Psalm 32:7",
    "Thou art my hiding place; thou shalt preserve me from trouble; thou shalt compass me about with songs of deliverance. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:23",
    "I was also upright before him, and I kept myself from mine iniquity.",
    "Prayer",
  ),
  Verse(
    "Psalm 102:3",
    "For my days are consumed like smoke, and my bones are burned as an hearth.",
    "Prayer",
  ),
  Verse(
    "Psalm 135:11",
    "Sihon king of the Amorites, and Og king of Bashan, and all the kingdoms of Canaan:",
    "Prayer",
  ),
  Verse(
    "Psalm 74:3",
    "Lift up thy feet unto the perpetual desolations; even all that the enemy hath done wickedly in the sanctuary.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:9",
    "He that planted the ear, shall he not hear? he that formed the eye, shall he not see?",
    "Prayer",
  ),
  Verse(
    "Psalm 48:6",
    "Fear took hold upon them there, and pain, as of a woman in travail.",
    "Prayer",
  ),
  Verse(
    "Psalm 45:16",
    "Instead of thy fathers shall be thy children, whom thou mayest make princes in all the earth.",
    "Prayer",
  ),
  Verse(
    "Psalm 28:8",
    "The LORD is their strength, and he is the saving strength of his anointed.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:33",
    "For the LORD heareth the poor, and despiseth not his prisoners.",
    "Prayer",
  ),
  Verse(
    "Psalm 135:8",
    "Who smote the firstborn of Egypt, both of man and beast.",
    "Prayer",
  ),
  Verse(
    "Psalm 64:9",
    "And all men shall fear, and shall declare the work of God; for they shall wisely consider of his doing.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:28",
    "And he let it fall in the midst of their camp, round about their habitations.",
    "Prayer",
  ),
  Verse(
    "Psalm 102:16",
    "When the LORD shall build up Zion, he shall appear in his glory.",
    "Prayer",
  ),
  Verse(
    "Psalm 83:13",
    "O my God, make them like a wheel; as the stubble before the wind.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:33",
    "He turneth rivers into a wilderness, and the watersprings into dry ground;",
    "Prayer",
  ),
  Verse(
    "Psalm 119:39",
    "Turn away my reproach which I fear: for thy judgments are good.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:147",
    "I prevented the dawning of the morning, and cried: I hoped in thy word.",
    "Prayer",
  ),
  Verse(
    "Psalm 81:8",
    "Hear, O my people, and I will testify unto thee: O Israel, if thou wilt hearken unto me;",
    "Prayer",
  ),
  Verse(
    "Psalm 59:13",
    "Consume them in wrath, consume them , that they may not be: and let them know that God ruleth in Jacob unto the ends of the earth. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 55:7",
    "Lo, then would I wander far off, and remain in the wilderness. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 102:9",
    "For I have eaten ashes like bread, and mingled my drink with weeping,",
    "Prayer",
  ),
  Verse(
    "Psalm 119:1",
    "Blessed are the undefiled in the way, who walk in the law of the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 71:23",
    "My lips shall greatly rejoice when I sing unto thee; and my soul, which thou hast redeemed.",
    "Prayer",
  ),
  Verse(
    "Psalm 4:2",
    "O ye sons of men, how long will ye turn my glory into shame? how long will ye love vanity, and seek after leasing? Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 17:14",
    "From men which are thy hand, O LORD , from men of the world, which have their portion in this life, and whose belly thou fillest with thy hid treasure: they are full of children, and leave the rest of their substance to their babes.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:21",
    "With whom my hand shall be established: mine arm also shall strengthen him.",
    "Prayer",
  ),
  Verse(
    "Psalm 85:10",
    "Mercy and truth are met together; righteousness and peace have kissed each other .",
    "Prayer",
  ),
  Verse(
    "Psalm 74:9",
    "We see not our signs: there is no more any prophet: neither is there among us any that knoweth how long.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:43",
    "Thou hast also turned the edge of his sword, and hast not made him to stand in the battle.",
    "Prayer",
  ),
  Verse(
    "Psalm 129:4",
    "The LORD is righteous: he hath cut asunder the cords of the wicked.",
    "Prayer",
  ),
  Verse(
    "Psalm 66:14",
    "Which my lips have uttered, and my mouth hath spoken, when I was in trouble.",
    "Prayer",
  ),
  Verse(
    "Psalm 43:2",
    "For thou art the God of my strength: why dost thou cast me off? why go I mourning because of the oppression of the enemy?",
    "Prayer",
  ),
  Verse(
    "Psalm 38:19",
    "But mine enemies are lively, and they are strong: and they that hate me wrongfully are multiplied.",
    "Prayer",
  ),
  Verse(
    "Psalm 22:25",
    "My praise shall be of thee in the great congregation: I will pay my vows before them that fear him.",
    "Prayer",
  ),
  Verse(
    "Psalm 13:3",
    "Consider and hear me, O LORD my God: lighten mine eyes, lest I sleep the sleep of death;",
    "Prayer",
  ),
  Verse(
    "Psalm 69:7",
    "Because for thy sake I have borne reproach; shame hath covered my face.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:37",
    "It shall be established for ever as the moon, and as a faithful witness in heaven. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:11",
    "Because they rebelled against the words of God, and contemned the counsel of the most High:",
    "Prayer",
  ),
  Verse(
    "Psalm 136:11",
    "And brought out Israel from among them: for his mercy endureth for ever:",
    "Prayer",
  ),
  Verse(
    "Psalm 119:58",
    "I intreated thy favour with my whole heart: be merciful unto me according to thy word.",
    "Prayer",
  ),
  Verse(
    "Psalm 144:9",
    "I will sing a new song unto thee, O God: upon a psaltery and an instrument of ten strings will I sing praises unto thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 90:16",
    "Let thy work appear unto thy servants, and thy glory unto their children.",
    "Prayer",
  ),
  Verse(
    "Psalm 39:7",
    "And now, Lord, what wait I for? my hope is in thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 64:3",
    "Who whet their tongue like a sword, and bend their bows to shoot their arrows, even bitter words:",
    "Prayer",
  ),
  Verse(
    "Psalm 89:18",
    "For the LORD is our defence; and the Holy One of Israel is our king. …: or, our shield is of the LORD , and our king is of the Holy One of Israel",
    "Prayer",
  ),
  Verse(
    "Psalm 104:23",
    "Man goeth forth unto his work and to his labour until the evening.",
    "Prayer",
  ),
  Verse(
    "Psalm 137:3",
    "For there they that carried us away captive required of us a song; and they that wasted us required of us mirth, saying , Sing us one of the songs of Zion.",
    "Prayer",
  ),
  Verse(
    "Psalm 132:13",
    "For the LORD hath chosen Zion; he hath desired it for his habitation.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:70",
    "He chose David also his servant, and took him from the sheepfolds:",
    "Prayer",
  ),
  Verse(
    "Psalm 89:39",
    "Thou hast made void the covenant of thy servant: thou hast profaned his crown by casting it to the ground.",
    "Prayer",
  ),
  Verse(
    "Psalm 144:3",
    "LORD , what is man, that thou takest knowledge of him! or the son of man, that thou makest account of him!",
    "Prayer",
  ),
  Verse(
    "Psalm 108:9",
    "Moab is my washpot; over Edom will I cast out my shoe; over Philistia will I triumph.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:13",
    "That thou mayest give him rest from the days of adversity, until the pit be digged for the wicked.",
    "Prayer",
  ),
  Verse(
    "Psalm 102:1",
    "Hear my prayer, O LORD , and let my cry come unto thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 144:10",
    "It is he that giveth salvation unto kings: who delivereth David his servant from the hurtful sword.",
    "Prayer",
  ),
  Verse(
    "Psalm 8:2",
    "Out of the mouth of babes and sucklings hast thou ordained strength because of thine enemies, that thou mightest still the enemy and the avenger.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:98",
    "Thou through thy commandments hast made me wiser than mine enemies: for they are ever with me.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:10",
    "With my whole heart have I sought thee: O let me not wander from thy commandments.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:19",
    "Then they cry unto the LORD in their trouble, and he saveth them out of their distresses.",
    "Prayer",
  ),
  Verse(
    "Psalm 3:3",
    "But thou, O LORD , art a shield for me; my glory, and the lifter up of mine head.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:31",
    "He spake, and there came divers sorts of flies, and lice in all their coasts.",
    "Prayer",
  ),
  Verse(
    "Psalm 3:5",
    "I laid me down and slept; I awaked; for the LORD sustained me.",
    "Prayer",
  ),
  Verse(
    "Psalm 96:7",
    "Give unto the LORD , O ye kindreds of the people, give unto the LORD glory and strength.",
    "Prayer",
  ),
  Verse(
    "Psalm 2:2",
    "The kings of the earth set themselves, and the rulers take counsel together, against the LORD , and against his anointed, saying ,",
    "Prayer",
  ),
  Verse(
    "Psalm 102:10",
    "Because of thine indignation and thy wrath: for thou hast lifted me up, and cast me down.",
    "Prayer",
  ),
  Verse(
    "Psalm 44:6",
    "For I will not trust in my bow, neither shall my sword save me.",
    "Prayer",
  ),
  Verse(
    "Psalm 61:7",
    "He shall abide before God for ever: O prepare mercy and truth, which may preserve him.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:47",
    "Remember how short my time is: wherefore hast thou made all men in vain?",
    "Prayer",
  ),
  Verse(
    "Psalm 115:4",
    "Their idols are silver and gold, the work of men’s hands.",
    "Prayer",
  ),
  Verse(
    "Psalm 31:21",
    "Blessed be the LORD : for he hath shewed me his marvellous kindness in a strong city.",
    "Prayer",
  ),
  Verse(
    "Psalm 62:3",
    "How long will ye imagine mischief against a man? ye shall be slain all of you: as a bowing wall shall ye be, and as a tottering fence.",
    "Prayer",
  ),
  Verse(
    "Psalm 120:4",
    "Sharp arrows of the mighty, with coals of juniper.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:3",
    "Blessed are they that keep judgment, and he that doeth righteousness at all times.",
    "Prayer",
  ),
  Verse(
    "Psalm 143:10",
    "Teach me to do thy will; for thou art my God: thy spirit is good; lead me into the land of uprightness.",
    "Prayer",
  ),
  Verse(
    "Psalm 144:12",
    "That our sons may be as plants grown up in their youth; that our daughters may be as corner stones, polished after the similitude of a palace:",
    "Prayer",
  ),
  Verse(
    "Psalm 18:2",
    "The LORD is my rock, and my fortress, and my deliverer; my God, my strength, in whom I will trust; my buckler, and the horn of my salvation, and my high tower.",
    "Prayer",
  ),
  Verse(
    "Psalm 117:1",
    "O praise the LORD , all ye nations: praise him, all ye people.",
    "Prayer",
  ),
  Verse(
    "Psalm 65:3",
    "Iniquities prevail against me: as for our transgressions, thou shalt purge them away.",
    "Prayer",
  ),
  Verse(
    "Psalm 72:7",
    "In his days shall the righteous flourish; and abundance of peace so long as the moon endureth.",
    "Prayer",
  ),
  Verse(
    "Psalm 14:5",
    "There were they in great fear: for God is in the generation of the righteous.",
    "Prayer",
  ),
  Verse(
    "Psalm 143:1",
    "Hear my prayer, O LORD , give ear to my supplications: in thy faithfulness answer me, and in thy righteousness.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:30",
    "As for God, his way is perfect: the word of the LORD is tried: he is a buckler to all those that trust in him.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:4",
    "Thy seed will I establish for ever, and build up thy throne to all generations. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:6",
    "Thou coveredst it with the deep as with a garment: the waters stood above the mountains.",
    "Prayer",
  ),
  Verse(
    "Psalm 136:20",
    "And Og the king of Bashan: for his mercy endureth for ever:",
    "Prayer",
  ),
  Verse(
    "Psalm 39:3",
    "My heart was hot within me, while I was musing the fire burned: then spake I with my tongue,",
    "Prayer",
  ),
  Verse(
    "Psalm 109:25",
    "I became also a reproach unto them: when they looked upon me they shaked their heads.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:101",
    "I have refrained my feet from every evil way, that I might keep thy word.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:44",
    "Nevertheless he regarded their affliction, when he heard their cry:",
    "Prayer",
  ),
  Verse(
    "Psalm 135:2",
    "Ye that stand in the house of the LORD , in the courts of the house of our God,",
    "Prayer",
  ),
  Verse(
    "Psalm 60:6",
    "God hath spoken in his holiness; I will rejoice, I will divide Shechem, and mete out the valley of Succoth.",
    "Prayer",
  ),
  Verse(
    "Psalm 9:8",
    "And he shall judge the world in righteousness, he shall minister judgment to the people in uprightness.",
    "Prayer",
  ),
  Verse(
    "Psalm 66:8",
    "O bless our God, ye people, and make the voice of his praise to be heard:",
    "Prayer",
  ),
  Verse(
    "Psalm 41:2",
    "The LORD will preserve him, and keep him alive; and he shall be blessed upon the earth: and thou wilt not deliver him unto the will of his enemies.",
    "Prayer",
  ),
  Verse(
    "Psalm 35:14",
    "I behaved myself as though he had been my friend or brother: I bowed down heavily, as one that mourneth for his mother.",
    "Prayer",
  ),
  Verse(
    "Psalm 87:7",
    "As well the singers as the players on instruments shall be there: all my springs are in thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:117",
    "Hold thou me up, and I shall be safe: and I will have respect unto thy statutes continually.",
    "Prayer",
  ),
  Verse(
    "Psalm 101:4",
    "A froward heart shall depart from me: I will not know a wicked person .",
    "Prayer",
  ),
  Verse(
    "Psalm 55:17",
    "Evening, and morning, and at noon, will I pray, and cry aloud: and he shall hear my voice.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:18",
    "And they tempted God in their heart by asking meat for their lust.",
    "Prayer",
  ),
  Verse(
    "Psalm 7:12",
    "If he turn not, he will whet his sword; he hath bent his bow, and made it ready.",
    "Prayer",
  ),
  Verse(
    "Psalm 2:9",
    "Thou shalt break them with a rod of iron; thou shalt dash them in pieces like a potter’s vessel.",
    "Prayer",
  ),
  Verse(
    "Psalm 71:12",
    "O God, be not far from me: O my God, make haste for my help.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:32",
    "Let them exalt him also in the congregation of the people, and praise him in the assembly of the elders.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:8",
    "There went up a smoke out of his nostrils, and fire out of his mouth devoured: coals were kindled by it.",
    "Prayer",
  ),
  Verse(
    "Psalm 108:5",
    "Be thou exalted, O God, above the heavens: and thy glory above all the earth;",
    "Prayer",
  ),
  Verse(
    "Psalm 79:12",
    "And render unto our neighbours sevenfold into their bosom their reproach, wherewith they have reproached thee, O Lord.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:27",
    "There is little Benjamin with their ruler, the princes of Judah and their council, the princes of Zebulun, and the princes of Naphtali.",
    "Prayer",
  ),
  Verse(
    "Psalm 22:24",
    "For he hath not despised nor abhorred the affliction of the afflicted; neither hath he hid his face from him; but when he cried unto him, he heard.",
    "Prayer",
  ),
  Verse(
    "Psalm 141:1",
    "LORD , I cry unto thee: make haste unto me; give ear unto my voice, when I cry unto thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 129:3",
    "The plowers plowed upon my back: they made long their furrows.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:12",
    "Marvellous things did he in the sight of their fathers, in the land of Egypt, in the field of Zoan.",
    "Prayer",
  ),
  Verse(
    "Psalm 31:6",
    "I have hated them that regard lying vanities: but I trust in the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 115:16",
    "The heaven, even the heavens, are the LORD’s : but the earth hath he given to the children of men.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:14",
    "For the LORD will not cast off his people, neither will he forsake his inheritance.",
    "Prayer",
  ),
  Verse(
    "Psalm 57:2",
    "I will cry unto God most high; unto God that performeth all things for me.",
    "Prayer",
  ),
  Verse(
    "Psalm 11:4",
    "The LORD is in his holy temple, the LORD’s throne is in heaven: his eyes behold, his eyelids try, the children of men.",
    "Prayer",
  ),
  Verse(
    "Psalm 71:6",
    "By thee have I been holden up from the womb: thou art he that took me out of my mother’s bowels: my praise shall be continually of thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 17:15",
    "As for me, I will behold thy face in righteousness: I shall be satisfied, when I awake, with thy likeness.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:50",
    "This is my comfort in my affliction: for thy word hath quickened me.",
    "Prayer",
  ),
  Verse(
    "Psalm 44:14",
    "Thou makest us a byword among the heathen, a shaking of the head among the people.",
    "Prayer",
  ),
  Verse(
    "Psalm 76:8",
    "Thou didst cause judgment to be heard from heaven; the earth feared, and was still,",
    "Prayer",
  ),
  Verse(
    "Psalm 21:13",
    "Be thou exalted, LORD , in thine own strength: so will we sing and praise thy power.",
    "Prayer",
  ),
  Verse(
    "Psalm 31:17",
    "Let me not be ashamed, O LORD ; for I have called upon thee: let the wicked be ashamed, and let them be silent in the grave.",
    "Prayer",
  ),
  Verse(
    "Psalm 10:4",
    "The wicked, through the pride of his countenance, will not seek after God: God is not in all his thoughts.",
    "Prayer",
  ),
  Verse(
    "Psalm 81:1",
    "Sing aloud unto God our strength: make a joyful noise unto the God of Jacob.",
    "Prayer",
  ),
  Verse(
    "Psalm 6:7",
    "Mine eye is consumed because of grief; it waxeth old because of all mine enemies.",
    "Prayer",
  ),
  Verse(
    "Psalm 51:17",
    "The sacrifices of God are a broken spirit: a broken and a contrite heart, O God, thou wilt not despise.",
    "Prayer",
  ),
  Verse(
    "Psalm 88:12",
    "Shall thy wonders be known in the dark? and thy righteousness in the land of forgetfulness?",
    "Prayer",
  ),
  Verse(
    "Psalm 35:24",
    "Judge me, O LORD my God, according to thy righteousness; and let them not rejoice over me.",
    "Prayer",
  ),
  Verse(
    "Psalm 74:4",
    "Thine enemies roar in the midst of thy congregations; they set up their ensigns for signs.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:35",
    "And did eat up all the herbs in their land, and devoured the fruit of their ground.",
    "Prayer",
  ),
  Verse(
    "Psalm 137:4",
    "How shall we sing the LORD’s song in a strange land?",
    "Prayer",
  ),
  Verse(
    "Psalm 49:13",
    "This their way is their folly: yet their posterity approve their sayings. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 62:10",
    "Trust not in oppression, and become not vain in robbery: if riches increase, set not your heart upon them .",
    "Prayer",
  ),
  Verse(
    "Psalm 135:15",
    "The idols of the heathen are silver and gold, the work of men’s hands.",
    "Prayer",
  ),
  Verse(
    "Psalm 45:14",
    "She shall be brought unto the king in raiment of needlework: the virgins her companions that follow her shall be brought unto thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 80:9",
    "Thou preparedst room before it, and didst cause it to take deep root, and it filled the land.",
    "Prayer",
  ),
  Verse(
    "Psalm 26:9",
    "Gather not my soul with sinners, nor my life with bloody men:",
    "Prayer",
  ),
  Verse(
    "Psalm 119:141",
    "I am small and despised: yet do not I forget thy precepts.",
    "Prayer",
  ),
  Verse(
    "Psalm 135:9",
    "Who sent tokens and wonders into the midst of thee, O Egypt, upon Pharaoh, and upon all his servants.",
    "Prayer",
  ),
  Verse(
    "Psalm 135:20",
    "Bless the LORD , O house of Levi: ye that fear the LORD , bless the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 107:14",
    "He brought them out of darkness and the shadow of death, and brake their bands in sunder.",
    "Prayer",
  ),
  Verse(
    "Psalm 83:12",
    "Who said, Let us take to ourselves the houses of God in possession.",
    "Prayer",
  ),
  Verse(
    "Psalm 54:2",
    "Hear my prayer, O God; give ear to the words of my mouth.",
    "Prayer",
  ),
  Verse(
    "Psalm 140:9",
    "As for the head of those that compass me about, let the mischief of their own lips cover them.",
    "Prayer",
  ),
  Verse(
    "Psalm 38:12",
    "They also that seek after my life lay snares for me: and they that seek my hurt speak mischievous things, and imagine deceits all the day long.",
    "Prayer",
  ),
  Verse(
    "Psalm 22:29",
    "All they that be fat upon earth shall eat and worship: all they that go down to the dust shall bow before him: and none can keep alive his own soul.",
    "Prayer",
  ),
  Verse(
    "Psalm 96:10",
    "Say among the heathen that the LORD reigneth: the world also shall be established that it shall not be moved: he shall judge the people righteously.",
    "Prayer",
  ),
  Verse(
    "Psalm 6:3",
    "My soul is also sore vexed: but thou, O LORD , how long?",
    "Prayer",
  ),
  Verse(
    "Psalm 132:2",
    "How he sware unto the LORD , and vowed unto the mighty God of Jacob;",
    "Prayer",
  ),
  Verse(
    "Psalm 73:18",
    "Surely thou didst set them in slippery places: thou castedst them down into destruction.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:14",
    "Justice and judgment are the habitation of thy throne: mercy and truth shall go before thy face.",
    "Prayer",
  ),
  Verse(
    "Psalm 26:12",
    "My foot standeth in an even place: in the congregations will I bless the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 22:16",
    "For dogs have compassed me: the assembly of the wicked have inclosed me: they pierced my hands and my feet.",
    "Prayer",
  ),
  Verse(
    "Psalm 31:5",
    "Into thine hand I commit my spirit: thou hast redeemed me, O LORD God of truth.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:55",
    "I have remembered thy name, O LORD , in the night, and have kept thy law.",
    "Prayer",
  ),
  Verse(
    "Psalm 12:5",
    "For the oppression of the poor, for the sighing of the needy, now will I arise, saith the LORD ; I will set him in safety from him that puffeth at him.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:35",
    "And they remembered that God was their rock, and the high God their redeemer.",
    "Prayer",
  ),
  Verse(
    "Psalm 56:8",
    "Thou tellest my wanderings: put thou my tears into thy bottle: are they not in thy book?",
    "Prayer",
  ),
  Verse(
    "Psalm 42:4",
    "When I remember these things , I pour out my soul in me: for I had gone with the multitude, I went with them to the house of God, with the voice of joy and praise, with a multitude that kept holyday.",
    "Prayer",
  ),
  Verse(
    "Psalm 35:7",
    "For without cause have they hid for me their net in a pit, which without cause they have digged for my soul.",
    "Prayer",
  ),
  Verse(
    "Psalm 64:1",
    "Hear my voice, O God, in my prayer: preserve my life from fear of the enemy.",
    "Prayer",
  ),
  Verse(
    "Psalm 135:10",
    "Who smote great nations, and slew mighty kings;",
    "Prayer",
  ),
  Verse(
    "Psalm 144:5",
    "Bow thy heavens, O LORD , and come down: touch the mountains, and they shall smoke.",
    "Prayer",
  ),
  Verse(
    "Psalm 52:6",
    "The righteous also shall see, and fear, and shall laugh at him:",
    "Prayer",
  ),
  Verse(
    "Psalm 107:20",
    "He sent his word, and healed them, and delivered them from their destructions.",
    "Prayer",
  ),
  Verse(
    "Psalm 83:7",
    "Gebal, and Ammon, and Amalek; the Philistines with the inhabitants of Tyre;",
    "Prayer",
  ),
  Verse(
    "Psalm 136:5",
    "To him that by wisdom made the heavens: for his mercy endureth for ever.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:80",
    "Let my heart be sound in thy statutes; that I be not ashamed.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:24",
    "Yea, they despised the pleasant land, they believed not his word:",
    "Prayer",
  ),
  Verse(
    "Psalm 137:9",
    "Happy shall he be , that taketh and dasheth thy little ones against the stones.",
    "Prayer",
  ),
  Verse(
    "Psalm 86:1",
    "Bow down thine ear, O LORD , hear me: for I am poor and needy.",
    "Prayer",
  ),
  Verse(
    "Psalm 38:2",
    "For thine arrows stick fast in me, and thy hand presseth me sore.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:35",
    "But were mingled among the heathen, and learned their works.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:49",
    "Lord, where are thy former lovingkindnesses, which thou swarest unto David in thy truth?",
    "Prayer",
  ),
  Verse(
    "Psalm 39:10",
    "Remove thy stroke away from me: I am consumed by the blow of thine hand.",
    "Prayer",
  ),
  Verse(
    "Psalm 92:6",
    "A brutish man knoweth not; neither doth a fool understand this.",
    "Prayer",
  ),
  Verse(
    "Psalm 143:2",
    "And enter not into judgment with thy servant: for in thy sight shall no man living be justified.",
    "Prayer",
  ),
  Verse(
    "Psalm 115:6",
    "They have ears, but they hear not: noses have they, but they smell not:",
    "Prayer",
  ),
  Verse(
    "Psalm 132:7",
    "We will go into his tabernacles: we will worship at his footstool.",
    "Prayer",
  ),
  Verse(
    "Psalm 14:6",
    "Ye have shamed the counsel of the poor, because the LORD is his refuge.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:94",
    "I am thine, save me; for I have sought thy precepts.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:108",
    "Accept, I beseech thee, the freewill offerings of my mouth, O LORD , and teach me thy judgments.",
    "Prayer",
  ),
  Verse(
    "Psalm 70:4",
    "Let all those that seek thee rejoice and be glad in thee: and let such as love thy salvation say continually, Let God be magnified.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:25",
    "But murmured in their tents, and hearkened not unto the voice of the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 40:2",
    "He brought me up also out of an horrible pit, out of the miry clay, and set my feet upon a rock, and established my goings.",
    "Prayer",
  ),
  Verse(
    "Psalm 90:14",
    "O satisfy us early with thy mercy; that we may rejoice and be glad all our days.",
    "Prayer",
  ),
  Verse(
    "Psalm 17:3",
    "Thou hast proved mine heart; thou hast visited me in the night; thou hast tried me, and shalt find nothing; I am purposed that my mouth shall not transgress.",
    "Prayer",
  ),
  Verse(
    "Psalm 135:13",
    "Thy name, O LORD , endureth for ever; and thy memorial, O LORD , throughout all generations.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:51",
    "The proud have had me greatly in derision: yet have I not declined from thy law.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:16",
    "They envied Moses also in the camp, and Aaron the saint of the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 102:25",
    "Of old hast thou laid the foundation of the earth: and the heavens are the work of thy hands.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:127",
    "Therefore I love thy commandments above gold; yea, above fine gold.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:37",
    "Yea, they sacrificed their sons and their daughters unto devils,",
    "Prayer",
  ),
  Verse(
    "Psalm 78:34",
    "When he slew them, then they sought him: and they returned and enquired early after God.",
    "Prayer",
  ),
  Verse(
    "Psalm 113:8",
    "That he may set him with princes, even with the princes of his people.",
    "Prayer",
  ),
  Verse(
    "Psalm 73:9",
    "They set their mouth against the heavens, and their tongue walketh through the earth.",
    "Prayer",
  ),
  Verse(
    "Psalm 97:4",
    "His lightnings enlightened the world: the earth saw, and trembled.",
    "Prayer",
  ),
  Verse(
    "Psalm 52:8",
    "But I am like a green olive tree in the house of God: I trust in the mercy of God for ever and ever.",
    "Prayer",
  ),
  Verse(
    "Psalm 92:7",
    "When the wicked spring as the grass, and when all the workers of iniquity do flourish; it is that they shall be destroyed for ever:",
    "Prayer",
  ),
  Verse(
    "Psalm 98:5",
    "Sing unto the LORD with the harp; with the harp, and the voice of a psalm.",
    "Prayer",
  ),
  Verse(
    "Psalm 17:4",
    "Concerning the works of men, by the word of thy lips I have kept me from the paths of the destroyer.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:2",
    "Sing unto him, sing psalms unto him: talk ye of all his wondrous works.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:39",
    "Again, they are minished and brought low through oppression, affliction, and sorrow.",
    "Prayer",
  ),
  Verse(
    "Psalm 61:8",
    "So will I sing praise unto thy name for ever, that I may daily perform my vows.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:33",
    "He smote their vines also and their fig trees; and brake the trees of their coasts.",
    "Prayer",
  ),
  Verse(
    "Psalm 85:7",
    "Shew us thy mercy, O LORD , and grant us thy salvation.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:36",
    "Thou hast enlarged my steps under me, that my feet did not slip.",
    "Prayer",
  ),
  Verse(
    "Psalm 102:26",
    "They shall perish, but thou shalt endure: yea, all of them shall wax old like a garment; as a vesture shalt thou change them, and they shall be changed:",
    "Prayer",
  ),
  Verse(
    "Psalm 78:63",
    "The fire consumed their young men; and their maidens were not given to marriage.",
    "Prayer",
  ),
  Verse(
    "Psalm 66:18",
    "If I regard iniquity in my heart, the Lord will not hear me:",
    "Prayer",
  ),
  Verse(
    "Psalm 111:6",
    "He hath shewed his people the power of his works, that he may give them the heritage of the heathen.",
    "Prayer",
  ),
  Verse(
    "Psalm 81:6",
    "I removed his shoulder from the burden: his hands were delivered from the pots.",
    "Prayer",
  ),
  Verse(
    "Psalm 49:18",
    "Though while he lived he blessed his soul: and men will praise thee, when thou doest well to thyself.",
    "Prayer",
  ),
  Verse(
    "Psalm 90:1",
    "Lord, thou hast been our dwelling place in all generations.",
    "Prayer",
  ),
  Verse(
    "Psalm 109:23",
    "I am gone like the shadow when it declineth: I am tossed up and down as the locust.",
    "Prayer",
  ),
  Verse(
    "Psalm 90:10",
    "The days of our years are threescore years and ten; and if by reason of strength they be fourscore years, yet is their strength labour and sorrow; for it is soon cut off, and we fly away.",
    "Prayer",
  ),
  Verse(
    "Psalm 93:3",
    "The floods have lifted up, O LORD , the floods have lifted up their voice; the floods lift up their waves.",
    "Prayer",
  ),
  Verse(
    "Psalm 96:11",
    "Let the heavens rejoice, and let the earth be glad; let the sea roar, and the fulness thereof.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:75",
    "I know, O LORD , that thy judgments are right, and that thou in faithfulness hast afflicted me.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:17",
    "And hide not thy face from thy servant; for I am in trouble: hear me speedily.",
    "Prayer",
  ),
  Verse(
    "Psalm 142:5",
    "I cried unto thee, O LORD : I said, Thou art my refuge and my portion in the land of the living.",
    "Prayer",
  ),
  Verse(
    "Psalm 58:5",
    "Which will not hearken to the voice of charmers, charming never so wisely.",
    "Prayer",
  ),
  Verse(
    "Psalm 50:21",
    "These things hast thou done, and I kept silence; thou thoughtest that I was altogether such an one as thyself: but I will reprove thee, and set them in order before thine eyes.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:21",
    "They gave me also gall for my meat; and in my thirst they gave me vinegar to drink.",
    "Prayer",
  ),
  Verse(
    "Psalm 22:17",
    "I may tell all my bones: they look and stare upon me.",
    "Prayer",
  ),
  Verse(
    "Psalm 56:12",
    "Thy vows are upon me, O God: I will render praises unto thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:41",
    "Yea, they turned back and tempted God, and limited the Holy One of Israel.",
    "Prayer",
  ),
  Verse(
    "Psalm 97:11",
    "Light is sown for the righteous, and gladness for the upright in heart.",
    "Prayer",
  ),
  Verse(
    "Psalm 33:19",
    "To deliver their soul from death, and to keep them alive in famine.",
    "Prayer",
  ),
  Verse(
    "Psalm 136:3",
    "O give thanks to the Lord of lords: for his mercy endureth for ever.",
    "Prayer",
  ),
  Verse(
    "Psalm 83:17",
    "Let them be confounded and troubled for ever; yea, let them be put to shame, and perish:",
    "Prayer",
  ),
  Verse(
    "Psalm 105:16",
    "Moreover he called for a famine upon the land: he brake the whole staff of bread.",
    "Prayer",
  ),
  Verse(
    "Psalm 58:8",
    "As a snail which melteth, let every one of them pass away: like the untimely birth of a woman, that they may not see the sun.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:9",
    "The children of Ephraim, being armed, and carrying bows, turned back in the day of battle.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:32",
    "The humble shall see this, and be glad: and your heart shall live that seek God.",
    "Prayer",
  ),
  Verse(
    "Psalm 76:6",
    "At thy rebuke, O God of Jacob, both the chariot and horse are cast into a dead sleep.",
    "Prayer",
  ),
  Verse(
    "Psalm 38:20",
    "They also that render evil for good are mine adversaries; because I follow the thing that good is .",
    "Prayer",
  ),
  Verse(
    "Psalm 76:5",
    "The stouthearted are spoiled, they have slept their sleep: and none of the men of might have found their hands.",
    "Prayer",
  ),
  Verse(
    "Psalm 80:3",
    "Turn us again, O God, and cause thy face to shine; and we shall be saved.",
    "Prayer",
  ),
  Verse(
    "Psalm 114:6",
    "Ye mountains, that ye skipped like rams; and ye little hills, like lambs?",
    "Prayer",
  ),
  Verse(
    "Psalm 89:34",
    "My covenant will I not break, nor alter the thing that is gone out of my lips.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:136",
    "Rivers of waters run down mine eyes, because they keep not thy law.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:31",
    "And that was counted unto him for righteousness unto all generations for evermore.",
    "Prayer",
  ),
  Verse(
    "Psalm 6:2",
    "Have mercy upon me, O LORD ; for I am weak: O LORD , heal me; for my bones are vexed.",
    "Prayer",
  ),
  Verse(
    "Psalm 35:25",
    "Let them not say in their hearts, Ah, so would we have it: let them not say, We have swallowed him up.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:3",
    "And gathered them out of the lands, from the east, and from the west, from the north, and from the south.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:23",
    "They that go down to the sea in ships, that do business in great waters;",
    "Prayer",
  ),
  Verse(
    "Psalm 65:1",
    "Praise waiteth for thee, O God, in Sion: and unto thee shall the vow be performed.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:25",
    "With the merciful thou wilt shew thyself merciful; with an upright man thou wilt shew thyself upright;",
    "Prayer",
  ),
  Verse(
    "Psalm 18:49",
    "Therefore will I give thanks unto thee, O LORD , among the heathen, and sing praises unto thy name.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:10",
    "Thy congregation hath dwelt therein: thou, O God, hast prepared of thy goodness for the poor.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:10",
    "And confirmed the same unto Jacob for a law, and to Israel for an everlasting covenant:",
    "Prayer",
  ),
  Verse(
    "Psalm 119:71",
    "It is good for me that I have been afflicted; that I might learn thy statutes.",
    "Prayer",
  ),
  Verse(
    "Psalm 58:2",
    "Yea, in heart ye work wickedness; ye weigh the violence of your hands in the earth.",
    "Prayer",
  ),
  Verse(
    "Psalm 48:11",
    "Let mount Zion rejoice, let the daughters of Judah be glad, because of thy judgments.",
    "Prayer",
  ),
  Verse(
    "Psalm 101:8",
    "I will early destroy all the wicked of the land; that I may cut off all wicked doers from the city of the LORD .",
    "Prayer",
  ),
  Verse(
    "Psalm 18:5",
    "The sorrows of hell compassed me about: the snares of death prevented me.",
    "Prayer",
  ),
  Verse(
    "Psalm 60:10",
    "Wilt not thou, O God, which hadst cast us off? and thou , O God, which didst not go out with our armies?",
    "Prayer",
  ),
  Verse(
    "Psalm 127:3",
    "Lo, children are an heritage of the LORD : and the fruit of the womb is his reward.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:47",
    "And I will delight myself in thy commandments, which I have loved.",
    "Prayer",
  ),
  Verse(
    "Psalm 109:2",
    "For the mouth of the wicked and the mouth of the deceitful are opened against me: they have spoken against me with a lying tongue.",
    "Prayer",
  ),
  Verse(
    "Psalm 83:6",
    "The tabernacles of Edom, and the Ishmaelites; of Moab, and the Hagarenes;",
    "Prayer",
  ),
  Verse(
    "Psalm 104:1",
    "Bless the LORD , O my soul. O LORD my God, thou art very great; thou art clothed with honour and majesty.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:51",
    "Wherewith thine enemies have reproached, O LORD ; wherewith they have reproached the footsteps of thine anointed.",
    "Prayer",
  ),
  Verse(
    "Psalm 62:7",
    "In God is my salvation and my glory: the rock of my strength, and my refuge, is in God.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:21",
    "Thou hast rebuked the proud that are cursed, which do err from thy commandments.",
    "Prayer",
  ),
  Verse(
    "Psalm 32:2",
    "Blessed is the man unto whom the LORD imputeth not iniquity, and in whose spirit there is no guile.",
    "Prayer",
  ),
  Verse(
    "Psalm 14:1",
    "The fool hath said in his heart, There is no God. They are corrupt, they have done abominable works, there is none that doeth good.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:11",
    "The Lord gave the word: great was the company of those that published it .",
    "Prayer",
  ),
  Verse(
    "Psalm 72:19",
    "And blessed be his glorious name for ever: and let the whole earth be filled with his glory; Amen, and Amen.",
    "Prayer",
  ),
  Verse(
    "Psalm 74:5",
    "A man was famous according as he had lifted up axes upon the thick trees.",
    "Prayer",
  ),
  Verse(
    "Psalm 2:5",
    "Then shall he speak unto them in his wrath, and vex them in his sore displeasure.",
    "Prayer",
  ),
  Verse(
    "Psalm 77:17",
    "The clouds poured out water: the skies sent out a sound: thine arrows also went abroad.",
    "Prayer",
  ),
  Verse(
    "Psalm 109:18",
    "As he clothed himself with cursing like as with his garment, so let it come into his bowels like water, and like oil into his bones.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:2",
    "I sink in deep mire, where there is no standing: I am come into deep waters, where the floods overflow me.",
    "Prayer",
  ),
  Verse(
    "Psalm 101:1",
    "I will sing of mercy and judgment: unto thee, O LORD , will I sing.",
    "Prayer",
  ),
  Verse(
    "Psalm 52:5",
    "God shall likewise destroy thee for ever, he shall take thee away, and pluck thee out of thy dwelling place, and root thee out of the land of the living. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:64",
    "The earth, O LORD , is full of thy mercy: teach me thy statutes.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:160",
    "Thy word is true from the beginning: and every one of thy righteous judgments endureth for ever.",
    "Prayer",
  ),
  Verse(
    "Psalm 22:28",
    "For the kingdom is the LORD’s : and he is the governor among the nations.",
    "Prayer",
  ),
  Verse(
    "Psalm 42:7",
    "Deep calleth unto deep at the noise of thy waterspouts: all thy waves and thy billows are gone over me.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:23",
    "Therefore he said that he would destroy them, had not Moses his chosen stood before him in the breach, to turn away his wrath, lest he should destroy them .",
    "Prayer",
  ),
  Verse(
    "Psalm 10:6",
    "He hath said in his heart, I shall not be moved: for I shall never be in adversity.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:26",
    "For they persecute him whom thou hast smitten; and they talk to the grief of those whom thou hast wounded.",
    "Prayer",
  ),
  Verse(
    "Psalm 10:8",
    "He sitteth in the lurking places of the villages: in the secret places doth he murder the innocent: his eyes are privily set against the poor.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:8",
    "The earth shook, the heavens also dropped at the presence of God: even Sinai itself was moved at the presence of God, the God of Israel.",
    "Prayer",
  ),
  Verse(
    "Psalm 141:5",
    "Let the righteous smite me; it shall be a kindness: and let him reprove me; it shall be an excellent oil, which shall not break my head: for yet my prayer also shall be in their calamities.",
    "Prayer",
  ),
  Verse(
    "Psalm 2:7",
    "I will declare the decree: the LORD hath said unto me, Thou art my Son; this day have I begotten thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 102:20",
    "To hear the groaning of the prisoner; to loose those that are appointed to death;",
    "Prayer",
  ),
  Verse(
    "Psalm 36:7",
    "How excellent is thy lovingkindness, O God! therefore the children of men put their trust under the shadow of thy wings.",
    "Prayer",
  ),
  Verse(
    "Psalm 86:6",
    "Give ear, O LORD , unto my prayer; and attend to the voice of my supplications.",
    "Prayer",
  ),
  Verse(
    "Psalm 45:3",
    "Gird thy sword upon thy thigh, O most mighty, with thy glory and thy majesty.",
    "Prayer",
  ),
  Verse(
    "Psalm 59:17",
    "Unto thee, O my strength, will I sing: for God is my defence, and the God of my mercy.",
    "Prayer",
  ),
  Verse(
    "Psalm 71:15",
    "My mouth shall shew forth thy righteousness and thy salvation all the day; for I know not the numbers thereof .",
    "Prayer",
  ),
  Verse(
    "Psalm 97:1",
    "The LORD reigneth; let the earth rejoice; let the multitude of isles be glad thereof .",
    "Prayer",
  ),
  Verse(
    "Psalm 82:3",
    "Defend the poor and fatherless: do justice to the afflicted and needy.",
    "Prayer",
  ),
  Verse(
    "Psalm 76:1",
    "In Judah is God known: his name is great in Israel.",
    "Prayer",
  ),
  Verse(
    "Psalm 31:18",
    "Let the lying lips be put to silence; which speak grievous things proudly and contemptuously against the righteous.",
    "Prayer",
  ),
  Verse(
    "Psalm 79:2",
    "The dead bodies of thy servants have they given to be meat unto the fowls of the heaven, the flesh of thy saints unto the beasts of the earth.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:31",
    "The glory of the LORD shall endure for ever: the LORD shall rejoice in his works.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:10",
    "He sendeth the springs into the valleys, which run among the hills.",
    "Prayer",
  ),
  Verse(
    "Psalm 9:16",
    "The LORD is known by the judgment which he executeth: the wicked is snared in the work of his own hands. Higgaion. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 7:2",
    "Lest he tear my soul like a lion, rending it in pieces, while there is none to deliver.",
    "Prayer",
  ),
  Verse(
    "Psalm 142:3",
    "When my spirit was overwhelmed within me, then thou knewest my path. In the way wherein I walked have they privily laid a snare for me.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:16",
    "He sent from above, he took me, he drew me out of many waters.",
    "Prayer",
  ),
  Verse(
    "Psalm 30:8",
    "I cried to thee, O LORD ; and unto the LORD I made supplication.",
    "Prayer",
  ),
  Verse(
    "Psalm 83:10",
    "Which perished at Endor: they became as dung for the earth.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:2",
    "Lift up thyself, thou judge of the earth: render a reward to the proud.",
    "Prayer",
  ),
  Verse(
    "Psalm 92:14",
    "They shall still bring forth fruit in old age; they shall be fat and flourishing;",
    "Prayer",
  ),
  Verse(
    "Psalm 89:25",
    "I will set his hand also in the sea, and his right hand in the rivers.",
    "Prayer",
  ),
  Verse(
    "Psalm 28:2",
    "Hear the voice of my supplications, when I cry unto thee, when I lift up my hands toward thy holy oracle.",
    "Prayer",
  ),
  Verse(
    "Psalm 36:2",
    "For he flattereth himself in his own eyes, until his iniquity be found to be hateful.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:50",
    "He made a way to his anger; he spared not their soul from death, but gave their life over to the pestilence;",
    "Prayer",
  ),
  Verse(
    "Psalm 32:11",
    "Be glad in the LORD , and rejoice, ye righteous: and shout for joy, all ye that are upright in heart.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:5",
    "And the heavens shall praise thy wonders, O LORD : thy faithfulness also in the congregation of the saints.",
    "Prayer",
  ),
  Verse(
    "Psalm 82:7",
    "But ye shall die like men, and fall like one of the princes.",
    "Prayer",
  ),
  Verse(
    "Psalm 7:4",
    "If I have rewarded evil unto him that was at peace with me; (yea, I have delivered him that without cause is mine enemy:)",
    "Prayer",
  ),
  Verse(
    "Psalm 123:3",
    "Have mercy upon us, O LORD , have mercy upon us: for we are exceedingly filled with contempt.",
    "Prayer",
  ),
  Verse(
    "Psalm 115:1",
    "Not unto us, O LORD , not unto us, but unto thy name give glory, for thy mercy, and for thy truth’s sake.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:18",
    "Thou hast ascended on high, thou hast led captivity captive: thou hast received gifts for men; yea, for the rebellious also, that the LORD God might dwell among them .",
    "Prayer",
  ),
  Verse(
    "Psalm 49:3",
    "My mouth shall speak of wisdom; and the meditation of my heart shall be of understanding.",
    "Prayer",
  ),
  Verse(
    "Psalm 99:1",
    "The LORD reigneth; let the people tremble: he sitteth between the cherubims; let the earth be moved.",
    "Prayer",
  ),
  Verse(
    "Psalm 109:28",
    "Let them curse, but bless thou: when they arise, let them be ashamed; but let thy servant rejoice.",
    "Prayer",
  ),
  Verse(
    "Psalm 111:2",
    "The works of the LORD are great, sought out of all them that have pleasure therein.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:15",
    "And wine that maketh glad the heart of man, and oil to make his face to shine, and bread which strengtheneth man’s heart.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:25",
    "The singers went before, the players on instruments followed after; among them were the damsels playing with timbrels.",
    "Prayer",
  ),
  Verse(
    "Psalm 65:2",
    "O thou that hearest prayer, unto thee shall all flesh come.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:23",
    "And he shall bring upon them their own iniquity, and shall cut them off in their own wickedness; yea , the LORD our God shall cut them off.",
    "Prayer",
  ),
  Verse(
    "Psalm 51:9",
    "Hide thy face from my sins, and blot out all mine iniquities.",
    "Prayer",
  ),
  Verse(
    "Psalm 140:1",
    "Deliver me, O LORD , from the evil man: preserve me from the violent man;",
    "Prayer",
  ),
  Verse(
    "Psalm 58:10",
    "The righteous shall rejoice when he seeth the vengeance: he shall wash his feet in the blood of the wicked.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:15",
    "Saying , Touch not mine anointed, and do my prophets no harm.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:46",
    "He gave also their increase unto the caterpiller, and their labour unto the locust.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:13",
    "With my lips have I declared all the judgments of thy mouth.",
    "Prayer",
  ),
  Verse(
    "Psalm 28:5",
    "Because they regard not the works of the LORD , nor the operation of his hands, he shall destroy them, and not build them up.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:8",
    "I will keep thy statutes: O forsake me not utterly.",
    "Prayer",
  ),
  Verse(
    "Psalm 51:8",
    "Make me to hear joy and gladness; that the bones which thou hast broken may rejoice.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:12",
    "Blessed is the man whom thou chastenest, O LORD , and teachest him out of thy law;",
    "Prayer",
  ),
  Verse(
    "Psalm 140:10",
    "Let burning coals fall upon them: let them be cast into the fire; into deep pits, that they rise not up again.",
    "Prayer",
  ),
  Verse(
    "Psalm 142:1",
    "I cried unto the LORD with my voice; with my voice unto the LORD did I make my supplication.",
    "Prayer",
  ),
  Verse(
    "Psalm 38:5",
    "My wounds stink and are corrupt because of my foolishness.",
    "Prayer",
  ),
  Verse(
    "Psalm 44:4",
    "Thou art my King, O God: command deliverances for Jacob.",
    "Prayer",
  ),
  Verse(
    "Psalm 22:6",
    "But I am a worm, and no man; a reproach of men, and despised of the people.",
    "Prayer",
  ),
  Verse(
    "Psalm 140:5",
    "The proud have hid a snare for me, and cords; they have spread a net by the wayside; they have set gins for me. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 35:8",
    "Let destruction come upon him at unawares; and let his net that he hath hid catch himself: into that very destruction let him fall.",
    "Prayer",
  ),
  Verse(
    "Psalm 140:3",
    "They have sharpened their tongues like a serpent; adders’ poison is under their lips. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 120:2",
    "Deliver my soul, O LORD , from lying lips, and from a deceitful tongue.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:56",
    "Yet they tempted and provoked the most high God, and kept not his testimonies:",
    "Prayer",
  ),
  Verse(
    "Psalm 24:3",
    "Who shall ascend into the hill of the LORD ? or who shall stand in his holy place?",
    "Prayer",
  ),
  Verse(
    "Psalm 53:6",
    "Oh that the salvation of Israel were come out of Zion! When God bringeth back the captivity of his people, Jacob shall rejoice, and Israel shall be glad.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:131",
    "I opened my mouth, and panted: for I longed for thy commandments.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:133",
    "Order my steps in thy word: and let not any iniquity have dominion over me.",
    "Prayer",
  ),
  Verse(
    "Psalm 95:7",
    "For he is our God; and we are the people of his pasture, and the sheep of his hand. To day if ye will hear his voice,",
    "Prayer",
  ),
  Verse(
    "Psalm 7:10",
    "My defence is of God, which saveth the upright in heart.",
    "Prayer",
  ),
  Verse(
    "Psalm 13:5",
    "But I have trusted in thy mercy; my heart shall rejoice in thy salvation.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:26",
    "He sent Moses his servant; and Aaron whom he had chosen.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:21",
    "But God shall wound the head of his enemies, and the hairy scalp of such an one as goeth on still in his trespasses.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:27",
    "They reel to and fro, and stagger like a drunken man, and are at their wits’ end.",
    "Prayer",
  ),
  Verse(
    "Psalm 25:4",
    "Shew me thy ways, O LORD ; teach me thy paths.",
    "Prayer",
  ),
  Verse(
    "Psalm 98:3",
    "He hath remembered his mercy and his truth toward the house of Israel: all the ends of the earth have seen the salvation of our God.",
    "Prayer",
  ),
  Verse(
    "Psalm 98:9",
    "Before the LORD ; for he cometh to judge the earth: with righteousness shall he judge the world, and the people with equity.",
    "Prayer",
  ),
  Verse(
    "Psalm 41:13",
    "Blessed be the LORD God of Israel from everlasting, and to everlasting. Amen, and Amen.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:13",
    "When they went from one nation to another, from one kingdom to another people;",
    "Prayer",
  ),
  Verse(
    "Psalm 119:46",
    "I will speak of thy testimonies also before kings, and will not be ashamed.",
    "Prayer",
  ),
  Verse(
    "Psalm 52:4",
    "Thou lovest all devouring words, O thou deceitful tongue.",
    "Prayer",
  ),
  Verse(
    "Psalm 62:2",
    "He only is my rock and my salvation; he is my defence; I shall not be greatly moved.",
    "Prayer",
  ),
  Verse(
    "Psalm 60:5",
    "That thy beloved may be delivered; save with thy right hand, and hear me.",
    "Prayer",
  ),
  Verse(
    "Psalm 27:2",
    "When the wicked, even mine enemies and my foes, came upon me to eat up my flesh, they stumbled and fell.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:77",
    "Let thy tender mercies come unto me, that I may live: for thy law is my delight.",
    "Prayer",
  ),
  Verse(
    "Psalm 74:18",
    "Remember this, that the enemy hath reproached, O LORD , and that the foolish people have blasphemed thy name.",
    "Prayer",
  ),
  Verse(
    "Psalm 79:8",
    "O remember not against us former iniquities: let thy tender mercies speedily prevent us: for we are brought very low.",
    "Prayer",
  ),
  Verse(
    "Philippians 3:9",
    "And be found in him, not having mine own righteousness, which is of the law, but that which is through the faith of Christ, the righteousness which is of God by faith:",
    "Joy",
  ),
  Verse(
    "Psalm 80:11",
    "She sent out her boughs unto the sea, and her branches unto the river.",
    "Prayer",
  ),
  Verse(
    "Psalm 34:22",
    "The LORD redeemeth the soul of his servants: and none of them that trust in him shall be desolate.",
    "Prayer",
  ),
  Verse(
    "Psalm 9:19",
    "Arise, O LORD ; let not man prevail: let the heathen be judged in thy sight.",
    "Prayer",
  ),
  Verse(
    "Psalm 26:5",
    "I have hated the congregation of evil doers; and will not sit with the wicked.",
    "Prayer",
  ),
  Verse(
    "Psalm 5:9",
    "For there is no faithfulness in their mouth; their inward part is very wickedness; their throat is an open sepulchre; they flatter with their tongue.",
    "Prayer",
  ),
  Verse(
    "Psalm 9:13",
    "Have mercy upon me, O LORD ; consider my trouble which I suffer of them that hate me, thou that liftest me up from the gates of death:",
    "Prayer",
  ),
  Verse(
    "Psalm 107:34",
    "A fruitful land into barrenness, for the wickedness of them that dwell therein.",
    "Prayer",
  ),
  Verse(
    "Psalm 30:10",
    "Hear, O LORD , and have mercy upon me: LORD , be thou my helper.",
    "Prayer",
  ),
  Verse(
    "Psalm 67:1",
    "God be merciful unto us, and bless us; and cause his face to shine upon us; Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 14:3",
    "They are all gone aside, they are all together become filthy: there is none that doeth good, no, not one.",
    "Prayer",
  ),
  Verse(
    "Matthew 5:16",
    "Let your light so shine before men, that they may see your good works, and glorify your Father which is in heaven.",
    "Faith",
  ),
  Verse(
    "Psalm 40:4",
    "Blessed is that man that maketh the LORD his trust, and respecteth not the proud, nor such as turn aside to lies.",
    "Prayer",
  ),
  Verse(
    "Proverbs 22:9",
    "He that hath a bountiful eye shall be blessed; for he giveth of his bread to the poor.",
    "Wisdom",
  ),
  Verse(
    "Psalm 69:30",
    "I will praise the name of God with a song, and will magnify him with thanksgiving.",
    "Prayer",
  ),
  Verse(
    "2 Corinthians 5:17",
    "Therefore if any man be in Christ, he is a new creature: old things are passed away; behold, all things are become new.",
    "Grace",
  ),
  Verse(
    "Proverbs 21:28",
    "A false witness shall perish: but the man that heareth speaketh constantly.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 22:5",
    "Thorns and snares are in the way of the froward: he that doth keep his soul shall be far from them.",
    "Wisdom",
  ),
  Verse(
    "Psalm 102:27",
    "But thou art the same, and thy years shall have no end.",
    "Prayer",
  ),
  Verse(
    "Psalm 80:1",
    "Give ear, O Shepherd of Israel, thou that leadest Joseph like a flock; thou that dwellest between the cherubims, shine forth.",
    "Prayer",
  ),
  Verse(
    "Psalm 41:5",
    "Mine enemies speak evil of me, When shall he die, and his name perish?",
    "Prayer",
  ),
  Verse(
    "Psalm 110:2",
    "The LORD shall send the rod of thy strength out of Zion: rule thou in the midst of thine enemies.",
    "Prayer",
  ),
  Verse(
    "Psalm 140:6",
    "I said unto the LORD , Thou art my God: hear the voice of my supplications, O LORD .",
    "Prayer",
  ),
  Verse(
    "Ephesians 6:24",
    "Grace be with all them that love our Lord Jesus Christ in sincerity. Amen.",
    "Grace",
  ),
  Verse(
    "Psalm 119:152",
    "Concerning thy testimonies, I have known of old that thou hast founded them for ever.",
    "Prayer",
  ),
  Verse(
    "Matthew 7:21",
    "Not every one that saith unto me, Lord, Lord, shall enter into the kingdom of heaven; but he that doeth the will of my Father which is in heaven.",
    "Faith",
  ),
  Verse(
    "Psalm 22:23",
    "Ye that fear the LORD , praise him; all ye the seed of Jacob, glorify him; and fear him, all ye the seed of Israel.",
    "Prayer",
  ),
  Verse(
    "Psalm 3:8",
    "Salvation belongeth unto the LORD : thy blessing is upon thy people. Selah.",
    "Prayer",
  ),
  Verse(
    "Romans 8:9",
    "But ye are not in the flesh, but in the Spirit, if so be that the Spirit of God dwell in you. Now if any man have not the Spirit of Christ, he is none of his.",
    "Hope",
  ),
  Verse(
    "Psalm 146:6",
    "Which made heaven, and earth, the sea, and all that therein is: which keepeth truth for ever:",
    "Prayer",
  ),
  Verse(
    "1 Peter 1:18",
    "Forasmuch as ye know that ye were not redeemed with corruptible things, as silver and gold, from your vain conversation received by tradition from your fathers;",
    "Hope",
  ),
  Verse(
    "Psalm 122:3",
    "Jerusalem is builded as a city that is compact together:",
    "Prayer",
  ),
  Verse(
    "Matthew 6:6",
    "But thou, when thou prayest, enter into thy closet, and when thou hast shut thy door, pray to thy Father which is in secret; and thy Father which seeth in secret shall reward thee openly.",
    "Faith",
  ),
  Verse(
    "Psalm 64:7",
    "But God shall shoot at them with an arrow; suddenly shall they be wounded.",
    "Prayer",
  ),
  Verse(
    "2 Corinthians 4:10",
    "Always bearing about in the body the dying of the Lord Jesus, that the life also of Jesus might be made manifest in our body.",
    "Grace",
  ),
  Verse(
    "Philippians 2:19",
    "But I trust in the Lord Jesus to send Timotheus shortly unto you, that I also may be of good comfort, when I know your state.",
    "Joy",
  ),
  Verse(
    "Psalm 127:2",
    "It is vain for you to rise up early, to sit up late, to eat the bread of sorrows: for so he giveth his beloved sleep.",
    "Prayer",
  ),
  Verse(
    "1 Peter 5:5",
    "Likewise, ye younger, submit yourselves unto the elder. Yea, all of you be subject one to another, and be clothed with humility: for God resisteth the proud, and giveth grace to the humble.",
    "Hope",
  ),
  Verse(
    "Psalm 25:11",
    "For thy name’s sake, O LORD , pardon mine iniquity; for it is great.",
    "Prayer",
  ),
  Verse(
    "John 14:10",
    "Believest thou not that I am in the Father, and the Father in me? the words that I speak unto you I speak not of myself: but the Father that dwelleth in me, he doeth the works.",
    "Love",
  ),
  Verse(
    "Proverbs 19:26",
    "He that wasteth his father, and chaseth away his mother, is a son that causeth shame, and bringeth reproach.",
    "Wisdom",
  ),
  Verse(
    "Psalm 48:2",
    "Beautiful for situation, the joy of the whole earth, is mount Zion, on the sides of the north, the city of the great King.",
    "Prayer",
  ),
  Verse(
    "James 3:11",
    "Doth a fountain send forth at the same place sweet water and bitter?",
    "Wisdom",
  ),
  Verse(
    "Psalm 111:7",
    "The works of his hands are verity and judgment; all his commandments are sure.",
    "Prayer",
  ),
  Verse(
    "Psalm 71:18",
    "Now also when I am old and grayheaded, O God, forsake me not; until I have shewed thy strength unto this generation, and thy power to every one that is to come.",
    "Prayer",
  ),
  Verse(
    "Psalm 8:4",
    "What is man, that thou art mindful of him? and the son of man, that thou visitest him?",
    "Prayer",
  ),
  Verse(
    "Psalm 60:2",
    "Thou hast made the earth to tremble; thou hast broken it: heal the breaches thereof; for it shaketh.",
    "Prayer",
  ),
  Verse(
    "Romans 5:5",
    "And hope maketh not ashamed; because the love of God is shed abroad in our hearts by the Holy Ghost which is given unto us.",
    "Hope",
  ),
  Verse(
    "Psalm 71:13",
    "Let them be confounded and consumed that are adversaries to my soul; let them be covered with reproach and dishonour that seek my hurt.",
    "Prayer",
  ),
  Verse(
    "Psalm 62:4",
    "They only consult to cast him down from his excellency: they delight in lies: they bless with their mouth, but they curse inwardly. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 7:15",
    "He made a pit, and digged it, and is fallen into the ditch which he made.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:10",
    "Such as sit in darkness and in the shadow of death, being bound in affliction and iron;",
    "Prayer",
  ),
  Verse(
    "Psalm 69:4",
    "They that hate me without a cause are more than the hairs of mine head: they that would destroy me, being mine enemies wrongfully, are mighty: then I restored that which I took not away.",
    "Prayer",
  ),
  Verse(
    "Psalm 46:7",
    "The LORD of hosts is with us; the God of Jacob is our refuge. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:37",
    "He brought them forth also with silver and gold: and there was not one feeble person among their tribes.",
    "Prayer",
  ),
  Verse(
    "Psalm 97:6",
    "The heavens declare his righteousness, and all the people see his glory.",
    "Prayer",
  ),
  Verse(
    "Psalm 89:10",
    "Thou hast broken Rahab in pieces, as one that is slain; thou hast scattered thine enemies with thy strong arm.",
    "Prayer",
  ),
  Verse(
    "Psalm 145:12",
    "To make known to the sons of men his mighty acts, and the glorious majesty of his kingdom.",
    "Prayer",
  ),
  Verse(
    "Psalm 1:3",
    "And he shall be like a tree planted by the rivers of water, that bringeth forth his fruit in his season; his leaf also shall not wither; and whatsoever he doeth shall prosper.",
    "Prayer",
  ),
  Verse(
    "Psalm 114:1",
    "When Israel went out of Egypt, the house of Jacob from a people of strange language;",
    "Prayer",
  ),
  Verse(
    "Psalm 119:52",
    "I remembered thy judgments of old, O LORD ; and have comforted myself.",
    "Prayer",
  ),
  Verse(
    "Matthew 5:30",
    "And if thy right hand offend thee, cut it off, and cast it from thee: for it is profitable for thee that one of thy members should perish, and not that thy whole body should be cast into hell.",
    "Faith",
  ),
  Verse(
    "Psalm 116:6",
    "The LORD preserveth the simple: I was brought low, and he helped me.",
    "Prayer",
  ),
  Verse(
    "1 John 5:16",
    "If any man see his brother sin a sin which is not unto death, he shall ask, and he shall give him life for them that sin not unto death. There is a sin unto death: I do not say that he shall pray for it.",
    "Love",
  ),
  Verse(
    "Ephesians 4:13",
    "Till we all come in the unity of the faith, and of the knowledge of the Son of God, unto a perfect man, unto the measure of the stature of the fulness of Christ:",
    "Grace",
  ),
  Verse(
    "Psalm 80:4",
    "O LORD God of hosts, how long wilt thou be angry against the prayer of thy people?",
    "Prayer",
  ),
  Verse(
    "Psalm 42:6",
    "O my God, my soul is cast down within me: therefore will I remember thee from the land of Jordan, and of the Hermonites, from the hill Mizar.",
    "Prayer",
  ),
  Verse(
    "Psalm 50:16",
    "But unto the wicked God saith, What hast thou to do to declare my statutes, or that thou shouldest take my covenant in thy mouth?",
    "Prayer",
  ),
  Verse(
    "1 John 5:18",
    "We know that whosoever is born of God sinneth not; but he that is begotten of God keepeth himself, and that wicked one toucheth him not.",
    "Love",
  ),
  Verse(
    "Psalm 30:3",
    "O LORD , thou hast brought up my soul from the grave: thou hast kept me alive, that I should not go down to the pit.",
    "Prayer",
  ),
  Verse(
    "Psalm 42:1",
    "As the hart panteth after the water brooks, so panteth my soul after thee, O God.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:1",
    "O give thanks unto the LORD , for he is good: for his mercy endureth for ever.",
    "Prayer",
  ),
  Verse(
    "Proverbs 20:16",
    "Take his garment that is surety for a stranger: and take a pledge of him for a strange woman.",
    "Wisdom",
  ),
  Verse(
    "Matthew 11:10",
    "For this is he , of whom it is written, Behold, I send my messenger before thy face, which shall prepare thy way before thee.",
    "Faith",
  ),
  Verse(
    "Psalm 77:2",
    "In the day of my trouble I sought the Lord: my sore ran in the night, and ceased not: my soul refused to be comforted.",
    "Prayer",
  ),
  Verse(
    "Psalm 37:6",
    "And he shall bring forth thy righteousness as the light, and thy judgment as the noonday.",
    "Prayer",
  ),
  Verse(
    "Psalm 22:2",
    "O my God, I cry in the daytime, but thou hearest not; and in the night season, and am not silent.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:173",
    "Let thine hand help me; for I have chosen thy precepts.",
    "Prayer",
  ),
  Verse(
    "1 John 3:19",
    "And hereby we know that we are of the truth, and shall assure our hearts before him.",
    "Love",
  ),
  Verse(
    "Matthew 7:17",
    "Even so every good tree bringeth forth good fruit; but a corrupt tree bringeth forth evil fruit.",
    "Faith",
  ),
  Verse(
    "Psalm 119:20",
    "My soul breaketh for the longing that it hath unto thy judgments at all times.",
    "Prayer",
  ),
  Verse(
    "Psalm 24:9",
    "Lift up your heads, O ye gates; even lift them up, ye everlasting doors; and the King of glory shall come in.",
    "Prayer",
  ),
  Verse(
    "John 15:21",
    "But all these things will they do unto you for my name’s sake, because they know not him that sent me.",
    "Love",
  ),
  Verse(
    "Proverbs 21:1",
    "The king’s heart is in the hand of the LORD , as the rivers of water: he turneth it whithersoever he will.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 22:26",
    "Be not thou one of them that strike hands, or of them that are sureties for debts.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 21:9",
    "It is better to dwell in a corner of the housetop, than with a brawling woman in a wide house.",
    "Wisdom",
  ),
  Verse(
    "Proverbs 18:21",
    "Death and life are in the power of the tongue: and they that love it shall eat the fruit thereof.",
    "Wisdom",
  ),
  Verse(
    "James 5:18",
    "And he prayed again, and the heaven gave rain, and the earth brought forth her fruit.",
    "Wisdom",
  ),
  Verse(
    "Psalm 50:4",
    "He shall call to the heavens from above, and to the earth, that he may judge his people.",
    "Prayer",
  ),
  Verse(
    "Psalm 106:46",
    "He made them also to be pitied of all those that carried them captives.",
    "Prayer",
  ),
  Verse(
    "Romans 8:4",
    "That the righteousness of the law might be fulfilled in us, who walk not after the flesh, but after the Spirit.",
    "Hope",
  ),
  Verse(
    "Romans 8:23",
    "And not only they , but ourselves also, which have the firstfruits of the Spirit, even we ourselves groan within ourselves, waiting for the adoption, to wit , the redemption of our body.",
    "Hope",
  ),
  Verse(
    "Psalm 62:9",
    "Surely men of low degree are vanity, and men of high degree are a lie: to be laid in the balance, they are altogether lighter than vanity.",
    "Prayer",
  ),
  Verse(
    "1 Corinthians 13:11",
    "When I was a child, I spake as a child, I understood as a child, I thought as a child: but when I became a man, I put away childish things.",
    "Love",
  ),
  Verse(
    "2 Corinthians 4:15",
    "For all things are for your sakes, that the abundant grace might through the thanksgiving of many redound to the glory of God.",
    "Grace",
  ),
  Verse(
    "Psalm 137:7",
    "Remember, O LORD , the children of Edom in the day of Jerusalem; who said, Rase it , rase it, even to the foundation thereof.",
    "Prayer",
  ),
  Verse(
    "Hebrews 11:3",
    "Through faith we understand that the worlds were framed by the word of God, so that things which are seen were not made of things which do appear.",
    "Faith",
  ),
  Verse(
    "Psalm 119:90",
    "Thy faithfulness is unto all generations: thou hast established the earth, and it abideth.",
    "Prayer",
  ),
  Verse(
    "Proverbs 17:27",
    "He that hath knowledge spareth his words: and a man of understanding is of an excellent spirit.",
    "Wisdom",
  ),
  Verse(
    "James 1:8",
    "A double minded man is unstable in all his ways.",
    "Wisdom",
  ),
  Verse(
    "Psalm 128:2",
    "For thou shalt eat the labour of thine hands: happy shalt thou be , and it shall be well with thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 51:4",
    "Against thee, thee only, have I sinned, and done this evil in thy sight: that thou mightest be justified when thou speakest, and be clear when thou judgest.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:43",
    "Thou hast delivered me from the strivings of the people; and thou hast made me the head of the heathen: a people whom I have not known shall serve me.",
    "Prayer",
  ),
  Verse(
    "Psalm 146:7",
    "Which executeth judgment for the oppressed: which giveth food to the hungry. The LORD looseth the prisoners:",
    "Prayer",
  ),
  Verse(
    "Psalm 109:3",
    "They compassed me about also with words of hatred; and fought against me without a cause.",
    "Prayer",
  ),
  Verse(
    "1 Peter 5:3",
    "Neither as being lords over God’s heritage, but being ensamples to the flock.",
    "Hope",
  ),
  Verse(
    "Hebrews 12:18",
    "For ye are not come unto the mount that might be touched, and that burned with fire, nor unto blackness, and darkness, and tempest,",
    "Faith",
  ),
  Verse(
    "Psalm 56:5",
    "Every day they wrest my words: all their thoughts are against me for evil.",
    "Prayer",
  ),
  Verse(
    "Psalm 138:8",
    "The LORD will perfect that which concerneth me: thy mercy, O LORD , endureth for ever: forsake not the works of thine own hands.",
    "Prayer",
  ),
  Verse(
    "Ephesians 4:21",
    "If so be that ye have heard him, and have been taught by him, as the truth is in Jesus:",
    "Grace",
  ),
  Verse(
    "Psalm 119:30",
    "I have chosen the way of truth: thy judgments have I laid before me .",
    "Prayer",
  ),
  Verse(
    "Psalm 78:72",
    "So he fed them according to the integrity of his heart; and guided them by the skilfulness of his hands.",
    "Prayer",
  ),
  Verse(
    "Psalm 66:17",
    "I cried unto him with my mouth, and he was extolled with my tongue.",
    "Prayer",
  ),
  Verse(
    "Psalm 102:23",
    "He weakened my strength in the way; he shortened my days.",
    "Prayer",
  ),
  Verse(
    "Psalm 57:10",
    "For thy mercy is great unto the heavens, and thy truth unto the clouds.",
    "Prayer",
  ),
  Verse(
    "Psalm 44:15",
    "My confusion is continually before me, and the shame of my face hath covered me,",
    "Prayer",
  ),
  Verse(
    "Psalm 88:17",
    "They came round about me daily like water; they compassed me about together.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:28",
    "That thou givest them they gather: thou openest thine hand, they are filled with good.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:21",
    "The young lions roar after their prey, and seek their meat from God.",
    "Prayer",
  ),
  Verse(
    "2 Corinthians 4:18",
    "While we look not at the things which are seen, but at the things which are not seen: for the things which are seen are temporal; but the things which are not seen are eternal.",
    "Grace",
  ),
  Verse(
    "Psalm 126:2",
    "Then was our mouth filled with laughter, and our tongue with singing: then said they among the heathen, The LORD hath done great things for them.",
    "Prayer",
  ),
  Verse(
    "Psalm 109:5",
    "And they have rewarded me evil for good, and hatred for my love.",
    "Prayer",
  ),
  Verse(
    "Psalm 76:9",
    "When God arose to judgment, to save all the meek of the earth. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 31:8",
    "And hast not shut me up into the hand of the enemy: thou hast set my feet in a large room.",
    "Prayer",
  ),
  Verse(
    "Psalm 81:13",
    "Oh that my people had hearkened unto me, and Israel had walked in my ways!",
    "Prayer",
  ),
  Verse(
    "Psalm 78:33",
    "Therefore their days did he consume in vanity, and their years in trouble.",
    "Prayer",
  ),
  Verse(
    "Psalm 46:4",
    "There is a river, the streams whereof shall make glad the city of God, the holy place of the tabernacles of the most High.",
    "Prayer",
  ),
  Verse(
    "Psalm 68:30",
    "Rebuke the company of spearmen, the multitude of the bulls, with the calves of the people, till every one submit himself with pieces of silver: scatter thou the people that delight in war.",
    "Prayer",
  ),
  Verse(
    "Psalm 105:22",
    "To bind his princes at his pleasure; and teach his senators wisdom.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:8",
    "I am become a stranger unto my brethren, and an alien unto my mother’s children.",
    "Prayer",
  ),
  Verse(
    "Psalm 25:13",
    "His soul shall dwell at ease; and his seed shall inherit the earth.",
    "Prayer",
  ),
  Verse(
    "Philippians 1:12",
    "But I would ye should understand, brethren, that the things which happened unto me have fallen out rather unto the furtherance of the gospel;",
    "Joy",
  ),
  Verse(
    "Psalm 127:5",
    "Happy is the man that hath his quiver full of them: they shall not be ashamed, but they shall speak with the enemies in the gate.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:40",
    "Behold, I have longed after thy precepts: quicken me in thy righteousness.",
    "Prayer",
  ),
  Verse(
    "2 Corinthians 5:18",
    "And all things are of God, who hath reconciled us to himself by Jesus Christ, and hath given to us the ministry of reconciliation;",
    "Grace",
  ),
  Verse(
    "Psalm 122:5",
    "For there are set thrones of judgment, the thrones of the house of David.",
    "Prayer",
  ),
  Verse(
    "Hebrews 11:12",
    "Therefore sprang there even of one, and him as good as dead, so many as the stars of the sky in multitude, and as the sand which is by the sea shore innumerable.",
    "Faith",
  ),
  Verse(
    "Psalm 119:103",
    "How sweet are thy words unto my taste! yea, sweeter than honey to my mouth!",
    "Prayer",
  ),
  Verse(
    "Hebrews 11:14",
    "For they that say such things declare plainly that they seek a country.",
    "Faith",
  ),
  Verse(
    "1 Peter 1:14",
    "As obedient children, not fashioning yourselves according to the former lusts in your ignorance:",
    "Hope",
  ),
  Verse(
    "Psalm 119:110",
    "The wicked have laid a snare for me: yet I erred not from thy precepts.",
    "Prayer",
  ),
  Verse(
    "Romans 8:5",
    "For they that are after the flesh do mind the things of the flesh; but they that are after the Spirit the things of the Spirit.",
    "Hope",
  ),
  Verse(
    "Proverbs 21:20",
    "There is treasure to be desired and oil in the dwelling of the wise; but a foolish man spendeth it up.",
    "Wisdom",
  ),
  Verse(
    "Romans 8:15",
    "For ye have not received the spirit of bondage again to fear; but ye have received the Spirit of adoption, whereby we cry, Abba, Father.",
    "Hope",
  ),
  Verse(
    "Psalm 102:21",
    "To declare the name of the LORD in Zion, and his praise in Jerusalem;",
    "Prayer",
  ),
  Verse(
    "John 14:30",
    "Hereafter I will not talk much with you: for the prince of this world cometh, and hath nothing in me.",
    "Love",
  ),
  Verse(
    "Psalm 119:65",
    "Thou hast dealt well with thy servant, O LORD , according unto thy word.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:164",
    "Seven times a day do I praise thee because of thy righteous judgments.",
    "Prayer",
  ),
  Verse(
    "Psalm 93:1",
    "The LORD reigneth, he is clothed with majesty; the LORD is clothed with strength, wherewith he hath girded himself: the world also is stablished, that it cannot be moved.",
    "Prayer",
  ),
  Verse(
    "Psalm 148:12",
    "Both young men, and maidens; old men, and children:",
    "Prayer",
  ),
  Verse(
    "Psalm 119:143",
    "Trouble and anguish have taken hold on me: yet thy commandments are my delights.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:26",
    "He caused an east wind to blow in the heaven: and by his power he brought in the south wind.",
    "Prayer",
  ),
  Verse(
    "Colossians 3:15",
    "And let the peace of God rule in your hearts, to the which also ye are called in one body; and be ye thankful.",
    "Gratitude",
  ),
  Verse(
    "Psalm 18:29",
    "For by thee I have run through a troop; and by my God have I leaped over a wall.",
    "Prayer",
  ),
  Verse(
    "Psalm 83:2",
    "For, lo, thine enemies make a tumult: and they that hate thee have lifted up the head.",
    "Prayer",
  ),
  Verse(
    "Romans 8:26",
    "Likewise the Spirit also helpeth our infirmities: for we know not what we should pray for as we ought: but the Spirit itself maketh intercession for us with groanings which cannot be uttered.",
    "Hope",
  ),
  Verse(
    "Colossians 4:7",
    "All my state shall Tychicus declare unto you, who is a beloved brother, and a faithful minister and fellowservant in the Lord:",
    "Gratitude",
  ),
  Verse(
    "Psalm 90:11",
    "Who knoweth the power of thine anger? even according to thy fear, so is thy wrath.",
    "Prayer",
  ),
  Verse(
    "Psalm 17:12",
    "Like as a lion that is greedy of his prey, and as it were a young lion lurking in secret places.",
    "Prayer",
  ),
  Verse(
    "1 Peter 4:16",
    "Yet if any man suffer as a Christian, let him not be ashamed; but let him glorify God on this behalf.",
    "Hope",
  ),
  Verse(
    "Matthew 5:32",
    "But I say unto you, That whosoever shall put away his wife, saving for the cause of fornication, causeth her to commit adultery: and whosoever shall marry her that is divorced committeth adultery.",
    "Faith",
  ),
  Verse(
    "Philippians 3:18",
    "(For many walk, of whom I have told you often, and now tell you even weeping, that they are the enemies of the cross of Christ:",
    "Joy",
  ),
  Verse(
    "Psalm 119:6",
    "Then shall I not be ashamed, when I have respect unto all thy commandments.",
    "Prayer",
  ),
  Verse(
    "Psalm 34:21",
    "Evil shall slay the wicked: and they that hate the righteous shall be desolate.",
    "Prayer",
  ),
  Verse(
    "Psalm 91:13",
    "Thou shalt tread upon the lion and adder: the young lion and the dragon shalt thou trample under feet.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:54",
    "Thy statutes have been my songs in the house of my pilgrimage.",
    "Prayer",
  ),
  Verse(
    "Psalm 80:7",
    "Turn us again, O God of hosts, and cause thy face to shine; and we shall be saved.",
    "Prayer",
  ),
  Verse(
    "Proverbs 3:32",
    "For the froward is abomination to the LORD : but his secret is with the righteous.",
    "Wisdom",
  ),
  Verse(
    "Psalm 59:2",
    "Deliver me from the workers of iniquity, and save me from bloody men.",
    "Prayer",
  ),
  Verse(
    "Psalm 31:23",
    "O love the LORD , all ye his saints: for the LORD preserveth the faithful, and plentifully rewardeth the proud doer.",
    "Prayer",
  ),
  Verse(
    "Psalm 39:13",
    "O spare me, that I may recover strength, before I go hence, and be no more.",
    "Prayer",
  ),
  Verse(
    "1 John 5:2",
    "By this we know that we love the children of God, when we love God, and keep his commandments.",
    "Love",
  ),
  Verse(
    "Psalm 7:6",
    "Arise, O LORD , in thine anger, lift up thyself because of the rage of mine enemies: and awake for me to the judgment that thou hast commanded.",
    "Prayer",
  ),
  Verse(
    "Psalm 3:6",
    "I will not be afraid of ten thousands of people, that have set themselves against me round about.",
    "Prayer",
  ),
  Verse(
    "1 John 3:12",
    "Not as Cain, who was of that wicked one, and slew his brother. And wherefore slew he him? Because his own works were evil, and his brother’s righteous.",
    "Love",
  ),
  Verse(
    "1 Peter 5:11",
    "To him be glory and dominion for ever and ever. Amen.",
    "Hope",
  ),
  Verse(
    "Psalm 105:20",
    "The king sent and loosed him; even the ruler of the people, and let him go free.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:21",
    "Therefore the LORD heard this , and was wroth: so a fire was kindled against Jacob, and anger also came up against Israel;",
    "Prayer",
  ),
  Verse(
    "Proverbs 17:10",
    "A reproof entereth more into a wise man than an hundred stripes into a fool.",
    "Wisdom",
  ),
  Verse(
    "Psalm 96:8",
    "Give unto the LORD the glory due unto his name: bring an offering, and come into his courts.",
    "Prayer",
  ),
  Verse(
    "Psalm 19:5",
    "Which is as a bridegroom coming out of his chamber, and rejoiceth as a strong man to run a race.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:22",
    "Remove from me reproach and contempt; for I have kept thy testimonies.",
    "Prayer",
  ),
  Verse(
    "Matthew 5:9",
    "Blessed are the peacemakers: for they shall be called the children of God.",
    "Faith",
  ),
  Verse(
    "Psalm 107:40",
    "He poureth contempt upon princes, and causeth them to wander in the wilderness, where there is no way.",
    "Prayer",
  ),
  Verse(
    "Matthew 11:20",
    "Then began he to upbraid the cities wherein most of his mighty works were done, because they repented not:",
    "Faith",
  ),
  Verse(
    "Psalm 96:1",
    "O sing unto the LORD a new song: sing unto the LORD , all the earth.",
    "Prayer",
  ),
  Verse(
    "Psalm 14:7",
    "Oh that the salvation of Israel were come out of Zion! when the LORD bringeth back the captivity of his people, Jacob shall rejoice, and Israel shall be glad.",
    "Prayer",
  ),
  Verse(
    "Psalm 40:1",
    "I waited patiently for the LORD ; and he inclined unto me, and heard my cry.",
    "Prayer",
  ),
  Verse(
    "2 Corinthians 4:8",
    "We are troubled on every side, yet not distressed; we are perplexed, but not in despair;",
    "Grace",
  ),
  Verse(
    "Psalm 103:21",
    "Bless ye the LORD , all ye his hosts; ye ministers of his, that do his pleasure.",
    "Prayer",
  ),
  Verse(
    "Matthew 5:43",
    "Ye have heard that it hath been said, Thou shalt love thy neighbour, and hate thine enemy.",
    "Faith",
  ),
  Verse(
    "Psalm 139:13",
    "For thou hast possessed my reins: thou hast covered me in my mother’s womb.",
    "Prayer",
  ),
  Verse(
    "1 John 3:15",
    "Whosoever hateth his brother is a murderer: and ye know that no murderer hath eternal life abiding in him.",
    "Love",
  ),
  Verse(
    "Psalm 83:5",
    "For they have consulted together with one consent: they are confederate against thee:",
    "Prayer",
  ),
  Verse(
    "Psalm 2:3",
    "Let us break their bands asunder, and cast away their cords from us.",
    "Prayer",
  ),
  Verse(
    "Psalm 129:7",
    "Wherewith the mower filleth not his hand; nor he that bindeth sheaves his bosom.",
    "Prayer",
  ),
  Verse(
    "Psalm 107:5",
    "Hungry and thirsty, their soul fainted in them.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:146",
    "I cried unto thee; save me, and I shall keep thy testimonies.",
    "Prayer",
  ),
  Verse(
    "Ephesians 6:4",
    "And, ye fathers, provoke not your children to wrath: but bring them up in the nurture and admonition of the Lord.",
    "Grace",
  ),
  Verse(
    "Colossians 4:9",
    "With Onesimus, a faithful and beloved brother, who is one of you. They shall make known unto you all things which are done here.",
    "Gratitude",
  ),
  Verse(
    "Psalm 18:32",
    "It is God that girdeth me with strength, and maketh my way perfect.",
    "Prayer",
  ),
  Verse(
    "Proverbs 20:27",
    "The spirit of man is the candle of the LORD , searching all the inward parts of the belly.",
    "Wisdom",
  ),
  Verse(
    "Romans 12:11",
    "Not slothful in business; fervent in spirit; serving the Lord;",
    "Hope",
  ),
  Verse(
    "Psalm 107:28",
    "Then they cry unto the LORD in their trouble, and he bringeth them out of their distresses.",
    "Prayer",
  ),
  Verse(
    "Psalm 60:3",
    "Thou hast shewed thy people hard things: thou hast made us to drink the wine of astonishment.",
    "Prayer",
  ),
  Verse(
    "Psalm 102:8",
    "Mine enemies reproach me all the day; and they that are mad against me are sworn against me.",
    "Prayer",
  ),
  Verse(
    "Ephesians 3:14",
    "For this cause I bow my knees unto the Father of our Lord Jesus Christ,",
    "Grace",
  ),
  Verse(
    "Romans 15:32",
    "That I may come unto you with joy by the will of God, and may with you be refreshed.",
    "Hope",
  ),
  Verse(
    "Psalm 40:8",
    "I delight to do thy will, O my God: yea, thy law is within my heart.",
    "Prayer",
  ),
  Verse(
    "Colossians 3:2",
    "Set your affection on things above, not on things on the earth.",
    "Gratitude",
  ),
  Verse(
    "Proverbs 4:14",
    "Enter not into the path of the wicked, and go not in the way of evil men .",
    "Wisdom",
  ),
  Verse(
    "Psalm 74:11",
    "Why withdrawest thou thy hand, even thy right hand? pluck it out of thy bosom.",
    "Prayer",
  ),
  Verse(
    "Proverbs 18:24",
    "A man that hath friends must shew himself friendly: and there is a friend that sticketh closer than a brother.",
    "Wisdom",
  ),
  Verse(
    "Psalm 61:6",
    "Thou wilt prolong the king’s life: and his years as many generations.",
    "Prayer",
  ),
  Verse(
    "Psalm 137:5",
    "If I forget thee, O Jerusalem, let my right hand forget her cunning .",
    "Prayer",
  ),
  Verse(
    "Colossians 3:17",
    "And whatsoever ye do in word or deed, do all in the name of the Lord Jesus, giving thanks to God and the Father by him.",
    "Gratitude",
  ),
  Verse(
    "Psalm 2:1",
    "Why do the heathen rage, and the people imagine a vain thing?",
    "Prayer",
  ),
  Verse(
    "Psalm 85:6",
    "Wilt thou not revive us again: that thy people may rejoice in thee?",
    "Prayer",
  ),
  Verse(
    "Psalm 77:15",
    "Thou hast with thine arm redeemed thy people, the sons of Jacob and Joseph. Selah.",
    "Prayer",
  ),
  Verse(
    "Proverbs 22:23",
    "For the LORD will plead their cause, and spoil the soul of those that spoiled them.",
    "Wisdom",
  ),
  Verse(
    "Psalm 51:13",
    "Then will I teach transgressors thy ways; and sinners shall be converted unto thee.",
    "Prayer",
  ),
  Verse(
    "Psalm 57:8",
    "Awake up, my glory; awake, psaltery and harp: I myself will awake early.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:165",
    "Great peace have they which love thy law: and nothing shall offend them.",
    "Prayer",
  ),
  Verse(
    "Psalm 148:8",
    "Fire, and hail; snow, and vapour; stormy wind fulfilling his word:",
    "Prayer",
  ),
  Verse(
    "James 5:4",
    "Behold, the hire of the labourers who have reaped down your fields, which is of you kept back by fraud, crieth: and the cries of them which have reaped are entered into the ears of the Lord of sabaoth.",
    "Wisdom",
  ),
  Verse(
    "Romans 12:1",
    "I beseech you therefore, brethren, by the mercies of God, that ye present your bodies a living sacrifice, holy, acceptable unto God, which is your reasonable service.",
    "Hope",
  ),
  Verse(
    "Psalm 45:13",
    "The king’s daughter is all glorious within: her clothing is of wrought gold.",
    "Prayer",
  ),
  Verse(
    "Matthew 7:26",
    "And every one that heareth these sayings of mine, and doeth them not, shall be likened unto a foolish man, which built his house upon the sand:",
    "Faith",
  ),
  Verse(
    "Matthew 5:20",
    "For I say unto you, That except your righteousness shall exceed the righteousness of the scribes and Pharisees, ye shall in no case enter into the kingdom of heaven.",
    "Faith",
  ),
  Verse(
    "Psalm 121:8",
    "The LORD shall preserve thy going out and thy coming in from this time forth, and even for evermore.",
    "Prayer",
  ),
  Verse(
    "Psalm 127:4",
    "As arrows are in the hand of a mighty man; so are children of the youth.",
    "Prayer",
  ),
  Verse(
    "Psalm 139:4",
    "For there is not a word in my tongue, but , lo, O LORD , thou knowest it altogether.",
    "Prayer",
  ),
  Verse(
    "Psalm 74:23",
    "Forget not the voice of thine enemies: the tumult of those that rise up against thee increaseth continually.",
    "Prayer",
  ),
  Verse(
    "Psalm 72:4",
    "He shall judge the poor of the people, he shall save the children of the needy, and shall break in pieces the oppressor.",
    "Prayer",
  ),
  Verse(
    "Psalm 53:1",
    "The fool hath said in his heart, There is no God. Corrupt are they, and have done abominable iniquity: there is none that doeth good.",
    "Prayer",
  ),
  Verse(
    "Psalm 124:3",
    "Then they had swallowed us up quick, when their wrath was kindled against us:",
    "Prayer",
  ),
  Verse(
    "Psalm 50:19",
    "Thou givest thy mouth to evil, and thy tongue frameth deceit.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:1",
    "Give ear, O my people, to my law: incline your ears to the words of my mouth.",
    "Prayer",
  ),
  Verse(
    "Psalm 78:11",
    "And forgat his works, and his wonders that he had shewed them.",
    "Prayer",
  ),
  Verse(
    "Proverbs 21:7",
    "The robbery of the wicked shall destroy them; because they refuse to do judgment.",
    "Wisdom",
  ),
  Verse(
    "Psalm 73:6",
    "Therefore pride compasseth them about as a chain; violence covereth them as a garment.",
    "Prayer",
  ),
  Verse(
    "John 17:13",
    "And now come I to thee; and these things I speak in the world, that they might have my joy fulfilled in themselves.",
    "Love",
  ),
  Verse(
    "Psalm 59:9",
    "Because of his strength will I wait upon thee: for God is my defence.",
    "Prayer",
  ),
  Verse(
    "Psalm 55:5",
    "Fearfulness and trembling are come upon me, and horror hath overwhelmed me.",
    "Prayer",
  ),
  Verse(
    "Psalm 119:61",
    "The bands of the wicked have robbed me: but I have not forgotten thy law.",
    "Prayer",
  ),
  Verse(
    "Psalm 104:8",
    "They go up by the mountains; they go down by the valleys unto the place which thou hast founded for them.",
    "Prayer",
  ),
  Verse(
    "Psalm 51:15",
    "O Lord, open thou my lips; and my mouth shall shew forth thy praise.",
    "Prayer",
  ),
  Verse(
    "Psalm 94:16",
    "Who will rise up for me against the evildoers? or who will stand up for me against the workers of iniquity?",
    "Prayer",
  ),
  Verse(
    "Psalm 42:8",
    "Yet the LORD will command his lovingkindness in the daytime, and in the night his song shall be with me, and my prayer unto the God of my life.",
    "Prayer",
  ),
  Verse(
    "Psalm 18:38",
    "I have wounded them that they were not able to rise: they are fallen under my feet.",
    "Prayer",
  ),
  Verse(
    "1 John 4:6",
    "We are of God: he that knoweth God heareth us; he that is not of God heareth not us. Hereby know we the spirit of truth, and the spirit of error.",
    "Love",
  ),
  Verse(
    "Ephesians 4:28",
    "Let him that stole steal no more: but rather let him labour, working with his hands the thing which is good, that he may have to give to him that needeth.",
    "Grace",
  ),
  Verse(
    "Psalm 55:2",
    "Attend unto me, and hear me: I mourn in my complaint, and make a noise;",
    "Prayer",
  ),
  Verse(
    "Psalm 73:21",
    "Thus my heart was grieved, and I was pricked in my reins.",
    "Prayer",
  ),
  Verse(
    "Ephesians 6:20",
    "For which I am an ambassador in bonds: that therein I may speak boldly, as I ought to speak.",
    "Grace",
  ),
  Verse(
    "Psalm 9:20",
    "Put them in fear, O LORD : that the nations may know themselves to be but men. Selah.",
    "Prayer",
  ),
  Verse(
    "Psalm 69:31",
    "This also shall please the LORD better than an ox or bullock that hath horns and hoofs.",
    "Prayer",
  ),
  Verse(
    "Psalm 98:1",
    "O sing unto the LORD a new song; for he hath done marvellous things: his right hand, and his holy arm, hath gotten him the victory.",
    "Prayer",
  ),
  Verse(
    "John 17:7",
    "Now they have known that all things whatsoever thou hast given me are of thee.",
    "Love",
  ),
  Verse(
    "Galatians 6:9",
    "And let us not be weary in well doing: for in due season we shall reap, if we faint not.",
    "Faith",
  ),
  Verse(
    "Psalm 4:5",
    "Offer the sacrifices of righteousness, and put your trust in the LORD .",
    "Prayer",
  ),
];

const firstReadingIndex = 21;
const readingCount = 1095;
