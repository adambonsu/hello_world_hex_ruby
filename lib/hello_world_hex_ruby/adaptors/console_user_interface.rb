module HelloWorldHexRuby
  module Adaptors
    class ConsoleUserInterface < ::HelloWorldHexRuby::Ports::UserInterface
        def display(message)
            puts message
        end
    end
  end
end