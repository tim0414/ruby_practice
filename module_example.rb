=begin
module A
    @@class_variable = 100
    def self.method1
        puts @@class_variable
    end
    def self.method3
        @@class_variable = 10
    end
    def method2
        puts "instance method1 in module A"
    end
end

class B
    extend A
end

b = B.new
A.method3
B.method2
=end

module A
    def method
        puts "instance method in module A"
    end
    #module_function :method
end

class B1
    include A
    def method1
        method
    end
end

class B2
    extend A
end

b1 = B1.new
#b1.method # => instance method in module A
#A.method
B2.method # => instance method in module A
#B1.method
b1.method1
