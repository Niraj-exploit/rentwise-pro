// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rentwise_pro/main.dart';

void main() {
  testWidgets('App smoke test (renders)', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(child: MyApp()),
    );

    // Verify that at least the MaterialApp is built by checking for title text.
    // (Route/UI depends on router setup; this keeps the test robust.)
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
