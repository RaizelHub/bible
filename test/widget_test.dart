import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter_test/flutter_test.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:stillword/main.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    debugDefaultTargetPlatformOverride = TargetPlatform.linux;
  });
  tearDown(() => debugDefaultTargetPlatformOverride = null);
  testWidgets('Small screens support larger reading text and reduced motion', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 900);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.textScaleFactorTestValue = 1.5;
    tester.platformDispatcher.accessibilityFeaturesTestValue =
        const FakeAccessibilityFeatures(disableAnimations: true);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    addTearDown(tester.platformDispatcher.clearAccessibilityFeaturesTestValue);
    await tester.pumpWidget(const StillwordApp());
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    await tester.tap(find.text('Rhythm'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Largest'));
    await tester.tap(find.text('Largest'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    await tester.tap(find.text('Today'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(
      (await SharedPreferences.getInstance()).getString('daily_practice_v1'),
      contains('1.3'),
    );
    debugDefaultTargetPlatformOverride = null;
  });
  testWidgets('Daily reading and reflections persist and can be searched', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const StillwordApp());
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Start reading'));
    await tester.tap(find.text('Start reading'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Mark as read'));
    await tester.tap(find.text('Mark as read'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Add reflection'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Carry patience into work.');
    await tester.tap(find.text('Save reflection'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Saved'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'patience');
    await tester.pumpAndSettle();
    expect(find.text('Carry patience into work.'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'not-in-any-verse');
    await tester.pumpAndSettle();
    expect(
      find.text('No matches yet. Try another word or choose All.'),
      findsOneWidget,
    );
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(const StillwordApp());
    await tester.pumpAndSettle();
    expect(find.text('1 of 7 days this week'), findsOneWidget);
    expect(find.text('Start reading'), findsNothing);
    await tester.tap(find.text('Saved'));
    await tester.pumpAndSettle();
    expect(find.text('Carry patience into work.'), findsOneWidget);
    expect(tester.takeException(), isNull);
    debugDefaultTargetPlatformOverride = null;
  });
  testWidgets('Save a verse and find it in the collection on a small phone', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final preview = GlobalKey();
    if (const bool.fromEnvironment('CAPTURE_PREVIEW')) {
      final icons = FontLoader('MaterialIcons')
        ..addFont(rootBundle.load('fonts/MaterialIcons-Regular.otf'));
      await icons.load();
      for (final family in ['Manrope', 'Lora']) {
        final loader = FontLoader(family)
          ..addFont(rootBundle.load('assets/fonts/$family.ttf'));
        await loader.load();
      }
    }
    await tester.pumpWidget(
      RepaintBoundary(key: preview, child: const StillwordApp()),
    );
    await tester.pumpAndSettle();
    if (const bool.fromEnvironment('CAPTURE_PREVIEW')) {
      await tester.runAsync(() async {
        final boundary =
            preview.currentContext!.findRenderObject()!
                as RenderRepaintBoundary;
        final image = await boundary.toImage(pixelRatio: 2);
        final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
        await Directory('artifacts').create(recursive: true);
        await File(
          'artifacts/stillword-preview.png',
        ).writeAsBytes(bytes!.buffer.asUint8List());
        image.dispose();
      });
    }
    await tester.ensureVisible(find.byTooltip('Save verse'));
    await tester.tap(find.byTooltip('Save verse'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Saved'));
    await tester.pumpAndSettle();
    expect(find.text('Verses to return to.'), findsOneWidget);
    expect(find.byTooltip('Remove saved verse'), findsOneWidget);
    expect(
      (await SharedPreferences.getInstance()).getStringList('saved'),
      hasLength(1),
    );
    await tester.tap(find.text('Rhythm'));
    await tester.pumpAndSettle();
    expect(find.text('Find your rhythm.'), findsOneWidget);
    expect(tester.takeException(), isNull);
    debugDefaultTargetPlatformOverride = null;
  });
}
