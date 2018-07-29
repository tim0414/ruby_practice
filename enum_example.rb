

a = [1,2,3,4,5,6]
b = a.to_enum
result = b.select {|x| x%2==0}
a # => [1, 2, 3, 4, 5, 6]
b # => #<Enumerator:0x007f8342846d00>
result # => 2, 4, 6]


def twice
    if block_given?
        yield
        yield
    else
        self.to_enum(:twice)
    end
end
iter = twice
iter.each {print 10} # => 1010


class Point 
    include Enumerable
    def initialize(x,y)
        @x, @y = x,y
    end
    def each(&block)
        [@x, @y].each(&block)
    end
end

p = Point.new(1,2)
p.each {|x| print "#{x} "}
iter = p.each
print iter

s = "hello"
iter = s.to_enum(:each_char)
iter.each {|x| print x} # => hello