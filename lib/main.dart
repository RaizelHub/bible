import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'reminders.dart';
import 'verses.dart';
import 'reading_plan.dart';

const ink = Color(0xFF243E36);
const muted = Color(0xFF7D857A);
const paper = Color(0xFFF8F7F2);
const line = Color(0xFFE5E7DD);
const periodIcons = [
  Icons.wb_twilight_rounded,
  Icons.wb_sunny_outlined,
  Icons.nightlight_outlined,
];

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const StillwordApp());
}

class StillwordApp extends StatelessWidget {
  const StillwordApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Stillword',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: paper,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ink,
        primary: ink,
        surface: paper,
      ),
      fontFamily: 'Manrope',
      textTheme: ThemeData.light().textTheme.apply(
        bodyColor: ink,
        displayColor: ink,
        fontFamily: 'Manrope',
      ),
      dividerColor: line,
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    ),
    home: const Home(),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with WidgetsBindingObserver {
  final reminders = Reminders();
  SharedPreferences? prefs;
  int tab = 0;
  int slot = DateTime.now().hour < 12
      ? 0
      : DateTime.now().hour < 19
      ? 1
      : 2;
  Set<int> saved = {};
  List<bool> enabled = [false, false, false];
  List<TimeOfDay> times = List.of(defaultTimes);
  bool busy = false, loaded = false;
  String? problem;
  int? notificationVerse;
  ReadingPlan plan = ReadingPlan.starting(DateTime.now());
  int? get current => notificationVerse ?? plan.indexFor(DateTime.now(), slot);
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    reminders.openedVerse.addListener(openNotification);
    load();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    reminders.openedVerse.removeListener(openNotification);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && loaded && !busy) {
      setState(() {});
      refreshReminders();
    }
  }

  void openNotification() {
    final index = reminders.openedVerse.value;
    if (index != null && index >= 0 && index < verses.length && mounted) {
      setState(() {
        notificationVerse = index;
        slot = index % 3;
        tab = 0;
      });
    }
  }

  Future<void> load() async {
    try {
      prefs = await SharedPreferences.getInstance();
      final startDay = prefs!.getInt('reading_start_day_v2');
      plan = startDay == null
          ? ReadingPlan.starting(DateTime.now())
          : ReadingPlan(startDay);
      if (startDay == null &&
          !await prefs!.setInt('reading_start_day_v2', plan.startDay)) {
        throw StateError('Unable to save reading plan');
      }
      saved = (prefs!.getStringList('saved') ?? [])
          .map(int.tryParse)
          .whereType<int>()
          .where((i) => i >= 0 && i < verses.length)
          .toSet();
      enabled = List.generate(3, (i) => prefs!.getBool('enabled$i') ?? false);
      times = List.generate(3, (i) {
        final minutes = prefs!.getInt('time$i');
        return minutes == null || minutes < 0 || minutes > 1439
            ? defaultTimes[i]
            : TimeOfDay(hour: minutes ~/ 60, minute: minutes % 60);
      });
      await reminders.initialize();
      openNotification();
      await reminders.schedule(enabled, times, plan);
    } catch (_) {
      problem =
          'Reminders could not be prepared. Please try enabling them again.';
    }
    if (mounted) setState(() => loaded = true);
  }

  Future<void> refreshReminders() async {
    busy = true;
    try {
      await reminders.schedule(enabled, times, plan);
    } catch (_) {
      if (mounted) {
        setState(
          () => problem =
              'Could not refresh reminders. Check your reminder settings.',
        );
      }
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  void message(String text) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
    }
  }

  Future<void> bookmark(int index) async {
    final next = Set<int>.of(saved);
    next.contains(index) ? next.remove(index) : next.add(index);
    try {
      if (prefs == null ||
          !await prefs!.setStringList(
            'saved',
            next.map((i) => '$i').toList(),
          )) {
        throw StateError('storage');
      }
      if (mounted) setState(() => saved = next);
    } catch (_) {
      message('Could not save this verse. Please try again.');
    }
  }

  Future<void> updateReminders(
    List<bool> next,
    List<TimeOfDay> nextTimes,
  ) async {
    if (!loaded || busy) return;
    if (!reminders.supported) {
      message('Install Stillword on Android or iPhone to receive reminders.');
      return;
    }
    setState(() => busy = true);
    try {
      if (next.any((e) => e) && !await reminders.permission()) {
        message(
          'Notifications are disabled. Allow Stillword in your phone notification settings.',
        );
        return;
      }
      await reminders.schedule(next, nextTimes, plan);
      for (var i = 0; i < 3; i++) {
        if (!await prefs!.setBool('enabled$i', next[i]) ||
            !await prefs!.setInt(
              'time$i',
              nextTimes[i].hour * 60 + nextTimes[i].minute,
            )) {
          throw StateError('storage');
        }
      }
      if (mounted) {
        setState(() {
          enabled = next;
          times = nextTimes;
          problem = null;
        });
      }
      message(
        next.any((e) => e)
            ? 'Your daily moments are scheduled.'
            : 'All reminders are paused.',
      );
    } catch (_) {
      try {
        await reminders.schedule(enabled, times, plan);
        for (var i = 0; i < 3; i++) {
          await prefs?.setBool('enabled$i', enabled[i]);
          await prefs?.setInt('time$i', times[i].hour * 60 + times[i].minute);
        }
      } catch (_) {
        /* Report failure below, including a failed rollback. */
      }
      if (mounted) {
        setState(
          () => problem = 'Could not update reminders. Please try again.',
        );
      }
      message('Could not update reminders. Please try again.');
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  Text heading(String text, [double size = 32]) => Text(
    text,
    style: TextStyle(
      fontFamily: 'Lora',
      fontSize: size,
      height: 1.2,
      fontWeight: FontWeight.w500,
      color: ink,
    ),
  );
  Widget eyebrow(String text) => Text(
    text,
    style: const TextStyle(
      fontSize: 10,
      letterSpacing: 2.2,
      fontWeight: FontWeight.w800,
      color: muted,
    ),
  );
  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 620),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 20, 18, 14),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: ink,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: const Icon(
                        Icons.auto_stories_outlined,
                        color: Color(0xFFF2EAD5),
                        size: 22,
                      ),
                    ),
                    const SizedBox(width: 11),
                    heading('stillword', 25),
                    const Spacer(),
                    IconButton(
                      tooltip: 'Reminder settings',
                      onPressed: () => setState(() => tab = 2),
                      icon: const Icon(Icons.notifications_none_rounded),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: SingleChildScrollView(
                    key: ValueKey(tab),
                    padding: const EdgeInsets.fromLTRB(26, 18, 26, 26),
                    child: tab == 0
                        ? today()
                        : tab == 1
                        ? collection()
                        : settings(),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: line)),
                ),
                child: NavigationBar(
                  backgroundColor: paper,
                  elevation: 0,
                  selectedIndex: tab,
                  indicatorColor: const Color(0xFFE4EADF),
                  height: 76,
                  onDestinationSelected: (value) => setState(() => tab = value),
                  destinations: const [
                    NavigationDestination(
                      icon: Icon(Icons.wb_sunny_outlined),
                      selectedIcon: Icon(Icons.wb_sunny_rounded),
                      label: 'Today',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.bookmark_border_rounded),
                      selectedIcon: Icon(Icons.bookmark_rounded),
                      label: 'Saved',
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.tune_rounded),
                      label: 'Rhythm',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  Widget today() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      eyebrow(DateFormat('EEEE, MMMM d').format(DateTime.now()).toUpperCase()),
      const SizedBox(height: 12),
      heading('A little stillness.\nA little closer to God.', 33),
      const SizedBox(height: 12),
      const Text(
        'Make room for what matters, one verse at a time.',
        style: TextStyle(color: muted, fontSize: 13, height: 1.7),
      ),
      const SizedBox(height: 26),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color(0xFFEDEEE6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: List.generate(
            3,
            (i) => Expanded(
              child: Semantics(
                selected: slot == i,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => setState(() {
                    slot = i;
                    notificationVerse = null;
                  }),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    decoration: BoxDecoration(
                      color: slot == i ? paper : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: slot == i
                          ? [
                              BoxShadow(
                                color: ink.withValues(alpha: .06),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ]
                          : [],
                    ),
                    child: Column(
                      children: [
                        Icon(
                          periodIcons[i],
                          size: 21,
                          color: slot == i ? ink : muted,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          periods[i],
                          style: TextStyle(
                            fontSize: 11,
                            color: slot == i ? ink : muted,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
      AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        child: current == null
            ? Container(
                padding: const EdgeInsets.all(26),
                decoration: BoxDecoration(
                  color: const Color(0xFFE4EADF),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.task_alt_rounded, size: 36),
                    const SizedBox(height: 16),
                    heading('A journey well read.', 25),
                    const SizedBox(height: 12),
                    const Text(
                      'You have reached the end of this scripture collection. Your saved verses are here whenever you need them. We will never restart the collection automatically.',
                      style: TextStyle(height: 1.7),
                    ),
                  ],
                ),
              )
            : verseCard(current!, hero: true, key: ValueKey(current)),
      ),
      const SizedBox(height: 24),
      Row(
        children: [
          Expanded(child: eyebrow('YOUR DAILY RHYTHM')),
          TextButton(
            onPressed: () => setState(() => tab = 2),
            child: const Text('Customize', style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
      const SizedBox(height: 4),
      ...List.generate(
        3,
        (i) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Material(
            color: Colors.white.withValues(alpha: .65),
            borderRadius: BorderRadius.circular(17),
            child: InkWell(
              borderRadius: BorderRadius.circular(17),
              onTap: () => setState(() {
                slot = i;
                notificationVerse = null;
              }),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(11),
                      decoration: BoxDecoration(
                        color: [
                          const Color(0xFFF3EBDD),
                          const Color(0xFFE8ECDF),
                          const Color(0xFFEAE7EE),
                        ][i],
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Icon(periodIcons[i], size: 23),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            [
                              'Begin with gratitude',
                              'Pause in His presence',
                              'Rest in His promises',
                            ][i],
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${periods[i]} · ${times[i].format(context)}',
                            style: const TextStyle(color: muted, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      enabled[i]
                          ? Icons.notifications_active_outlined
                          : Icons.notifications_off_outlined,
                      size: 18,
                      color: muted,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Center(
        child: Text(
          'Less noise. More grace.',
          style: TextStyle(
            fontFamily: 'Lora',
            color: muted,
            fontSize: 13,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    ],
  ).animate().fadeIn(duration: 450.ms).slideY(begin: .025, end: 0);
  Widget verseCard(int index, {bool hero = false, Key? key}) {
    final verse = verses[index];
    return Container(
      key: key,
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      decoration: BoxDecoration(
        color: hero ? ink : Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: hero ? null : Border.all(color: line),
      ),
      child: Stack(
        children: [
          if (hero)
            Positioned(
              right: -30,
              top: -30,
              child: ExcludeSemantics(
                child: Icon(
                  Icons.wb_sunny_outlined,
                  size: 200,
                  color: Colors.white.withValues(alpha: .035),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      hero
                          ? periodIcons[index % 3]
                          : Icons.auto_stories_outlined,
                      size: 17,
                      color: hero ? const Color(0xFFD7D9B7) : muted,
                    ),
                    const SizedBox(width: 9),
                    Expanded(
                      child: Text(
                        hero
                            ? '${periods[index % 3].toUpperCase()} SCRIPTURE'
                            : verse.theme.toUpperCase(),
                        style: TextStyle(
                          fontSize: 9,
                          letterSpacing: 2,
                          color: hero ? const Color(0xFFD7D9B7) : muted,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    if (hero)
                      const Text(
                        'KJV',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFD7D9B7),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: hero ? 30 : 20),
                Text(
                  '“${verse.text}”',
                  style: TextStyle(
                    fontFamily: 'Lora',
                    fontSize: hero ? 26 : 21,
                    height: 1.55,
                    color: hero ? const Color(0xFFF6F3E5) : ink,
                  ),
                ),
                const SizedBox(height: 23),
                Text(
                  verse.reference,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: hero ? const Color(0xFFD7D9B7) : muted,
                  ),
                ),
                const SizedBox(height: 22),
                Divider(
                  color: hero ? Colors.white.withValues(alpha: .15) : line,
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        verse.theme,
                        style: TextStyle(
                          color: hero ? const Color(0xFFD7D9B7) : muted,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    IconButton(
                      tooltip: saved.contains(index)
                          ? 'Remove saved verse'
                          : 'Save verse',
                      onPressed: loaded ? () => bookmark(index) : null,
                      icon: Icon(
                        saved.contains(index)
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_border_rounded,
                        color: hero ? const Color(0xFFF6F3E5) : ink,
                        size: 21,
                      ),
                    ),
                    IconButton(
                      tooltip: 'Copy verse',
                      onPressed: () async {
                        await Clipboard.setData(
                          ClipboardData(
                            text: '${verse.text}\n— ${verse.reference} (KJV)',
                          ),
                        );
                        message('Verse copied to clipboard.');
                      },
                      icon: Icon(
                        Icons.copy_outlined,
                        color: hero ? const Color(0xFFF6F3E5) : ink,
                        size: 19,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget collection() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      eyebrow('KEEP THE WORD CLOSE'),
      const SizedBox(height: 12),
      heading('Verses to return to.'),
      const SizedBox(height: 12),
      Text(
        '${saved.length} saved ${saved.length == 1 ? 'verse' : 'verses'} · A little encouragement, always with you.',
        style: const TextStyle(color: muted, height: 1.6, fontSize: 13),
      ),
      const SizedBox(height: 28),
      if (saved.isEmpty)
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 54, horizontal: 24),
          decoration: BoxDecoration(
            border: Border.all(color: line),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              const Icon(Icons.bookmarks_outlined, size: 42, color: muted),
              const SizedBox(height: 22),
              heading('Let a verse stay with you.', 21),
              const SizedBox(height: 12),
              const Text(
                'Tap the bookmark on any scripture\nto keep it here for another moment.',
                textAlign: TextAlign.center,
                style: TextStyle(color: muted, height: 1.8, fontSize: 13),
              ),
              const SizedBox(height: 18),
              TextButton(
                onPressed: () => setState(() => tab = 0),
                child: const Text('Find a moment of grace'),
              ),
            ],
          ),
        ),
      ...saved.map(
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: verseCard(index),
        ),
      ),
    ],
  );
  Widget settings() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      eyebrow('SPACE FOR THE SACRED'),
      const SizedBox(height: 12),
      heading('Find your rhythm.'),
      const SizedBox(height: 12),
      const Text(
        'Three gentle invitations to pause, reflect, and reconnect with His word.',
        style: TextStyle(color: muted, height: 1.7, fontSize: 14),
      ),
      const SizedBox(height: 26),
      if (reminders.queuedThrough != null)
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            'Fresh verses queued through ${DateFormat('MMM d').format(reminders.queuedThrough!)}. Opening Stillword refills your reminders.',
            style: const TextStyle(color: muted, height: 1.6, fontSize: 12),
          ),
        ),
      if (problem != null)
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            problem!,
            style: const TextStyle(color: Color(0xFF995C3C)),
          ),
        ),
      ...List.generate(
        3,
        (i) => Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: line),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(periodIcons[i]),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      periods[i],
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Switch(
                    value: enabled[i],
                    onChanged: loaded && !busy
                        ? (value) {
                            final next = List<bool>.of(enabled);
                            next[i] = value;
                            updateReminders(next, List.of(times));
                          }
                        : null,
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  const Icon(Icons.schedule_rounded, size: 17, color: muted),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'A moment for you',
                      style: TextStyle(fontSize: 12, color: muted),
                    ),
                  ),
                  TextButton(
                    onPressed: !loaded || busy
                        ? null
                        : () async {
                            final picked = await showTimePicker(
                              context: context,
                              initialTime: times[i],
                            );
                            if (picked == null || !mounted) return;
                            final next = List<TimeOfDay>.of(times);
                            next[i] = picked;
                            await updateReminders(List.of(enabled), next);
                          },
                    child: Text(times[i].format(context)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 8),
      SizedBox(
        width: double.infinity,
        child: FilledButton.icon(
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.all(18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: loaded && !busy
              ? () => updateReminders([true, true, true], List.of(times))
              : null,
          icon: busy
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.notifications_active_outlined, size: 19),
          label: Text(busy ? 'Setting your rhythm…' : 'Enable all reminders'),
        ),
      ),
      const SizedBox(height: 8),
      Center(
        child: TextButton.icon(
          onPressed: loaded && !busy
              ? () async {
                  if (!reminders.supported) {
                    message(
                      'Notification previews are available on Android and iPhone.',
                    );
                    return;
                  }
                  try {
                    if (current == null) {
                      message('This reading collection is complete.');
                      return;
                    }
                    await reminders.preview(current!);
                    message('A sample verse notification has been sent.');
                  } catch (_) {
                    message(
                      'Could not send a preview. Check notification permission in phone settings.',
                    );
                  }
                }
              : null,
          icon: const Icon(Icons.send_outlined, size: 17),
          label: const Text('Send a test notification'),
        ),
      ),
      const SizedBox(height: 22),
      Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color(0xFFEDEFE6),
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.info_outline_rounded, size: 19, color: muted),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                '365 fresh KJV verses. Each daily moment has its own verse, with no automatic repeats. The collection finishes after 122 days at three readings per day. Reopen Stillword at least every 20 days to refill your offline notifications. Android delivery may be a little later; banners follow your phone settings.',
                style: TextStyle(color: muted, fontSize: 12, height: 1.8),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 24),
      Center(child: eyebrow('STILLWORD · A DAILY PRACTICE OF GRACE')),
    ],
  );
}
