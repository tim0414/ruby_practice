a1 = 10

require_relative "singleton_point"

class Point
    
    attr_accessor :x, :y

    # class variables
    @@n = 0
    @@totalX = 0
    @@totalY = 0

    # the @x outside of initialize are completely different from those inside it
    # It's part of the definition of Point class
    # class instance variable
    @x = 0
    puts "this is class definition: #{@x}"

    def initialize(x,y)
        @x, @y = x, y
        PointStats.instance.record(self)

        @@n += 1
        @@totalX += x
        @@totalY += y
    end

    # constant variable, public??
    ORIGIN = Point.new(0,0)
    UNIT_X = Point.new(1,0)
    UNIT_Y = Point.new(0,1)

    def self.report
        puts "number of points created #@@n"
        puts "average X coordinate: #{@@totalX.to_f/@@n}"
        puts "average Y coordinate: #{@@totalY.to_f/@@n}"
    end


    def +(other)
        Point.new(self.x + other.x, self.y + other.y)
    end

    def add!(p)
        @x += p.x
        @y += p.y
        self
    end

    def add(p)
        q = self.dup
        q.add!(p)
    end

    def [](index)
        case index
        when 0, -2 then @x
        when 1, -1 then @y
        when :x, "x" then @x
        when :y, "y" then @y
        else nil
        end
    end

    include Enumerable
    def each
        yield self.x
        yield self.y
    end

    def to_s
        "(#@x, #@y)"
    end

    def ==(o)
        if o.is_a? Point
            @x = o.x && @y = o.y
        elsif
            false
        end
    end

    include Comparable
    def <=>(other)
        return nil unless other.instance_of? Point
        self.x**2 + self.y**2 <=> other.x**2 + other.y**2
    end

    def hash
        code = 17
        code = 37*code + @x.hash
        code = 37*code + @y.hash
        code
    end

    def origin
        puts ORIGIN
    end
        

end

p1 = Point.new(10, 15)
p1.each {|x| puts x+10}
puts p1
puts p1.all? {|x| x==0}
p2 = Point.new(11, 20)
p1.add!(p2)
print p1
puts Point::ORIGIN
puts Point.report

PointStats.instance.report
