// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:doable_todo_list_app/screens/home_page.dart';

void main() {
  // Initialize sqflite for testing on the Dart VM.
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  testWidgets('HomePage loads and shows Today header', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));
    await tester.pumpAndSettle();

    expect(find.text('Today'), findsOneWidget);
  });
}
