

class Point

    attr_accessor :x, :y
    def initialize(x,y)
        @x, @y = x, y
    end
    private_class_method :new

    def Point.cartesian(x,y)
        new(x,y)
    end

    def Point.polar(r, theta)
        new(r*Math.cos(theta), r*Math.sin(theta))
    end
    def to_s
        "(#{@x}, #{@y})"
    end
end

puts p1 = Point.cartesian("string1",2)      # => (10, 2)
puts p2 = Point.polar(2, Math::PI/4) # => (1.414, 1.414)

p3 = p1.dup
puts p3.object_id
puts p1.object_id
p1.x = "a"
puts p3