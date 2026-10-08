import 'package:flutter_test/flutter_test.dart';
import 'package:stillword/daily_practice.dart';
import 'package:stillword/reading_plan.dart';

void main() {
  test('Reading days count once and notes/preferences survive a restart', () {
    final today = DateTime(2026, 10, 8);
    final practice = const DailyPractice()
        .markRead(21, today)
        .markRead(22, today)
        .reflect(21, '  Make room for patience.  ')
        .copyWith(textScale: 1.3, welcomed: true);
    final restored = DailyPractice.decode(practice.encode());
    expect(restored.read, {21, 22});
    expect(restored.days, {calendarDay(today)});
    expect(restored.notes[21], 'Make room for patience.');
    expect(restored.textScale, 1.3);
    expect(restored.welcomed, isTrue);
    expect(restored.reflect(21, ' ').notes, isEmpty);
    expect(restored.notes, isNotEmpty); // Editing does not mutate saved state.
  });
  test('New installs and invalid IDs have safe reading preferences', () {
    expect(DailyPractice.decode(null).read, isEmpty);
    final restored = DailyPractice.decode(
      '{"read":[-1,21,99999],"textScale":99,"notes":{"invalid":"x","21":"keep"}}',
    );
    expect(restored.read, {21});
    expect(restored.textScale, 1);
    expect(restored.notes, {21: 'keep'});
  });
}
