class A
    class<<self
        def initialize(x,y)
            puts "using class method initialize"
            @x, @y = x, y
        end
        def get_class_instance_var()
            [@x, @y]
        end
    end
    def initialize(x,y)
        puts "using instance method initialize"
        @x, @y = x, y
    end
end


A.initialize(10,12)
puts A.instance_variable_defined?(:@x)
puts A.get_class_instance_var

class Class
    def initialize(x, y)
        puts "using Class initialize"
        @x, @y = x, y
    end
end

b = Class.new(1,2)
puts b.name
B = b
puts b.name
puts B.instance_variable_defined?(:@x)