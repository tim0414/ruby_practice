a = 5..1
a.each {|a| print 1}
r = 'a'..'c'
print r.cover?'zaaaza'

print "\n", :test.object_id, "\n"

:foo

def foo ; end

print foo.object_id, " ", :foo.object_id

arr = [1,2,3,3]
arr ||= []
print arr

*x, y, z = 2,3
print x


p = Proc.new {|a| print a}



def a(*p)
    print p[1].class
end

class A
    def initialize(a)
        @a = a
    end
    def a=(value)
        @a = value
    end
    def eql?(o)
        self.a.eql?o.a
    end
    def a
        @a
    end
    def hash
        @a.hash
    end

end

a1 = A.new(10)
a2 = A.new(10.0)
a("a", {h:"abc"} ) 
# => ["a"]
print "\n", a1.hash

print "\n", a1.hash, " " , a2.hash

print "\n", a1.object_id

h1 = {a1 => "abc"}

print a1.eql?a2

print h1[a2]