import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as database;
import 'package:timezone/timezone.dart' as tz;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'reading_plan.dart';
import 'verses.dart';

const periods = ['Morning', 'Afternoon', 'Night'];
const defaultTimes = [
  TimeOfDay(hour: 7, minute: 0),
  TimeOfDay(hour: 12, minute: 0),
  TimeOfDay(hour: 21, minute: 0),
];

class Reminders {
  final plugin = FlutterLocalNotificationsPlugin();
  bool get supported =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS);
  bool initialized = false;
  final ValueNotifier<int?> openedVerse = ValueNotifier(null);

  Future<void> initialize() async {
    if (!supported || initialized) return;
    database.initializeTimeZones();
    await updateTimezone();
    await plugin.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('ic_notification'),
        iOS: DarwinInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        ),
      ),
      onDidReceiveNotificationResponse: (response) {
        openedVerse.value = null;
        openedVerse.value = int.tryParse(response.payload ?? '');
      },
    );
    final launch = await plugin.getNotificationAppLaunchDetails();
    if (launch?.didNotificationLaunchApp ?? false) {
      openedVerse.value = int.tryParse(
        launch?.notificationResponse?.payload ?? '',
      );
    }
    initialized = true;
  }

  Future<void> updateTimezone() async {
    final zone = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(zone.identifier));
  }

  Future<bool> permission() async {
    if (!supported) return false;
    await initialize();
    if (defaultTargetPlatform == TargetPlatform.android) {
      return await plugin
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >()
              ?.requestNotificationsPermission() ??
          false;
    }
    return await plugin
            .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin
            >()
            ?.requestPermissions(alert: true, badge: true, sound: true) ??
        false;
  }

  NotificationDetails details(Verse verse) => NotificationDetails(
    android: AndroidNotificationDetails(
      'daily_scripture',
      'Daily scripture',
      channelDescription: 'Your morning, afternoon, and night Bible verses',
      importance: Importance.high,
      priority: Priority.high,
      styleInformation: BigTextStyleInformation(
        '${verse.text}\n${verse.reference} · KJV',
      ),
    ),
    iOS: const DarwinNotificationDetails(
      presentAlert: true,
      presentSound: true,
      presentBanner: true,
    ),
  );
  DateTime? queuedThrough;

  Future<void> schedule(
    List<bool> enabled,
    List<TimeOfDay> times,
    ReadingPlan plan,
  ) async {
    if (!supported) return;
    await initialize();
    await updateTimezone();
    final now = tz.TZDateTime.now(tz.local);
    final prefs = await SharedPreferences.getInstance();
    final ledger = Map<String, dynamic>.from(
      jsonDecode(prefs.getString('scheduled_readings_v2') ?? '{}') as Map,
    );
    var retired = prefs.getInt('retired_reading_v2') ?? -1;
    // Past scheduled slots are retired, even if a new chosen time would put
    // that same verse in the future. Never reissue a possibly delivered verse.
    for (final entry in ledger.entries) {
      if (DateTime.parse(entry.value as String).isBefore(now) ||
          DateTime.parse(entry.value as String).isAtSameMomentAs(now)) {
        final index = int.parse(entry.key);
        if (index > retired) retired = index;
      }
    }
    if (!await prefs.setInt('retired_reading_v2', retired)) {
      throw StateError('Unable to save reminder history');
    }
    final readings = upcomingReadings(
      plan: plan,
      now: now,
      enabled: enabled,
      times: times,
      retiredThrough: retired,
    );
    final keep = readings.map((r) => r.notificationId).toSet();
    // Cancel the original weekly loop once on upgrade.
    if (!(prefs.getBool('migrated_notifications_v2') ?? false)) {
      for (var id = 0; id < 21; id++) {
        await plugin.cancel(id: id);
      }
      await prefs.setBool('migrated_notifications_v2', true);
    }
    final pending = await plugin.pendingNotificationRequests();
    for (final request in pending) {
      if (!keep.contains(request.id)) await plugin.cancel(id: request.id);
    }
    // Save the desired ledger before native writes: a partially failed batch
    // can skip a verse but can never silently duplicate an elapsed one.
    final nextLedger = {
      for (final r in readings) '${r.index}': r.date.toUtc().toIso8601String(),
    };
    if (!await prefs.setString(
      'scheduled_readings_v2',
      jsonEncode(nextLedger),
    )) {
      throw StateError('Unable to save reminder history');
    }
    for (final reading in readings) {
      final verse = verses[reading.index];
      await plugin.zonedSchedule(
        id: reading.notificationId,
        title: '${periods[reading.slot]} grace · ${verse.reference}',
        body: verse.text,
        scheduledDate: reading.date,
        notificationDetails: details(verse),
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        payload: '${reading.index}',
      );
    }
    queuedThrough = readings.isEmpty ? null : readings.last.date;
    if (readings.isNotEmpty &&
        plan.indexFor(readings.last.date.add(const Duration(days: 1)), 0) !=
            null) {
      await plugin.zonedSchedule(
        id: 900000,
        title: 'Make room for your next verses',
        body: 'Open Stillword to prepare your next 20 days of fresh scripture.',
        scheduledDate: readings.last.date.add(const Duration(minutes: 5)),
        notificationDetails: const NotificationDetails(
          android: AndroidNotificationDetails(
            'daily_scripture',
            'Daily scripture',
            importance: Importance.high,
            priority: Priority.high,
          ),
          iOS: DarwinNotificationDetails(),
        ),
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      );
    }
  }

  Future<void> preview(int index) async {
    if (!await permission()) {
      throw StateError('Allow notifications in phone settings.');
    }
    await plugin.show(
      id: 100,
      title: 'A moment of stillness · ${verses[index].reference}',
      body: verses[index].text,
      notificationDetails: details(verses[index]),
      payload: '$index',
    );
  }
}
