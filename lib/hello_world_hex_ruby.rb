# frozen_string_literal: true

require 'lib/hello_world_hex_ruby/core/hello_world_core'
require 'lib/hello_world_hex_ruby/ports/user_interface'
require 'lib/hello_world_hex_ruby/adaptors/console_user_interface'
require 'lib/hello_world_hex_ruby/adaptors/file_user_interface'
require 'lib/hello_world_hex_ruby/adaptors/string_user_interface'
require_relative 'hello_world_hex_ruby/version'

module HelloWorldHexRuby
  class Error < StandardError; end
end
