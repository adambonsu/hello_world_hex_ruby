# frozen_string_literal: true

require_relative '../../lib/hello_world_hex_ruby/adaptors/string_user_interface'

module HelloWorldHexRuby
  module Adaptors
    RSpec.describe StringUserInterface do
      it 'displays a message' do
        user_interface = StringUserInterface.new
        message = 'Hello, Hexagonal Ruby!'
        expect(user_interface.display(message)).to eq(message)
      end
    end
  end
end
