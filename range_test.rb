class Discrete_Point
    def initialize(x,y)
        @x, @y = x, y
    end

    def succ
        Discrete_Point.new(@x+1, @y+1)
    end

    def <=> (obj)
        if (self.x > obj.x) && (self.y > obj.y) then return 1
        if (self.x == obj.x) && (self.y == obj.y) then return 0
        if (self.x < obj.x) && (self.y < obj.y) then return -1
    end

    def to_s
        "(#{@x}, #{@y})"
    end
end

p1 = Discrete_Point.new(1,1)
p2 = Discrete_Point.new(10,10)
#r = p1..p2
print p1.respond_to?