class A
    
    def method1(a,b)
        puts a+b
    end
    def method2()
        puts "method2 in class A"
    end
end

class B < A
    def method1(a,b)
        super
    end
end

class C < A
    def method1(a,b,c)
        super 
    end
end

class D < A
    def method2(a,b)
        super
    end
end

b = B.new
b.method1(1,1) # => 2

=begin
c = C.new
c.method1(1,2,3)
# => wrong number of arguments
=end

d = D.new
d.method2(1,1)
# => wrong number of arguments
