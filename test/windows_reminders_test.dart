import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stillword/reading_plan.dart';
import 'package:stillword/reminders.dart';
import 'package:timezone/timezone.dart' as tz;

// Model Windows AddToSchedule: equal IDs append instead of replacing entries.
class WindowsQueue extends Fake implements FlutterLocalNotificationsPlugin {
  final queue = <PendingNotificationRequest>[];
  final dates = <int, tz.TZDateTime>{};
  InitializationSettings? settings;
  DidReceiveNotificationResponseCallback? onResponse;
  int? previewId;

  @override
  Future<bool?> initialize({
    required InitializationSettings settings,
    DidReceiveNotificationResponseCallback? onDidReceiveNotificationResponse,
    DidReceiveBackgroundNotificationResponseCallback?
    onDidReceiveBackgroundNotificationResponse,
  }) async {
    this.settings = settings;
    onResponse = onDidReceiveNotificationResponse;
    return true;
  }

  @override
  Future<NotificationAppLaunchDetails?>
  getNotificationAppLaunchDetails() async =>
      const NotificationAppLaunchDetails(false);

  @override
  Future<List<PendingNotificationRequest>>
  pendingNotificationRequests() async => List.of(queue);

  @override
  Future<void> cancel({required int id, String? tag}) async {
    final i = queue.indexWhere((entry) => entry.id == id);
    if (i >= 0) queue.removeAt(i);
    dates.remove(id);
  }

  @override
  Future<void> zonedSchedule({
    required int id,
    required tz.TZDateTime scheduledDate,
    required NotificationDetails notificationDetails,
    required AndroidScheduleMode androidScheduleMode,
    String? title,
    String? body,
    String? payload,
    DateTimeComponents? matchDateTimeComponents,
  }) async {
    expect(notificationDetails.windows, isNotNull);
    expect(matchDateTimeComponents, isNull);
    queue.add(PendingNotificationRequest(id, title, body, payload));
    dates[id] = scheduledDate;
  }

  @override
  Future<void> show({
    required int id,
    String? title,
    String? body,
    NotificationDetails? notificationDetails,
    String? payload,
  }) async {
    expect(notificationDetails?.windows, isNotNull);
    previewId = id;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const timezone = MethodChannel('flutter_timezone');
  setUp(() {
    debugDefaultTargetPlatformOverride = TargetPlatform.windows;
    SharedPreferences.setMockInitialValues({});
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(timezone, (_) async => 'Asia/Taipei');
  });
  tearDown(() {
    debugDefaultTargetPlatformOverride = null;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(timezone, null);
  });

  test(
    'Windows refresh/restart replaces queued toasts and disabling clears them',
    () async {
      final native = WindowsQueue();
      final reminders = Reminders(plugin: native);
      final plan = ReadingPlan.starting(DateTime.now());
      expect(reminders.supported, isTrue);
      expect(await reminders.permission(), isTrue);
      expect(native.settings?.windows?.appUserModelId, 'RaizelHub.Stillword');
      await reminders.schedule([true, true, true], defaultTimes, plan);
      final ids = native.queue.map((r) => r.id).toSet();
      expect(ids.length, inInclusiveRange(58, 61));
      final restarted = Reminders(plugin: native);
      await restarted.schedule([true, true, true], defaultTimes, plan);
      expect(native.queue.length, ids.length);
      expect(native.queue.map((r) => r.id).toSet(), ids);
      await restarted.schedule([false, false, false], defaultTimes, plan);
      expect(native.queue, isEmpty);
    },
  );

  test(
    'Windows preview and notification activation use the selected verse',
    () async {
      final native = WindowsQueue();
      final reminders = Reminders(plugin: native);
      await reminders.preview(21);
      expect(native.previewId, 100);
      native.onResponse!(
        const NotificationResponse(
          notificationResponseType:
              NotificationResponseType.selectedNotification,
          payload: '24',
        ),
      );
      expect(reminders.openedVerse.value, 24);
    },
  );
}
