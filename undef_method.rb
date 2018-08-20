class A
    def method1
        puts "method1 in class A"
    end
    def method2
        puts "method2 in class A"
    end
end

class B<A
    def method1
        puts "method1 in class B"
    end
    def method2
        puts "method2 in class B"
    end
end

B.class_eval{
    remove_method :method1
    undef_method :method2
}

B.new.method1 # => method1 in class A
B.new.respond_to? :method2 # => false

class C
    def self.method1
    end
end

C.private_class_method :method1


