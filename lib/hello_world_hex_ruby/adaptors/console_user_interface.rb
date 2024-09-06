module HelloWorldHexRuby
  module Adaptors
    class ConsoleUserInterface < UserInterface
        def display(message)
            puts message
        end
    end
  end
end