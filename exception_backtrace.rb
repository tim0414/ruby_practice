def level1
    puts "level1"
    level2
end

def level2
    puts "level2"
    level3
end

def level3
    puts "level3"
    raise ArgumentError, "testing exception", caller[1..-1]
end


#level1

class A
    attr_accessor :a
    def initialize(a)
        @a = a
    end
end

class B < A
    def initialize(b)
        @b = b
    end
end

obj = B.new(10)
puts obj.respond_to?(:a)
obj.a=1
puts obj.a

class C
    attr_accessor :a, :b
    def initialize(a)
        @a = a
    end
end

obj_c = C.new(10)
puts obj_c.respond_to?:b
puts obj_c.b==nil
