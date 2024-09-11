# frozen_string_literal: true

require_relative '../../lib/hello_world_hex_ruby/adaptors/string_user_interface'

module HelloWorldHexRuby
  module Adaptors
    RSpec.describe StringUserInterface do
      it 'displays a message' do
        user_interface = StringUserInterface.new
        expect(user_interface.display('Hello, Hexagonal Ruby!')).to eq('Hello, Hexagonal Ruby!')
      end
    end
  end
end
