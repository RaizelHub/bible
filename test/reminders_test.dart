import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stillword/reminders.dart';
import 'package:stillword/reading_plan.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const channel = MethodChannel('dexterous.com/flutter/local_notifications');
  const timezone = MethodChannel('flutter_timezone');
  final calls = <MethodCall>[];
  final pending = <int, Map<String, dynamic>>{};
  var granted = true;
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    AndroidFlutterLocalNotificationsPlugin.registerWith();
    calls.clear();
    pending.clear();
    granted = true;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(timezone, (_) async => 'Asia/Taipei');
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (call) async {
          calls.add(call);
          if (call.method == 'initialize') return true;
          if (call.method == 'requestNotificationsPermission') return granted;
          if (call.method == 'getNotificationAppLaunchDetails') {
            return {'notificationLaunchedApp': false};
          }
          if (call.method == 'pendingNotificationRequests') {
            return pending.values.toList();
          }
          if (call.method == 'cancel') pending.remove(call.arguments['id']);
          if (call.method == 'zonedSchedule') {
            final args = Map<String, dynamic>.from(call.arguments as Map);
            pending[args['id'] as int] = {
              'id': args['id'],
              'title': args['title'],
              'body': args['body'],
              'payload': args['payload'],
            };
          }
          return null;
        });
  });
  tearDown(() {
    debugDefaultTargetPlatformOverride = null;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(timezone, null);
  });
  test(
    'Queues unique one-shot readings under iOS limit and cancels disabled periods',
    () async {
      final reminders = Reminders();
      final plan = ReadingPlan.starting(DateTime.now());
      await reminders.schedule([true, true, true], defaultTimes, plan);
      final scheduled = calls
          .where(
            (c) => c.method == 'zonedSchedule' && c.arguments['id'] != 900000,
          )
          .toList();
      expect(scheduled.length, inInclusiveRange(57, 60));
      expect(
        scheduled.map((c) => c.arguments['payload']).toSet().length,
        scheduled.length,
      );
      expect(
        scheduled.every((c) => c.arguments['matchDateTimeComponents'] == null),
        isTrue,
      );
      expect(
        scheduled.every((c) => c.arguments['timeZoneName'] == 'Asia/Taipei'),
        isTrue,
      );
      expect(pending.length, lessThanOrEqualTo(61));
      await reminders.schedule([true, false, true], defaultTimes, plan);
      expect(
        pending.values
            .where((r) => r['id'] != 900000)
            .every((r) => int.parse(r['payload'] as String) % 3 != 1),
        isTrue,
      );
      await reminders.schedule([false, false, false], defaultTimes, plan);
      expect(pending, isEmpty);
    },
  );
  test('Moving reminder time does not reissue an elapsed verse', () async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'scheduled_readings_v2',
      jsonEncode({
        '21': DateTime.now()
            .subtract(const Duration(hours: 1))
            .toUtc()
            .toIso8601String(),
      }),
    );
    final reminders = Reminders();
    await reminders.schedule(
      [true, true, true],
      List.filled(3, const TimeOfDay(hour: 23, minute: 59)),
      ReadingPlan.starting(DateTime.now()),
    );
    expect(
      calls.where(
        (c) => c.method == 'zonedSchedule' && c.arguments['payload'] == '21',
      ),
      isEmpty,
    );
    expect(prefs.getInt('retired_reading_v2'), 21);
  });
  test('Denied permission does not send a test notification', () async {
    granted = false;
    await expectLater(Reminders().preview(21), throwsStateError);
    expect(calls.where((c) => c.method == 'show'), isEmpty);
  });
}
