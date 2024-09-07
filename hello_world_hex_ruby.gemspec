# frozen_string_literal: true

require_relative 'lib/hello_world_hex_ruby/version'

Gem::Specification.new do |spec|
  spec.name = 'hello_world_hex_ruby'
  spec.version       = HelloWorldHexRuby::VERSION
  spec.authors       = ['Adam Bonsu']
  spec.email         = ['adam@bonsu.io']
  spec.summary       = 'A ruby Hello World example using Hexagonal Architecture'
  spec.description   = 'This gem demonstrates Hexagonal Architecture with a simple ruby Hello World application.'
  spec.homepage      = 'https://github.com/adambonsu/hello_world_hex_ruby'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/adambonsu/hello_world_hex_ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/adambonsu/hello_world_hex_ruby/blob/main/CHANGELOG.md'
  spec.metadata['rubygems_mfa_required'] = 'true'
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
