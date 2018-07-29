class Discrete_Point
    attr_accessor :x, :y
    #include Comparable
    def initialize(x,y)
        @x, @y = x, y
    end
=begin
    def succ
        Discrete_Point.new(@x+2, @y+2)
    end
=end

    def <=> (obj)
        return 1 if (self.x > obj.x) && (self.y > obj.y)
        return 0 if (self.x == obj.x) && (self.y == obj.y) 
        return -1 if (self.x < obj.x) && (self.y < obj.y)
    end
=begin
    def to_s
        "(#{@x}, #{@y})"
    end
=end
end

p1 = Discrete_Point.new(1,1)
p2 = Discrete_Point.new(9,9)
p3 = Discrete_Point.new(2,2)

puts (p1..p2).class
puts (p1..p2).cover?(p3) # => true
#puts (p1..p2).each
#puts (p1..p2).include?(p3) # => can't iterate from Discrete_Point (TypeError)

#puts p1>p3

class A
    attr_accessor :x, :y
    include Enumerable
    def initialize(x, y)
        @x, @y = x, y
    end
    def each
        yield @x
        yield @y
    end
end

a1 = A.new(10,2) 
a2=a1.map {|x| x*x}
print a2
for value in A.new(10,2) 
    puts value
end

5.times do |x|
    print x
end