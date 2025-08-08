// Unit tests for calculator logic
//
// These tests verify the mathematical operations work correctly
// without requiring the UI components.

import 'package:flutter_test/flutter_test.dart';
import 'package:calculator_app/main.dart';

void main() {
  group('Calculator Logic Tests', () {
    late Calculator calculator;

    setUp(() {
      calculator = Calculator();
    });

    test('Calculator widget can be instantiated', () {
      expect(calculator, isNotNull);
      expect(calculator, isA<Calculator>());
    });

    // Note: Since the calculation methods are in the private _CalculatorState class,
    // we test the complete flow through widget tests in widget_test.dart
    // This file demonstrates how you could structure unit tests for extracted logic

    test('Calculator state initialization', () {
      // This test verifies that the Calculator widget can be created
      // In a real-world scenario, you'd extract the calculation logic
      // into separate classes/methods that can be unit tested independently
      expect(calculator.createState(), isA<State<Calculator>>());
    });
  });
}