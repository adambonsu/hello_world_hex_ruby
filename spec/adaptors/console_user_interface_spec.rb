# frozen_string_literal: true

require 'stringio'
require_relative '../../lib/hello_world_hex_ruby/adaptors/console_user_interface'

module HelloWorldHexRuby
  module Adaptors
    RSpec.describe ConsoleUserInterface do
      it 'displays message with a trailing newline' do
        stdout = StringIO.new
        user_interface = ConsoleUserInterface.new(stdout)
        message = 'Hello, Hexagonal Ruby!'

        user_interface.display(message)
        expect(stdout.string).to eq("#{message}\n")
      end
    end
  end
end
