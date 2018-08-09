

module A
    def method_a
        puts "module function in module A"
    end
    module_function :method_a
end

class B
    include A

    def method_b
        method_a
    end
end

b = B.new
b.method_b # => module function in module A
#b.method_a # => private method `method_a'
A.method_a # => module function in module A

puts Module.singleton_class.superclass.superclass.superclass.superclass.superclass.superclass.singleton_class.superclass

class OtherClass; end

puts BasicObject.singleton_class.singleton_class # => Class
#            (#<Class:BasicObject>)

class A1
    @class_instance_var = 0
    @@class_var = 0
    def self.method
        puts "class method"
    end
end

puts A1.instance_variables
puts A1.singleton_class.method_defined? :method

