import 'dart:async';
import 'daily_practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
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
  DailyPractice practice = const DailyPractice();
  bool practiceBusy = false;
  String savedQuery = '';
  final savedSearchController = TextEditingController();
  String savedTheme = 'All';
  Timer? dayTimer;
  int displayedDay = calendarDay(DateTime.now());
  Duration motion(int milliseconds) => Duration(
    milliseconds: MediaQuery.disableAnimationsOf(context) ? 0 : milliseconds,
  );
  Set<int> get kept => {...saved, ...practice.notes.keys};
  List<int> get filteredSaved => kept
      .where((id) {
        final v = verses[id];
        return (savedTheme == 'All' || v.theme == savedTheme) &&
            '${v.reference} ${v.text} ${v.theme} ${practice.notes[id] ?? ''}'
                .toLowerCase()
                .contains(savedQuery.toLowerCase().trim());
      })
      .toList()
      .reversed
      .toList();
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
    dayTimer = Timer.periodic(const Duration(minutes: 1), (_) => checkNewDay());
  }

  void checkNewDay() {
    final now = DateTime.now();
    if (calendarDay(now) == displayedDay || !mounted) return;
    setState(() {
      displayedDay = calendarDay(now);
      slot = now.hour < 12
          ? 0
          : now.hour < 19
          ? 1
          : 2;
      notificationVerse = null;
    });
    if (loaded && !busy) refreshReminders();
  }

  @override
  void dispose() {
    dayTimer?.cancel();
    savedSearchController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    reminders.openedVerse.removeListener(openNotification);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && loaded && !busy) {
      checkNewDay();
      setState(() {});
      if (!busy) refreshReminders();
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
      practice = DailyPractice.decode(prefs!.getString('daily_practice_v1'));
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

  Future<bool> savePractice(DailyPractice next) async {
    if (practiceBusy || prefs == null) return false;
    setState(() => practiceBusy = true);
    try {
      if (!await prefs!.setString('daily_practice_v1', next.encode())) {
        throw StateError('storage');
      }
      if (mounted) {
        setState(() {
          practice = next;
          if (!kept.any((id) => verses[id].theme == savedTheme)) {
            savedTheme = 'All';
          }
        });
      }
      return true;
    } catch (_) {
      message('Could not save your changes. Please try again.');
      return false;
    } finally {
      if (mounted) setState(() => practiceBusy = false);
    }
  }

  Future<void> editReflection(int index) async {
    final controller = TextEditingController(text: practice.notes[index] ?? '');
    var saving = false;
    await showDialog<void>(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, update) => AlertDialog(
          title: Text(
            'A thought to keep',
            style: const TextStyle(fontFamily: 'Lora'),
          ),
          scrollable: true,
          content: SizedBox(
            width: 440,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(verses[index].reference),
                const SizedBox(height: 12),
                TextField(
                  controller: controller,
                  maxLines: 5,
                  maxLength: 1200,
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'What does this verse bring to your day?',
                    border: OutlineInputBorder(),
                  ),
                ),
                const Text(
                  'Only on this device. Clear the text to remove this reflection.',
                  style: TextStyle(color: muted, fontSize: 12),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: saving ? null : () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: saving
                  ? null
                  : () async {
                      update(() => saving = true);
                      final result = await savePractice(
                        practice.reflect(index, controller.text),
                      );
                      if (!context.mounted) return;
                      if (result) {
                        Navigator.pop(context);
                      } else {
                        update(() => saving = false);
                      }
                    },
              child: Text(saving ? 'Saving…' : 'Save reflection'),
            ),
          ],
        ),
      ),
    );
    // Dialog dismissal animates with the field still mounted for one frame.
    await Future<void>.delayed(const Duration(milliseconds: 300));
    controller.dispose();
  }

  Widget welcomeCard() => Container(
    margin: const EdgeInsets.only(bottom: 18),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: const Color(0xFFE8EDDF),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.spa_outlined, size: 24),
        const SizedBox(height: 10),
        heading('A small habit. Your own pace.', 22),
        const SizedBox(height: 8),
        const Text(
          'Read a little, keep a thought, and make room for your day. No account. No pressure.',
          style: TextStyle(height: 1.6),
        ),
        Wrap(
          spacing: 10,
          children: [
            TextButton(
              onPressed: practiceBusy
                  ? null
                  : () async {
                      if (await savePractice(
                            practice.copyWith(welcomed: true),
                          ) &&
                          mounted) {
                        setState(() => tab = 2);
                      }
                    },
              child: const Text('Make it yours'),
            ),
            TextButton(
              onPressed: practiceBusy
                  ? null
                  : () => savePractice(practice.copyWith(welcomed: true)),
              child: const Text('Start reading'),
            ),
          ],
        ),
      ],
    ),
  );

  Widget weeklyPractice() {
    final now = DateTime.now();
    final monday = calendarDay(now) - now.weekday + 1;
    final count = List.generate(
      7,
      (i) => monday + i,
    ).where(practice.days.contains).length;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        border: Border.all(color: line),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 18,
            children: [
              eyebrow('A LITTLE SPACE, EACH DAY'),
              Text(
                '$count of 7 days this week',
                style: const TextStyle(fontSize: 11, color: muted),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(7, (i) {
              final done = practice.days.contains(monday + i);
              final today = monday + i == calendarDay(now);
              return Semantics(
                label:
                    '${['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'][i]}${today ? ', today' : ''}, ${done ? 'read' : 'not marked'}',
                child: ExcludeSemantics(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: done
                            ? ink
                            : today
                            ? const Color(0xFFE0E7D8)
                            : const Color(0xFFEFEFE9),
                        child: done
                            ? const Icon(
                                Icons.check_rounded,
                                size: 16,
                                color: Colors.white,
                              )
                            : Text(
                                ['M', 'T', 'W', 'T', 'F', 'S', 'S'][i],
                                style: const TextStyle(
                                  color: ink,
                                  fontSize: 10,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget readingActions(int index, {bool savedCard = false}) => Padding(
    padding: const EdgeInsets.only(top: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 8,
          children: [
            if (!savedCard)
              OutlinedButton.icon(
                onPressed:
                    !loaded || practiceBusy || practice.read.contains(index)
                    ? null
                    : () => savePractice(
                        practice.markRead(index, DateTime.now()),
                      ),
                icon: Icon(
                  practice.read.contains(index)
                      ? Icons.check_circle_outline
                      : Icons.done_rounded,
                  size: 18,
                ),
                label: Text(
                  practice.read.contains(index)
                      ? 'Marked as read'
                      : 'Mark as read',
                ),
              ),
            TextButton.icon(
              onPressed: !loaded || practiceBusy
                  ? null
                  : () => editReflection(index),
              icon: const Icon(Icons.edit_note_rounded, size: 21),
              label: Text(
                practice.notes.containsKey(index)
                    ? 'Edit reflection'
                    : 'Add reflection',
              ),
            ),
          ],
        ),
        if (practice.notes[index] case final String note)
          Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xFFF0EBDD),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                eyebrow('YOUR REFLECTION'),
                const SizedBox(height: 8),
                Text(note, style: const TextStyle(height: 1.7)),
                if (!savedCard)
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Find this thought again in Saved.',
                      style: TextStyle(color: muted, fontSize: 12),
                    ),
                  ),
              ],
            ),
          ),
      ],
    ),
  );

  Widget readingPreferences() => Padding(
    padding: const EdgeInsets.symmetric(vertical: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        eyebrow('COMFORTABLE READING'),
        const SizedBox(height: 10),
        const Text('Scripture text size'),
        const SizedBox(height: 12),
        Wrap(
          spacing: 10,
          runSpacing: 8,
          children: [
            for (final option in {
              1.0: 'Standard',
              1.15: 'Larger',
              1.3: 'Largest',
            }.entries)
              ChoiceChip(
                label: Text(option.value),
                selected: practice.textScale == option.key,
                onSelected: !loaded || practiceBusy
                    ? null
                    : (_) => savePractice(
                        practice.copyWith(textScale: option.key),
                      ),
              ),
          ],
        ),
        const SizedBox(height: 12),
        const Text(
          'Your bookmarks, reflections, and reading days stay on this device. Clearing app data removes them.',
          style: TextStyle(color: muted, fontSize: 12, height: 1.6),
        ),
      ],
    ),
  );

  Widget reminderPresets() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      eyebrow('START WITH WHAT FITS YOUR DAY'),
      const SizedBox(height: 10),
      Wrap(
        spacing: 10,
        runSpacing: 8,
        children: [
          OutlinedButton.icon(
            onPressed: !loaded || busy
                ? null
                : () => updateReminders([true, false, false], List.of(times)),
            icon: const Icon(Icons.wb_sunny_outlined, size: 18),
            label: const Text('Once a day'),
          ),
          OutlinedButton.icon(
            onPressed: !loaded || busy
                ? null
                : () => updateReminders([true, true, true], List.of(times)),
            icon: const Icon(Icons.schedule_rounded, size: 18),
            label: const Text('Three moments'),
          ),
        ],
      ),
      const SizedBox(height: 8),
      const Text(
        'Start with one morning reminder, or choose all three. You can adjust every time below.',
        style: TextStyle(fontSize: 12, color: muted, height: 1.6),
      ),
    ],
  );

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
      if (mounted) {
        setState(() {
          saved = next;
          if (!kept.any((id) => verses[id].theme == savedTheme)) {
            savedTheme = 'All';
          }
        });
      }
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
      message('Install the Android or Windows app to receive reminders.');
      return;
    }
    setState(() => busy = true);
    try {
      if (next.any((e) => e) && !await reminders.permission()) {
        message(
          'Notifications are disabled. Allow Stillword in your device notification settings.',
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
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: heading('stillword', 25),
                        ),
                      ),
                    ),
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
                  duration: motion(300),
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
      heading('Your quiet moment.', 33),
      const SizedBox(height: 12),
      const Text(
        'Make room for what matters, one verse at a time.',
        style: TextStyle(color: muted, fontSize: 13, height: 1.7),
      ),
      const SizedBox(height: 20),
      if (loaded && !practice.welcomed) welcomeCard(),
      weeklyPractice(),
      const SizedBox(height: 20),
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
                    duration: motion(250),
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
        duration: motion(350),
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
      if (current != null) readingActions(current!),
      const SizedBox(height: 24),
      Row(
        children: [
          Expanded(
            child: eyebrow(kIsWeb ? 'YOUR DAILY MOMENTS' : 'YOUR DAILY RHYTHM'),
          ),
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
                    if (!kIsWeb)
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
  ).animate().fadeIn(duration: motion(450));
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
                    fontSize: (hero ? 26 : 21) * practice.textScale,
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
        '${kept.length} kept ${kept.length == 1 ? 'verse' : 'verses'} · Your bookmarks and reflections, together.',
        style: const TextStyle(color: muted, height: 1.6, fontSize: 13),
      ),
      const SizedBox(height: 20),
      if (kept.isNotEmpty) ...[
        TextField(
          controller: savedSearchController,
          decoration: const InputDecoration(
            hintText: 'Search verses, references, or reflections',
            prefixIcon: Icon(Icons.search_rounded),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
          onChanged: (value) => setState(() => savedQuery = value),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            for (final theme in [
              'All',
              ...(kept.map((id) => verses[id].theme).toSet().toList()..sort()),
            ])
              ChoiceChip(
                label: Text(theme),
                selected: savedTheme == theme,
                onSelected: (_) => setState(() => savedTheme = theme),
              ),
          ],
        ),
        const SizedBox(height: 16),
        if (filteredSaved.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 28),
            child: Text('No matches yet. Try another word or choose All.'),
          ),
      ],
      if (kept.isEmpty)
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
      ...filteredSaved.map(
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Column(
            children: [
              verseCard(index),
              readingActions(index, savedCard: true),
            ],
          ),
        ),
      ),
    ],
  );
  Widget webSettings() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      eyebrow('YOUR EVERYDAY COMPANION'),
      readingPreferences(),
      const SizedBox(height: 12),
      heading('A little grace,\nalways close.'),
      const SizedBox(height: 22),
      const Icon(Icons.add_to_home_screen_rounded, size: 34),
      const SizedBox(height: 16),
      heading('Add to your Home Screen', 23),
      const SizedBox(height: 12),
      const Text(
        'Open this app in Safari. Tap Share, then Add to Home Screen. Keep Open as Web App enabled if shown, and tap Add.',
        style: TextStyle(height: 1.8),
      ),
      const SizedBox(height: 24),
      heading('Read at your own pace', 23),
      const SizedBox(height: 12),
      const Text(
        '1,095 unique KJV readings, with morning, afternoon, and night moments. Save verses to revisit them. Once the status above says Ready offline, you can read without internet. Your reading plan and bookmarks stay in this browser or installed web app; they do not sync between devices.',
        style: TextStyle(height: 1.8),
      ),
      const SizedBox(height: 24),
      Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFEDEFE6),
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.notifications_off_outlined),
            SizedBox(height: 12),
            Text(
              'No scheduled notifications in the web app',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text(
              'This free iPhone edition supports reading and bookmarks. It cannot send morning, afternoon, or night alerts while closed. Scheduled alerts are available in the Android and Windows downloads.',
              style: TextStyle(height: 1.8),
            ),
          ],
        ),
      ),
      const SizedBox(height: 24),
      const Text(
        'Your daily reading calendar runs for 365 days and never restarts automatically. Clearing browser data may remove your reading progress, bookmarks, and offline files. Your iPhone may also clear cached files when storage is low; reopen online to prepare them again.',
        style: TextStyle(color: muted, height: 1.8, fontSize: 12),
      ),
    ],
  );

  Widget settings() => kIsWeb
      ? webSettings()
      : Column(
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
            const SizedBox(height: 20),
            reminderPresets(),
            readingPreferences(),
            if (reminders.queuedThrough != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'Fresh verses queued through ${DateFormat('MMM d').format(reminders.queuedThrough!)}. Opening Stillword refills your reminders.',
                  style: const TextStyle(
                    color: muted,
                    height: 1.6,
                    fontSize: 12,
                  ),
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
                        const Icon(
                          Icons.schedule_rounded,
                          size: 17,
                          color: muted,
                        ),
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
                    ? () => updateReminders(
                        List.filled(3, !enabled.any((e) => e)),
                        List.of(times),
                      )
                    : null,
                icon: busy
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.notifications_active_outlined, size: 19),
                label: Text(
                  busy
                      ? 'Setting your rhythm…'
                      : enabled.any((e) => e)
                      ? 'Pause all reminders'
                      : 'Enable all reminders',
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: TextButton.icon(
                onPressed: loaded && !busy
                    ? () async {
                        if (!reminders.supported) {
                          message(
                            'Notification previews are available in the installed Android and Windows apps.',
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
                            'Could not send a preview. Check notification permission in device settings.',
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info_outline_rounded,
                    size: 19,
                    color: muted,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      (!kIsWeb &&
                              defaultTargetPlatform == TargetPlatform.windows)
                          ? 'Windows keeps your next 20 days of reminders even when this window is closed. Your PC must be on and awake. Allow Stillword in Windows Settings > System > Notifications; Do not disturb can silence banners. Reopen every 20 days and after a timezone change. Each reading is used once; the collection ends after 365 days.'
                          : '1,095 unique KJV verses. Each daily moment has its own verse, with no automatic repeats. The collection finishes after 365 days at three readings per day. Reopen Stillword at least every 20 days to refill your offline notifications. Android delivery may be a little later; banners follow your device settings.',
                      style: const TextStyle(
                        color: muted,
                        fontSize: 12,
                        height: 1.8,
                      ),
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
