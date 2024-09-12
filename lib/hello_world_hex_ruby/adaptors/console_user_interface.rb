# frozen_string_literal: true

require_relative '../ports/user_interface'
module HelloWorldHexRuby
  module Adaptors
    class ConsoleUserInterface < ::HelloWorldHexRuby::Ports::UserInterface
      def initialize(output = STDOUT)
        super()
        @output = output
      end
      def display(message)
        @output.puts message
      end
    end
  end
end
