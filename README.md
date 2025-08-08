# Flutter Calculator App

A fully functional calculator built with Flutter that provides basic arithmetic operations with a sleek dark theme interface.

## Features

- **Basic Arithmetic Operations**: Addition (+), Subtraction (-), Multiplication (×), Division (÷)
- **Advanced Functions**: 
  - Clear All (AC)
  - Toggle Sign (+/-)
  - Percentage (%)
  - Decimal Point Support
- **Error Handling**: Division by zero protection
- **Modern UI**: Dark theme with circular buttons and clean design
- **Responsive Layout**: Works across different screen sizes

## Screenshots

The calculator features a dark interface with:
- Orange operator buttons for visual distinction
- Grey number buttons with white text
- Large display area for calculations
- Intuitive button layout matching standard calculators

## Usage

1. **Numbers**: Tap number buttons (0-9) to input values
2. **Operations**: Tap operation buttons (+, -, ×, ÷) to perform calculations
3. **Equals**: Tap = to get results
4. **Clear**: Tap AC to clear all values and reset
5. **Decimal**: Tap . to add decimal points
6. **Sign Toggle**: Tap +/- to change positive/negative
7. **Percentage**: Tap % for percentage calculations

## Testing

The app includes comprehensive widget tests covering:
- Initial state verification
- Basic arithmetic operations
- Clear functionality
- Error handling (division by zero)

Run tests with: `flutter test`

## Getting Started

This project requires Flutter SDK. To run the application:

1. Ensure Flutter is installed on your system
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the app

## Development

- **Language**: Dart
- **Framework**: Flutter
- **Architecture**: StatefulWidget with centralized state management
- **Testing**: Widget tests using flutter_test

## Code Quality

The codebase follows Flutter best practices:
- Proper documentation and comments
- Error handling for edge cases
- Modern Flutter APIs (no deprecated methods)
- Clean, readable code structure
- Comprehensive test coverage
