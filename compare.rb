1 == 1.0    # => true
1.eql?(1.0) # => false
puts (1.0..7.0)===3 # => true
puts (1.0..7.0)===8 # => false


puts "abc" == "abc"  # => true
puts "abc".eql?"abc" # => true
puts /\d+/ === "123" # => true

2**3**2 # => 2**(3**2) = 512 


class Point 
    attr_accessor :x, :y
    include Comparable
    def initialize(x, y)
        @x, @y = x, y
    end

    def <=>(o)
        return 1 if @x>o.x and @y>o.y
        return 0 if @x==o.x and @y==o.y
        return -1 if @x<=o.x and @y<=o.y
    end
=begin
    def succ
        print "next"
        Point.new(@x+1, @y+1)
    end
=end
end

p1 = Point.new(2,2)
p2 = Point.new(10,10)
p3 = Point.new(3,3)
print "result: #{(p1..p2).include?(p3)}"
