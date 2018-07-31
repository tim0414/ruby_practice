class A
    def method1(x,y)
        puts x,y
    end
end

class B<A
    def method1(x,y,z)
        super(x,y)
    end
end

b = B.new()
b.method1(1,2,3)