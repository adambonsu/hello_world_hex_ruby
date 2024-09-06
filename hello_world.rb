# Core Application
class HelloWorldCore
  def initialize(user_interface)
    @user_interface = user_interface
  end

  def say_hello(name)
    @user_interface.display("Hello, #{name}!")
  end
end

# Port (Interface)
class UserInterface
    def display(message)
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
end

# Adapter (Console Output)
class ConsoleUserInterface < UserInterface
    def display(message)
        puts message
    end
end

# Adapter (File Output)
class FileUserInterface < UserInterface
    def initialize(file_path)
        @file_path = file_path
    end

    def display(message)
        File.open(@file_path, 'a') { |file| file.puts message }
    end
end

# Usage: Dependency Injection
hello_world = HelloWorldCore.new(ConsoleUserInterface.new)
hello_world.say_hello("World from Console")

hello_world = HelloWorldCore.new(FileUserInterface.new('hello_world.txt'))
hello_world.say_hello("World from File")