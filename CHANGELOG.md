# Changelog

All notable changes to this Flutter Calculator project will be documented in this file.

## [1.1.0] - 2024-08-08

### Added
- Comprehensive documentation and comments throughout codebase
- Error handling for division by zero operations
- Input length validation to prevent display overflow
- Error state management (only AC can clear error state)
- Proper widget tests for calculator functionality
- Unit test structure for future expansion
- Development guidelines and roadmap

### Changed  
- Updated deprecated Flutter APIs (`primary` → `backgroundColor`)
- Improved code organization with proper variable grouping
- Enhanced README with comprehensive feature documentation
- Modernized test file to match actual app functionality

### Removed
- Unused `displaytxt` variable that was causing code clutter

### Fixed
- Division by zero now shows "Error" instead of crashing
- Calculator buttons use modern Flutter styling APIs
- Test file now properly tests calculator instead of generic counter

## [1.0.0] - Initial Release

### Added
- Basic calculator functionality
- Support for +, -, ×, ÷ operations
- AC (All Clear) function
- +/- sign toggle
- Percentage calculations
- Decimal point support
- Dark theme UI with circular buttons