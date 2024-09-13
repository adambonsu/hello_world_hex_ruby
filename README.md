# Hello World Hex Ruby

[![Gem Version](https://badge.fury.io/rb/hello_world_hex.svg)](https://badge.fury.io/rb/hello_world_hex_ruby)
[![Build Status](https://travis-ci.org/yourusername/hello_world_hex_ruby.svg?branch=main)](https://travis-ci.org/adambonsu/hello_world_hex_ruby)

Hello World Hex Ruby is a simple Ruby gem that demonstrates the principles of Hexagonal Architecture (also known as Ports and Adaptors) using a "Hello World" example.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Hexagonal Architecture Overview](#hexagonal-architecture-overview)
- [Development](#development)
- [Contributing](#contributing)
- [License](#license)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hello_world_hex_ruby'

```

And then execute:
```
$ bundle install

```

Or install it yourself with:
```
$ gem sources --add https://USERNAME:TOKEN@rubygems.pkg.github.com/adambonsu/
$ gem install hello_world_hex_ruby

```
* `USERNAME` with your GitHub username.
* `TOKEN` with your personal access token (classic).


## Usage
Here's an example of how to use the gem:
```ruby
# Create an adaptor
console_adaptor = HelloWorldHexRuby::Adaptors::ConsoleUserInterface.new

# Create the core application with the adaptor
core = HelloWorldHexRuby::Core::HelloWorldCore.new(console_adaptor)

# Use the core application
core.say_hello("World")  # Outputs: Hello, World!

# Use a different adaptor
file_adaptor = HelloWorldHexRuby::Adaptors::FileUserInterface.new(File.open('output.txt', 'w'))
core_with_file = HelloWorldHexRuby::Core::HelloWorldCore.new(file_adaptor)
core_with_file.say_hello("Ruby")  # Writes "Hello, Ruby!" to output.txt

```

## Hexagonal Architecture Overview

Hexagonal Architecture, also known as Ports and Adaptors, is a software design pattern that aims to create loosly coupled application components.
It separates the core logic of an application from its external concerns.

Key components in this architecture are:
1. Core: Contains the main business logic (`HelloWorldCore`)
2. Ports: Interfaces that ddefine how the core interacts with the outside world (`UserInterface`)
3. Adaptors: Implementations of ports that handle external interactions (`ConsoleUserInterface`, `FileUserInterface`)

Benefits of this architecture include:
* Separation of concerns
* Improved testability
* Flexibility to change external components without affecting the core logic


## Development

After checking out the repo, run `bin\setup` to install dependencies. Then run `rake spec` to run the tests.
You can also run `bin\console` for an interactive prompt that will allow you to experiment.
To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number [in version.rb](./lib/hello_world_hex_ruby/version.rb), and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to the package repo


## Contributing

Bug reports and pull requests are welcome [Github](https://github.com/adambonsu/hello_world_hex_ruby).
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](./CODE_OF_CONDUCT.md).

## Licence

The gem is available as open source under the terms of the [MIT Licence](https://opensource.org/license/mit).

## Code of Conduct

Everyone interacting in the HelloWorldHexRuby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](./CODE_OF_CONDUCT.md).