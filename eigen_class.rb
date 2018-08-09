class P;end
p = P.new
puts P.class
puts p.singleton_class.singleton_class

puts String.singleton_class

obj = Object.new
puts obj.is_a?(Kernel)
puts 1.is_a?(Comparable)

class Super; end


module Enclosing
    class Local < Super
        include Enumerable
        def lookup
            Module.nesting
        end
    end
end

print Enclosing::Local.new.lookup
# => [Enclosing::Local, Enclosing]

puts Module.nesting