
class A
    @@var
    CON1 = "a"
    CON2 = "b"
    def self.set_class_var(value)
        @@var = value
    end
    def self.get_class_var
        @@var
    end
end

class B<A 
    CON2 = "c"
end

A.set_class_var(10)
puts A.get_class_var # => 10
puts B.get_class_var # => 10
B.set_class_var(15)
puts B.get_class_var # => 15
puts A.get_class_var # => 15

B::CON2 = "c2"
puts A::CON2 # => b
puts B::CON2 # => c2
B::CON1 = "a2"
puts A::CON1 # => a
puts B::CON1 # => a2