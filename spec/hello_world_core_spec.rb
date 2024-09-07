# frozen_string_literal: true

require_relative '../lib/hello_world_hex_ruby/core/hello_world_core'

module HelloWorldHexRuby
  module Core
    RSpec.describe HelloWorldCore do
      it 'says hello' do
        user_interface = double
        core = HelloWorldCore.new(user_interface)
        expect(user_interface).to receive(:display).with('Hello, Ruby!')
        core.say_hello('Ruby')
      end
    end
  end
end
