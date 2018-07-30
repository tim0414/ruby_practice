
class Point1
    def initialize(x,y)
        @x,@y = x,y
    end
    def each(&block)
        [@x, @y].each(&block)
    end
end

class Point2
    def initialize(x,y)
        @x,@y = x,y
    end
    def each()
        if block_given?
            yield @x
            yield @y
        else
            self.to_enum
        end
    end
end

p2 = Point2.new(1,2)
# external iterator
iter2 = p2.each
puts iter2.is_a?Enumerable
print "#{iter2.next} #{iter2.next}" # => 1 2

# internal iterator
p2.each {|x| print "#{x} "}  # => 1 2


p2 = Point2.new(3,1)
iter2 = p2.each


iter2.each {|x| puts x}

class Point
    def initialize(x, y)
        @x, @y = x, y
    end
    
    # getter of attributes
    def x; @x; end
    def y; @y; end
    
    # setter of attributes
    def x=(value)
        @x = value
    end
    def y=(value)
        @y = value
    end
end

p = Point.new(1,1)
p.x  = 10
print p.x # => 10

class Point
    puts self # => Point
    attr_accessor :x, :y
    def initialize(x, y)
        @x, @y = x, y
        puts self
    end
    def method1()
        puts self
    end
    def self.method2
        puts self
    end
end


p1 = Point.new(1,1) # => #<Point:0x007fb994844b30>
p2 = Point.new(2,2) # => #<Point:0x007fb994844978>
p1.method1 # => #<Point:0x007fb994844b30>
p2.method1 # => #<Point:0x007fb994844978>
Point.method2 # => Point
self # => main

class A
    class << self
        def method1
            puts "class method1"
            self.method2
        end
    end
    def A.method2
        puts "class method2"
    end
    def self.method3
        self.method2
        puts "class method3"
    end
    def method1
        puts "instance method1"
        A.method1
        self.method2
    end
    def method2
        puts "instance method2" 
    end
end


A.method1 # => class method1
#A.method2 # => class method2
#A.method3 # => class method3

a = A.new
#a.method1 
# => instance method1
# => class method1
# => instance method2