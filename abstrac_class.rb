# A abstract class
class AbstractGreeter
    def greet
        puts "#{greeting} #{who}"
    end
end

# A concrete subclass
class Greeter < AbstractGreeter
    def greeting; "hello"; end
    def who; "world"; end
end

Greeter.new.greet