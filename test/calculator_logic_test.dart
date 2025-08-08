// Unit tests for calculator logic and utilities
//
// These tests verify the mathematical operations and utility functions
// work correctly without requiring the UI components.

import 'package:flutter_test/flutter_test.dart';
import 'package:calculator_app/main.dart';
import 'package:calculator_app/calculator_utils.dart';

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

    test('Calculator state initialization', () {
      expect(calculator.createState(), isA<State<Calculator>>());
    });
  });

  group('Calculator Utility Tests', () {
    test('isValidNumber correctly validates numbers', () {
      expect(isValidNumber('123'), isTrue);
      expect(isValidNumber('12.34'), isTrue);
      expect(isValidNumber('-5'), isTrue);
      expect(isValidNumber('abc'), isFalse);
      expect(isValidNumber(''), isFalse);
      expect(isValidNumber('12.34.56'), isFalse);
    });

    test('formatResult removes unnecessary decimals', () {
      expect(formatResult('5.0'), equals('5'));
      expect(formatResult('5.5'), equals('5.5'));
      expect(formatResult('123'), equals('123'));
      expect(formatResult('-5.0'), equals('-5'));
    });

    test('isInputWithinLimits checks length correctly', () {
      expect(isInputWithinLimits('123'), isTrue);
      expect(isInputWithinLimits('1234567890'), isTrue);
      expect(isInputWithinLimits('12345678901'), isFalse);
      expect(isInputWithinLimits('12345', maxLength: 3), isFalse);
      expect(isInputWithinLimits('123', maxLength: 5), isTrue);
    });

    test('getOperationFromText returns correct operations', () {
      expect(getOperationFromText('+'), equals(Operation.add));
      expect(getOperationFromText('-'), equals(Operation.subtract));
      expect(getOperationFromText('x'), equals(Operation.multiply));
      expect(getOperationFromText('/'), equals(Operation.divide));
      expect(getOperationFromText('='), equals(Operation.equals));
      expect(getOperationFromText('AC'), equals(Operation.clear));
      expect(getOperationFromText('%'), equals(Operation.percentage));
      expect(getOperationFromText('+/-'), equals(Operation.toggleSign));
      expect(getOperationFromText('.'), equals(Operation.decimal));
      expect(getOperationFromText('invalid'), isNull);
    });
  });
}