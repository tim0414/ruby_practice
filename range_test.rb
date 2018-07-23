class Discrete_Point
    attr_accessor :x, :y
    def initialize(x,y)
        @x, @y = x, y
    end

    def succ
        Discrete_Point.new(@x+2, @y+2)
    end

    def <=> (obj)
        return 1 if (self.x > obj.x) && (self.y > obj.y)
        return 0 if (self.x == obj.x) && (self.y == obj.y) 
        return -1 if (self.x < obj.x) && (self.y < obj.y)
    end

    def to_s
        "(#{@x}, #{@y})"
    end
end

p1 = Discrete_Point.new(1,1)
p2 = Discrete_Point.new(9,9)
p3 = Discrete_Point.new(2,2)

puts (p1..p2).include?(p3)
puts (p1..p2).cover?(p3)