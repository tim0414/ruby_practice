class A ;end
a = 10
def a
    puts "method a"
end

puts local_variables

module B
    def self.current
        Module.nesting
    end
    def current
        Module.nesting
    end
end

class C
    include B
    def initialize(x)
        @x = x
    end
    protected
    def pro_method
    end
end
c = C.new(1)
puts c.current
puts B.current

puts Module.nesting

#puts global_variables
puts c.instance_variable_defined?(:@x)
c.instance_eval{remove_instance_variable(:@x)}
puts c.instance_variable_defined?(:@x)
#puts C.instance_methods
puts C.respond_to?(:pro_method)


