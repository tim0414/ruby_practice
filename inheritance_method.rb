class A
    def method1
        puts "instance method1 in class A"
    end
    def method2
        puts "private instance method2 in class A"
    end
    class<< self
        def method1
            puts "class method1 in class A"
        end
        def method2
            puts "private class method2 in class A"
        end
    end
    private :method2
    private_class_method :method2
end

class B<A
    def method3
        method2
    end
    def self.method3
        method2
    end
end


b = B.new
b.method1 # => instance method1 in class A
b.method3 # => private instance method2 in class A
B.method1 # => class method1 in class A
B.method3 # => private class method2 in class A


