
# same number of lvalues and rvalues
x, y, z = 1, 2, 3 # => x=1; y=2; z=3

# one lvalue, multiple rvalues
x = 1, 2, 3   # => x=[1,2,3]
x, = 1, 2, 3  # => x=1

# multiple lvalues, single array rvalue
x, y, z = [1,2,3] # => same as x,y,z = 1,2,3
x, = [1,2]        # => x=1

# different numbers of lvalues and rvalues
x, y, z = 1, 2      # => x=1, y=2, z=nil
x, y = 1, 2, 3      # => x=1, y=2; 3 is discard
x, y, z = 1, [2,3]  # => x=1, y=[2,3], z=nil

print [1,2,3].respond_to?:to_ary


print x, y

class Point
    attr_accessor :x, :y
    def initialize(x,y)
        @x, @y = x, y
    end
    def to_ary
        return @x, @y
    end
end

p = Point.new(2,3)
a, b = *p
puts "\n",a
puts b