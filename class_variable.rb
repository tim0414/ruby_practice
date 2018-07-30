
class Point
    # class instance variables
    @n = 0
    @totalX = 0
    @totalY = 0

    def initialize(x,y)
        @x, @y = x, y
    end

    
    class << self
        attr_accessor :n, :totalX, :totalY
    end

    def self.new(x,y)
        @n += 1
        @totalX += x
        @totalY += y
        super
    end

    def self.report
        puts "number of points created #{@n}"
        puts "average X coordinate: #{@totalX.to_f/@n}"
        puts "average Y coordinate: #{@totalY.to_f/@n}"
    end
end

p = Point.new(1,2)
p = Point.new(2,2)
Point.n # => 2
Point.report
# number of points created 2
# average X coordinate: 1.5
# average Y coordinate: 2.0

class Point
    def initialize(x,y)
        @x, @y = x, y
    end
    def to_s
        "(#{@x},#{@y})"
    end

    ORIGIN = Point.new(0,0)
end

p = Point.new(1,1)
puts Point::ORIGIN # => (0,0)
Point::UNIT_X = Point.new(1,0)
puts Point::UNIT_X