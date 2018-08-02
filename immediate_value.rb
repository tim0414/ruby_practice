a = -10
b = -10
a.object_id # => 21 
b.object_id # => 21
puts a.class


c = 5*(10**18)
d = 5*(10**18)
c.object_id # => 47188366465580
d.object_id # => 47188366465480
puts c.class

e = 4*(10**18)
f = 4*(10**18)
e.object_id # => 8000000000000000001
f.object_id # => 8000000000000000001
puts e.class

class A
    attr_accessor :a, :str
    def initialize(a)
        @a = a
        @str = "a1 string"
    end
end


255         # Decimal representation
0377        # Octal representation of 255
0b1111_1111 # Binary representation of 255
0xFF        # Hexadecimal representation of 255

7/3    # =>  2
-7/3   # => -3
7/-3   # => -3
-(7/3) # => -2

#10/0 # => ZeroDivisionError

7%3    # =>  1
-7%3   # =>  2
7% -3  # => -2

0.4 - 0.3 == 0.1 # Evaluates to false in most implementations
0.9 - 0.4 == 0.5 # true

0.1 + 0.2 # => 0.30000000000000004
0.1 + 0.2 == 0.3 # => false
require 'bigdecimal'
BigDecimal.new("0.1") + BigDecimal.new("0.2") == 0.3 # => true