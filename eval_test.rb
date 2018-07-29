=begin
x = 1
$g = 100
varname = "x"
puts eval(varname)
puts eval("varname = '$g'")
puts eval(varname)

puts eval("#{varname} = x")
puts eval(varname)
puts eval("$g")
print varname

a = "a string"
#print a.public_methods(false)

a = "hello".send :upcase
print a
=end

class Object
    def equal?(o)
        super(o)
        puts "using equal?"
    end
    def ==(o)
        super(o)
        puts "using ==" 
    end
    def eql?(o)
        super(o)
        puts "using eql?"
    end
    def ===(o)
        super(o)
        puts "using ==="
    end
=begin
    def <=>(o)
        super(o)
        puts "using <=>"
    end
=end
end
a = Object.new
b = Object.new
print a.eql?b

print (1..5).inject(100, :-)
print Object.superclass

print BasicObject===Object