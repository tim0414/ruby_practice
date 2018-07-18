class A
    attr_accessor :a
    def initialize(a)
        @a = a
    end
    def eql?(o)
        self.a.eql?o.a
    end
    def hash
        @a.hash
    end
end

class B
    attr_accessor :b
    def initialize(b)
        @b = b
    end
    def eql?(o)
        self.b == o.b+1
    end
end

class C
    attr_accessor :c
    def initialize(c)
        @c = c
    end
end


a1 = A.new(10)
a2 = A.new(10)

b1 = B.new(10)
b2 = B.new(11)

c1 = C.new(10)

h = {a1 => "a1 hash value", b1 => "b1 hash value"}
print "hash code: #{c1.hash}, object id: #{c1.object_id}\n "
print b1.b+1, "\n"

print h[a2], " ", h[b2]
        