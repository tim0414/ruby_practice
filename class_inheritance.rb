class A
    @@a = 99
    @class_instance_variable = 100
    @a = 1000
    CONSTANT = "A class constant"
    class << self
        attr_accessor :a
    end
    private
    def private_method1
        puts "private method from class A"
    end
    def private_method2
        puts "private method2 from class A"
    end
    def method1(a)
        puts a
    end
    public
    def self.method3
        puts "class method3 in class A"
        puts @class_instance_variable
    end



end

class B < A
    
    def self.method1
        puts "class method1"
    end
    def self.method2
        B.method1
        puts "class method2"
        method3
    end
    
    def private_method1
        puts "private method from class B"
        private_method2
    end
    def method1(a,b)
        super(a)
    end
    def self.set_class_instance
        @class_instance_variable = 1000
    end
end

b = B.new
b.private_method1
#b.private_method2
b.method1(10,1)
B.method2
#B.set_class_instance
B.set_class_instance
B.method3
puts B::CONSTANT