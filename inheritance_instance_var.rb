class A
    @@a
    def set_a(value)
        @a = value
    end
    def get_a
        @a
    end
    class<<self
        def set_a(value)
            @@a = value
        end
        def get_a
            @@a
        end
    end
end

class B<A ;end
a = 
b = B.new
