
module A
    class A_class
        def method1
           puts B_class.new.method1
           puts A.method1 
        end
    end
    class B_class
        def method1
            "B_class method1"
        end
    end

    def self.method1
        "module function"
    end

    def self.method2
        puts method1
    end
end

A::A_class.new.method1
# => B_class method1
# => module function
A.method2
# => module function