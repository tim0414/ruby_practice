
class Point
    attr_accessor :x, :y
    def initialize(x,y)
        @x, @y = x, y
    end

    def add(other)
        Point.new(self.x + other.x, self.y + other.y)
    end
    def to_s
        "(#{@x}, #{@y})"
    end
    def each(&block)
        puts "using each"
        [@x, @y].each(&block)
    end
end

p1 = Point.new(1,2)
p2 = Point.new(2,2)
p3 = Point.new(3,3)

p_sum = [p1,p2,p3].inject(Point.new(1,2),:add)
print p_sum # => (7, 9)

enum = p1.to_enum
print enum.class

enum = (1.10).to_enum
enum.class # => Enumerator
enum.is_a?Enumerable # => true

module A
    class AA
    end
end
class B
    include A
end

b = B.new
puts b.is_a?A

a = A::AA.new
puts a.is_a?A

def factorial(n)
    raise ArgumentError, "expected argument >= 1(given #{n})", caller if n<1
    return 1 if n==1
    n * factorial(n-1)
end

begin
    factorial(0)
rescue => ex
    puts ex.message
    puts ex.backtrace
end