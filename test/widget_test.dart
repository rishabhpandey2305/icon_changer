import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:icon_changer/main.dart';

void main() {
  group('Icon Changer App Tests', () {
    testWidgets('App should render without crashing', (
      WidgetTester tester,
    ) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that the app renders without crashing
      expect(find.byType(MaterialApp), findsOneWidget);
      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets('App should display festival theme app title', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MyApp());

      // Verify that the app bar title is displayed
      expect(find.text('Festival Theme App'), findsOneWidget);
    });

    testWidgets('App should display current festival text', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MyApp());

      // Verify that the current festival text is displayed
      expect(find.textContaining('Current Festival:'), findsOneWidget);
    });

    testWidgets('App should display an image', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Verify that an image is displayed
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('App should display festival information in center', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MyApp());

      // Verify that the main content is centered
      expect(find.byType(Center), findsOneWidget);
      expect(find.byType(Column), findsOneWidget);
    });

    testWidgets('App should have flexible image that fits screen', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MyApp());

      // Verify that the image is wrapped in a Flexible widget
      expect(find.byType(Flexible), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
    });
  });

  group('Festival Icon Function Tests', () {
    test('getFestivalIcon should return default icon path', () {
      // Test the default case
      final iconPath = getFestivalIcon();
      expect(iconPath, isA<String>());
      expect(iconPath, contains('assets/icons/'));
    });

    test('festival constant should have a default value', () {
      // Test that the festival constant is defined
      expect(festival, isA<String>());
      expect(festival.isNotEmpty, isTrue);
    });
  });
}
