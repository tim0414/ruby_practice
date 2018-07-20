class Point
    #include Enumerable
    def initialize(x,y)
        @x, @y = x, y
    end
    def each
        yield @x
        yield @y
    end

end

p = Point.new(1,2)
iter = p.to_enum
print "(#{iter.next}, #{iter.next})" # => (1,2)

def twice
    if block_given?
        yield 10
        yield 5
    else
        self.to_enum(:twice) 
        # return enumerator if don't give block
    end
end

t = twice
t.each {|x| print x}