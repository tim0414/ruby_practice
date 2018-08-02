

class A
    # class variable
    @@class_var = "class variable"
    
    #class instance variable
    @class_instance_var = "class instance variable"
    
    # constant
    CON1 = "constant1"
    CON2 = "constant2"
    def instance_method()
        puts "instance method in class A"
    end

    def private_instance_method()
        puts "private instance method in class A"
    end

    def self.class_method()
        puts "class method in class A"
    end
    def self.class_var
        @@class_var
    end
    def self.class_var=(value)
        @@class_var = value
    end 
    class<<self
        attr_accessor :class_instance_var
        def method2
            puts "private class method in A"
        end
    end
    private :private_instance_method
end

class B < A
    CON1 = "constant1 in B"
    def subclass_method
        private_instance_method
    end
end

b = B.new
b.subclass_method # => private instance method in class A

# constant teseting
B::CON1[0] = "a" # class B override CON1
B::CON2[0] = "a" 
puts B::CON1 # => aonstant1 in B
puts A::CON1 # => constant1
puts B::CON2 # => aonstant2
puts A::CON2 # => aonstant2

# class variable test
B.class_var = 100
puts A.class_var # => 100

# class instance variable
puts A.class_instance_var # => class instance variable
puts B.class_instance_var # => nil
B.class_instance_var = 100
puts B.class_instance_var # => 100

# instance method
b.instance_method # => instance method in class A
b.subclass_method # => private instance method in class A

# class method
B.class_method # => class method in class A

