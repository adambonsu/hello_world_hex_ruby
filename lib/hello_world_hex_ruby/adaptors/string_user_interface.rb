# frozen_string_literal: true

module HelloWorldHexRuby
  module Adaptors
    class StringUserInterface < ::HelloWorldHexRuby::Ports::UserInterface
      def display(message)
        message.to_s
      end
    end
  end
end
