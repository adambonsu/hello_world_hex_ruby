module HelloWorldHexRuby
  module Adaptors
    class FileUserInterface < UserInterface
        def initialize(file_path)
            @file_path = file_path
        end
    
        def display(message)
            File.open(@file_path, 'a') { |file| file.puts message }
        end
    end
  end
end