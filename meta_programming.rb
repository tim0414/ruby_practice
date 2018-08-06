class A
    def initialize(a,b)
        @a, @b = a, b
    end
    def a_method
    end
end

class B<A
    def b_method
    end
end



b = B.new(10,2)
puts b.respond_to?(:a_method, true)
puts B.method_defined?(:a_method)

a = A.new(1,2)
puts a.respond_to?(:b_method)

module Apple
    def self.const_missing(name)
        puts "no such const"
        :name
    end
end

s = Apple::ABC
puts s.class
String.public_methods
str = "s"
puts String.method(:instance_methods).owner
puts Method.superclass

def Object.inherited(c)
    puts "class #{c} < #{self}"
end

module M
    def self.method1
        puts "module function"
    end
end

class C
    include M
end
M.method1()

def String.method_added(name)
    puts  "new insance method #{name} added to String"
end

def String.singleton_method_added(name)
    puts "new class method #{name} added to String"
end

class Str < String
    def method1
        puts "method1"
    end
end

