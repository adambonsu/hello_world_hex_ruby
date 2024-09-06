module HelloWorldHexRuby
    module Core
        class HelloWorldCore
            def initialize(user_interface)
              @user_interface = user_interface
            end
          
            def say_hello(name)
              @user_interface.display("Hello, #{name}!")
            end
        end
    end
end