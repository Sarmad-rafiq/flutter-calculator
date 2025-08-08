// This is a basic Flutter widget test for the Calculator app.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator_app/main.dart';

void main() {
  testWidgets('Calculator displays initial value', (WidgetTester tester) async {
    // Build our calculator app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the calculator starts with 0 displayed.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('Calculator'), findsOneWidget);
  });

  testWidgets('Calculator can perform basic addition', (WidgetTester tester) async {
    // Build our calculator app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap '2', then '+', then '3', then '='
    await tester.tap(find.text('2'));
    await tester.pump();
    
    await tester.tap(find.text('+'));
    await tester.pump();
    
    await tester.tap(find.text('3'));
    await tester.pump();
    
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify the result is 5
    expect(find.text('5'), findsOneWidget);
  });

  testWidgets('Calculator can clear with AC', (WidgetTester tester) async {
    // Build our calculator app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap '5' then 'AC'
    await tester.tap(find.text('5'));
    await tester.pump();
    
    await tester.tap(find.text('AC'));
    await tester.pump();

    // Verify the display shows 0
    expect(find.text('0'), findsOneWidget);
  });

  testWidgets('Calculator handles division by zero', (WidgetTester tester) async {
    // Build our calculator app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap '5', then '/', then '0', then '='
    await tester.tap(find.text('5'));
    await tester.pump();
    
    await tester.tap(find.text('/'));
    await tester.pump();
    
    await tester.tap(find.text('0'));
    await tester.pump();
    
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify the display shows Error
    expect(find.text('Error'), findsOneWidget);
  });

  testWidgets('Calculator error state only clears with AC', (WidgetTester tester) async {
    // Build our calculator app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Create error state with division by zero
    await tester.tap(find.text('1'));
    await tester.pump();
    await tester.tap(find.text('/'));
    await tester.pump();
    await tester.tap(find.text('0'));
    await tester.pump();
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify error state
    expect(find.text('Error'), findsOneWidget);

    // Try to input numbers - should not work
    await tester.tap(find.text('5'));
    await tester.pump();
    expect(find.text('Error'), findsOneWidget); // Still in error state

    // AC should clear error
    await tester.tap(find.text('AC'));
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
  });
}
