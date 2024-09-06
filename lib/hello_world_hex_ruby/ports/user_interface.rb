# frozen_string_literal: true

module HelloWorldHexRuby
  module Ports
    class UserInterface
      def display(message)
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end
