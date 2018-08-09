
module A
    class A_class
        def method1
           puts B_class.new.method1
           puts A.method1 
        end
    end
    class B_class
        def method1
            "B_class method1"
        end
    end

    def self.method1
        "module function"
    end

    def self.method2
        puts method1
    end

    def method3
        puts "method3"
    end
end

A::A_class.new.method1
# => B_class method1
# => module function
# => module function
class X
    include A
end

x = X.new

module Humor
    def tickle
        "#{self} says hee, hee!"
    end
end

obj1 = "John"


obj1.extend Humor
def obj1.tickle
    puts "#{self} says ha, ha!"
end

obj1.tickle # => John says ha, ha!


#obj2.tickle # => undefined method `tickle'

class B
    extend Humor
end

def B.tickle
    puts "#{self} says ha, ha!"
end

B.tickle


