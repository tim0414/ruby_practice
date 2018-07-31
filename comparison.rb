
class BasicObject
    alias _equal? equal?
    alias equal ==
    def equal?(o)
        puts "using BasicObject equal?"
        _equal?(o)
    end
    def ==(o)
        puts "using BasicObject =="
        equal(o)
    end
end

class Object
    def equal?(o)
        puts "equal?"
        super(o)
    end
    def ==(o)
        puts "using =="
        super(o)
    end
    def eql?(o)
        puts "using eql?"
        super(o)
    end
    def ===(o)
        puts "using ==="
        super(o)
    end
    def <=>(o)
        puts "using <=>"
        super(o)
    end
end

a = Object.new
b = Object.new


puts "equal? operation:" 
a.equal?b
# equal?
# using BasicObject equal?

puts "== operation:" 
a==b
# using ==
# using BasicObject ==

puts "eql? operation:" 
a.eql?b
# using eql?


puts "=== operation:" 
a===b
# using ===
# using ==
# using BasicObject ==

puts "<=> operation:" 
a<=>b
# using <=>
# using ==
# using BasicObject ==

puts "------"

puts "equal? operation:" 
a.equal?a
# equal?
# using BasicObject equal?

puts "== operation:" 
a==a
# using ==
# using BasicObject ==

puts "eql? operation:" 
a.eql?a
# using eql?

puts "=== operation:" 
a===a
# using ===

puts "<=> operation:" 
a<=>a
# using <=>

#puts String === "abc" # => true
#puts Fixnum === 100   # => true
#puts 100.is_a?(Fixnum) # => true
#puts "abc".is_a?(String) # => true

class Class
    alias triple_equal ===
    alias _is_a? is_a?
    def ===(o)
        puts "using ==="
        triple_equal(o)
    end
    def is_a?(o)
        puts "using is_a?"
        _is_a?(o)
    end
end

class A
    include Comparable
end

puts String==="abc" # => true
puts Fixnum===100 # => true

puts 100.is_a?(Fixnum) # => true
puts "abc".is_a?(String) # => true

puts "abc".is_a?(Comparable) # => true
puts Comparable === "abc" # => true