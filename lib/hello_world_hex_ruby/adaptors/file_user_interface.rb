# frozen_string_literal: true

require_relative '../ports/user_interface'
module HelloWorldHexRuby
  module Adaptors
    class FileUserInterface < ::HelloWorldHexRuby::Ports::UserInterface
      def initialize(file_object)
        super()
        @file_object = file_object
      end

      def display(message)
        @file_object.write(message)
        @file_object.flush
      end
    end
  end
end
