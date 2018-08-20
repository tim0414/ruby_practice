class A
    def self.method1
        puts "public method1"
    end
    protected
    def self.method2
        puts "protected method2"
    end
    private
    def self.method3
        puts "private method3"
    end
end

A.send :method1 # => public method1
A.send :method2 # => protected method2
A.send :method3 # => private method3

class B
    def self.say_hello(name)
        puts "Hello, #{name}"
    end
end

B.send :say_hello, "John"
# => Hello, John