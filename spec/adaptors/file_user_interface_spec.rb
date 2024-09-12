# frozen_string_literal: true

require 'stringio'
require_relative '../../lib/hello_world_hex_ruby/adaptors/file_user_interface'

module HelloWorldHexRuby
  module Adaptors
    RSpec.describe FileUserInterface do
      it 'displays a message' do
        output_file = StringIO.new
        user_interface = FileUserInterface.new(output_file)
        message = 'Hello, Hexagonal Ruby!'

        user_interface.display(message)
        expect(output_file.string).to eq(message)
      end
    end
  end
end
