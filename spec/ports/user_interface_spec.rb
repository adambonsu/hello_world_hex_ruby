# frozen_string_literal: true

require_relative '../../lib/hello_world_hex_ruby/ports/user_interface'

module HelloWorldHexRuby
  module Ports
    RSpec.describe UserInterface do
        context '#display' do
          it 'raises a NotImplementedError' do
            user_interface = UserInterface.new
            expect { user_interface.display(nil) }.to raise_error(NotImplementedError)
          end
        end
    end
  end
end