class Point

    # class instance variable
    @n = 0
    @totalX = 0
    @totalY = 0

    # make class instance variable public
    class << self
        attr_accessor :n, :totalX, :totalY
        @n = 0
    end

    def initialize(x,y)
        @x, @y = x, y
    end

    # class method to create new Point objects
    def self.new(x,y)
        @n += 1
        @totalX += 1
        @totalY += 1
        
        super
    end

    def self.report

        puts "number of points created: #@n"
        puts "average X coordinate: #{@totalX.to_f/@n}"
        puts "average X coordinate: #{@totalY.to_f/@n}"
    end
end

class Point3 < Point
end

puts Point3.instance_variable_defined?(:@n)
print Point.totalX
        

class A
    @a = 0
end

class B<A
end

puts A.instance_variable_defined?(:@a) # => true
puts B.instance_variable_defined?(:@a) # => false
A::CON = 10
puts A.const_defined?(:CON)