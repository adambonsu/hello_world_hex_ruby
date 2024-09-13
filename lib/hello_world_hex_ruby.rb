# frozen_string_literal: true

require 'require_all'
require_all 'lib/hello_world_hex_ruby/core/**/*.rb'
require_all 'lib/hello_world_hex_ruby/ports/**/*.rb'
require_all 'lib/hello_world_hex_ruby/adaptors/**/*.rb'
require_relative 'hello_world_hex_ruby/version'

module HelloWorldHexRuby
  class Error < StandardError; end
end
