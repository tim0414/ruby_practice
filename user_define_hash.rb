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
        if self.b%2==0 then self.b+1 == o.b
        else self.b == o.b-1
        end
    end
    def hash
        if self.b%2==0 then self.b.hash+(self.b+1).hash
        else self.b.hash+(self.b-1).hash
        end
    end
end

class C
    attr_accessor :c
    def initialize(c)
        @c = c
    end
    def eql?(o)
        self.c == o.c
    end
    def hash
        10
    end
end


a1 = A.new(10)
a2 = A.new(10)

b1 = B.new(11)
b2 = B.new(10)

c1 = C.new(10)
c2 = C.new(10)
c3 = C.new(12)

h = {a1 => "a1 hash value", b1 => "b1 hash value", c1 => "c1 hash value", b2 => "b2 hash key"}
print "hash code: #{c1.hash}, object id: #{c1.object_id}\n "
print b1.b+1, "\n"

print h, "\n"

puts "b1 is eql? to b2: #{b1.eql?b2} \n"
puts b1.hash == b2.hash
puts h[b2] # how does hash compare their key? b2.eql?b1
puts h[b1]


puts [1,2,3] === [1,2,3]
#print "\n #{b1.hash} #{b2.hash}"
print "c1 is eql to c2?: #{c1.eql?c2} "
print h[c2]