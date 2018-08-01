class Module
    alias triple_equal ===
    def ===(o)
        puts "using module ==="
        triple_equal(o)
    end
end

String === "abc"
