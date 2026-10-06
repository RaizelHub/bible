import 'package:flutter/material.dart';
import 'package:timezone/timezone.dart' as tz;
import 'verses.dart';

int calendarDay(DateTime date) =>
    DateTime.utc(date.year, date.month, date.day).millisecondsSinceEpoch ~/
    Duration.millisecondsPerDay;

/// One immutable verse assignment per calendar day and period. Never wraps.
class ReadingPlan {
  final int startDay;
  const ReadingPlan(this.startDay);
  factory ReadingPlan.starting(DateTime date) => ReadingPlan(calendarDay(date));

  int? indexFor(DateTime date, int slot) {
    final offset = (calendarDay(date) - startDay) * 3 + slot;
    if (slot < 0 || slot > 2 || offset < 0 || offset >= readingCount) {
      return null;
    }
    return firstReadingIndex + offset;
  }
}

class ScheduledReading {
  final int index, slot;
  final tz.TZDateTime date;
  const ScheduledReading(this.index, this.slot, this.date);
  int get notificationId => 1000 + index;
}

List<ScheduledReading> upcomingReadings({
  required ReadingPlan plan,
  required tz.TZDateTime now,
  required List<bool> enabled,
  required List<TimeOfDay> times,
  int retiredThrough = -1,
}) {
  final result = <ScheduledReading>[];
  // At most 60 one-shot notifications; reserve room for a refill reminder.
  for (var day = 0; day < 20; day++) {
    for (var slot = 0; slot < 3; slot++) {
      if (!enabled[slot]) continue;
      final time = times[slot];
      final date = tz.TZDateTime(
        now.location,
        now.year,
        now.month,
        now.day + day,
        time.hour,
        time.minute,
      );
      final index = plan.indexFor(date, slot);
      if (index == null || index <= retiredThrough || !date.isAfter(now)) {
        continue;
      }
      result.add(ScheduledReading(index, slot, date));
    }
  }
  result.sort((a, b) => a.date.compareTo(b.date));
  return result;
}
