/// Utility functions for calculator operations
/// 
/// This file contains helper functions that can be used across the calculator app
/// to maintain clean separation of concerns and improve testability.

/// Validates if a string represents a valid number
bool isValidNumber(String input) {
  if (input.isEmpty) return false;
  return double.tryParse(input) != null;
}

/// Formats a number result to remove unnecessary decimal places
String formatResult(dynamic result) {
  if (result.toString().contains('.')) {
    List<String> splitDecimal = result.toString().split('.');
    if (int.parse(splitDecimal[1]) == 0) {
      return splitDecimal[0];
    }
  }
  return result.toString();
}

/// Checks if input length is within display limits
bool isInputWithinLimits(String input, {int maxLength = 10}) {
  return input.length <= maxLength;
}

/// Calculator operation types
enum Operation {
  add,
  subtract,
  multiply,
  divide,
  equals,
  clear,
  percentage,
  toggleSign,
  decimal
}

/// Converts button text to operation enum
Operation? getOperationFromText(String buttonText) {
  switch (buttonText) {
    case '+':
      return Operation.add;
    case '-':
      return Operation.subtract;
    case 'x':
      return Operation.multiply;
    case '/':
      return Operation.divide;
    case '=':
      return Operation.equals;
    case 'AC':
      return Operation.clear;
    case '%':
      return Operation.percentage;
    case '+/-':
      return Operation.toggleSign;
    case '.':
      return Operation.decimal;
    default:
      return null;
  }
}