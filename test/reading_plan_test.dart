import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stillword/reading_plan.dart';
import 'package:stillword/verses.dart';
import 'package:timezone/data/latest.dart' as database;
import 'package:timezone/timezone.dart' as tz;

void main() {
  test(
    '365 unique references and texts, with legacy bookmark IDs preserved',
    () {
      final current = verses.skip(firstReadingIndex).toList();
      expect(current, hasLength(365));
      expect(current.map((v) => v.reference).toSet(), hasLength(365));
      expect(
        verses
            .map(
              (v) => v.text.toLowerCase().replaceAll(RegExp('[^a-z0-9]'), ''),
            )
            .toSet(),
        hasLength(verses.length),
      );
      expect(verses[0].reference, 'Psalm 118:24');
      expect(verses[20].reference, 'Psalm 139:14');
    },
  );
  test(
    'Calendar assignments never repeat after one week and never wrap on exhaustion',
    () {
      final start = DateTime(2026, 10, 6);
      final plan = ReadingPlan.starting(start);
      final ids = <int>[];
      for (var day = 0; day < 150; day++) {
        for (var slot = 0; slot < 3; slot++) {
          final index = plan.indexFor(DateTime(2026, 10, 6 + day), slot);
          if (index != null) ids.add(index);
        }
      }
      expect(ids, hasLength(365));
      expect(ids.toSet(), hasLength(365));
      expect(plan.indexFor(start.subtract(const Duration(days: 1)), 0), isNull);
      expect(plan.indexFor(DateTime(2027, 10, 6), 0), isNull);
      expect(ReadingPlan(plan.startDay).indexFor(start, 0), firstReadingIndex);
    },
  );
  test(
    'One-shot schedules preserve wall-clock time through DST and omit past slots',
    () {
      database.initializeTimeZones();
      final zone = tz.getLocation('America/New_York');
      final now = tz.TZDateTime(zone, 2026, 3, 7, 22);
      final items = upcomingReadings(
        plan: ReadingPlan.starting(now),
        now: now,
        enabled: [true, true, true],
        times: const [
          TimeOfDay(hour: 7, minute: 0),
          TimeOfDay(hour: 12, minute: 0),
          TimeOfDay(hour: 21, minute: 0),
        ],
      );
      expect(items.first.date.day, 8);
      expect(items.first.date.hour, 7);
      expect(items.first.date.timeZoneOffset, const Duration(hours: -4));
      expect(items.every((r) => r.date.isAfter(now)), isTrue);
      expect(items.map((r) => r.index).toSet().length, items.length);
      expect(items.length, 57);
    },
  );
}
