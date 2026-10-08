import 'dart:convert';
import 'reading_plan.dart';
import 'verses.dart';

/// Local-only reading preferences and reflections. Stable verse IDs survive updates.
class DailyPractice {
  final Set<int> read;
  final Set<int> days;
  final Map<int, String> notes;
  final double textScale;
  final bool welcomed;

  const DailyPractice({
    this.read = const {},
    this.days = const {},
    this.notes = const {},
    this.textScale = 1,
    this.welcomed = false,
  });

  factory DailyPractice.decode(String? source) {
    if (source == null) return const DailyPractice();
    final data = jsonDecode(source) as Map<String, dynamic>;
    return DailyPractice(
      read: (data['read'] as List? ?? [])
          .whereType<int>()
          .where((id) => id >= 0 && id < verses.length)
          .toSet(),
      days: (data['days'] as List? ?? []).whereType<int>().toSet(),
      notes: {
        for (final entry in (data['notes'] as Map? ?? {}).entries)
          if (int.tryParse('${entry.key}') case final int id)
            if (id >= 0 && id < verses.length && entry.value is String)
              id: entry.value as String,
      },
      textScale: [1, 1.15, 1.3].contains(data['textScale'])
          ? (data['textScale'] as num).toDouble()
          : 1,
      welcomed: data['welcomed'] == true,
    );
  }

  DailyPractice copyWith({
    Set<int>? read,
    Set<int>? days,
    Map<int, String>? notes,
    double? textScale,
    bool? welcomed,
  }) => DailyPractice(
    read: read ?? this.read,
    days: days ?? this.days,
    notes: notes ?? this.notes,
    textScale: textScale ?? this.textScale,
    welcomed: welcomed ?? this.welcomed,
  );

  DailyPractice markRead(int index, DateTime date) =>
      copyWith(read: {...read, index}, days: {...days, calendarDay(date)});

  DailyPractice reflect(int index, String text) {
    final next = Map<int, String>.of(notes);
    text.trim().isEmpty ? next.remove(index) : next[index] = text.trim();
    return copyWith(notes: next);
  }

  String encode() => jsonEncode({
    'read': read.toList(),
    'days': days.toList(),
    'notes': {for (final entry in notes.entries) '${entry.key}': entry.value},
    'textScale': textScale,
    'welcomed': welcomed,
  });
}
