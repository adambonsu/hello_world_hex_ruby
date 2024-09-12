# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.0.4] - 2024-09-12
### Added
- Spec:
  - `file_user_interface_spec.rb` A new spec test for `FileUserInterface` Adaptor.
  - `user_interface_spec.rb` A new spec test for `UserInterface` Port.

### Changed
- Adaptors:
  - `file_user_interface.rb` Accepts a Stream instead of a filename - different files/outputs can be used - makes it more flexible and easier to test (using StringIO).
- Spec:
  - `string_user_interface_spec.rb` Refactored to use a `message` variable - makes test more DRY.

## [0.0.3] - 2024-09-11
### Added
- Spec:
  - `string_user_interface_spec.rb` A new spec test for `StringUserInterface` Adaptor.
  - `user_interface_spec.rb` A new spec test for `UserInterface` Port.

## [0.0.2] - 2024-09-11
### Added
- Adaptors:
  - `StringUserInterface` A new adapter that captures the output as a string. This is useful for testing and scenarios where you need to work with the output programmatically.

## [0.0.1] - 2024-09-06
### Added
- Initial release of the Hello World Hexagonal Architecture gem
- Core functionality:
  - `HelloWorldCore` class to handle the main logic
  - `UserInterfacePort` interface for defining User Interface methods
- Adaptors:
  - `ConsoleUserInterfaceAdaptor` for printing to the console
  - `FileUserInterfaceAdaptor` for writing to a file
- Basic project structure suitable for a Ruby gem
- README with usage instructions and explanation of Hexagonal Architecture
- This CHANGELOG file to track project changes
- MIT License

### Changed
- N/A

### Deprecated
- N/A

### Removed
- N/A

### Fixed
- N/A

### Security
- N/A

[Unreleased]: https://github.com/adambonsu/hello_world_hex_ruby/compare/v0.0.2...HEAD
[0.0.2]: https://github.com/adambonsu/hello_world_hex_ruby/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/adambonsu/hello_world_hex_ruby/releases/tag/v0.0.1