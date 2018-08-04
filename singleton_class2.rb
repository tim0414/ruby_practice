animal = "dog"
def animal.speak
    puts "the #{self} says woof!"
end

singleton = class<<animal
    def lie
        puts "The #{self} lies down"
    end
    self
end

puts singleton.class
#puts singleton.instance_methods



puts Module.superclass
puts Module.is_a?Kernel

module A
    def method1
        puts "method1"
    end
end

module B
    include A
    def method2
        puts "method2"
    end
end

class C
    include B
end

c = C.new
c.method1
puts Module>Kernel
puts Kernel>Module