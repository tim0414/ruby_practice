
1 == 1.0        # => true
1.eql?(1.0)     # => false
1 === 1.0       # => true
(1.0..7.0)===3  # => true
(1.0..7.0)===8  # => false
1.equal?1       # => true
(5*(10**18)).equal?(5*(10**18)) # => false

puts 2 <=> 3


puts "abc" == "abc"  # => true
puts "abc".eql?"abc" # => true
puts /\d+/ === "123" # => true

puts 2**3**2

puts "a" <=> "a"  # => -1
puts "a" <=> "a"  # => 0
puts "b" <=> "a"  # => 1
puts "a" <=> "ab" # => -1

class Point
    attr_accessor :x, :y
    include Comparable
    def initialize(x,y)
        @x, @y = x, y
    end
    def <=>(o)
        return 0 if (@x==o.x and @y==o.y)
        return 1 if (@x>=o.x and @y>=o.y)
        return -1 if (@x <= o.x and @y<= o.y)
        
    end
end

p1 = Point.new(1,1)
p2 = Point.new(2,1)
p3 = Point.new(3,0)

puts p1>p2
puts p1==p2
puts p1<p2

p1<=>p3 # => nil
p1>p3
p1==p3
p1<p3