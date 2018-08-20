

def Object.inherited(c)
    puts "class #{c} < #{self}"
end

class A; end   # => class A < Object
class B<A; end # => class B < A

module Final
    def self.included(c)
        c.instance_eval do
            def inherited(sub)
                raise Exception,
                "attempt to create subclass #{sub} of Final class #{self}"
            end
        end
    end
end

class C 
    include Final
end
class D < C; end
# => attempt to create subclass D of Final class C

