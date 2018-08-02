class Module
    alias triple_equal ===
    def ===(o)
        puts "using module ==="
        triple_equal(o)
    end
end

puts String === "abc"
# => using module ===
# => true
