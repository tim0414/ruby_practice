
module A
    def method1
        puts "method1 in module A"
    end
    def method2
        puts "method2 in module A"
    end
end

module B
    #include A
    def method1
        puts "method1 in module B"
    end
end

class C
    def method1
        puts "method1 in class C"
    end
end

class X < C
    #include B
    #include A
end

X.new.method1 # => method1 in module A


X.new.method2 # => method2 in module A

class C
    def method1
        puts "change method1 in class C"
    end
end

module B
    def method1
        puts "change method1 in module B"
    end
end

