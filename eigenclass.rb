class Test
    def eigenclass
        class << self; self; end
    end
end

puts Test.new.eigenclass.class

puts Module.nesting