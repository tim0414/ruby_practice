class A
    class<<self
        def initialize(a,b)
            puts "using class method initialize"
            @a, @b = a, b
        end
        def get_class_instance_var()
            [@a, @b]
        end
        def new(a,b)
            initialize(a,b)
            super
        end
    end

    def initialize(x,y)
        puts "using instance method initialize"
        @x, @y = x, y
    end
end



#A.initialize(10,12)

A.new(1,2)
puts A.instance_variable_defined?(:@a)
puts A.get_class_instance_var

puts Class.method_defined?(:initialize)

class Class
    def initialize(x)
        puts "using Class initialize"
        @x = x
    end
end

B = Class.new(1)
puts B.instance_variable_defined?(:@x)

