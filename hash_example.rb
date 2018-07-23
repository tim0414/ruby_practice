class A
    attr_accessor :a, :name

    def initialize(a, name)
        @a = a
        @name = name
    end

    def eql?(o) #(1,2), (3,4)...
        puts "#{self.name} use eql? compare to #{o.name}"
        return @a-1 == o.a if @a%2==0
        return @a+1 == o.a if @a%2!=0
    end

    def ==(o)
        puts "#{self.name} use == compare to #{o.name}"
        return @a == o.a
    end

    def equal?(o)
        puts "#{self.name} use equal? compare to #{o.name}"
        return @a.equal?o.a
    end

    def hash
        puts "#{self.name} calculate hash code"
        10
    end

end

a1 = A.new(10, "a1")
a2 = A.new(9, "a2")
a3 = A.new(8, "a3")
a4 = A.new(7, "a4")
a5 = A.new(10, "a5")

str = "string hash key"

h1 = {a1=>"a1 hash value", a3 => "a3 hash value", str => "str hash value"}


puts h1[str]

puts

a1.a = 5
puts h1[a1]
puts
puts h1[a2]
puts
puts h1[a4]
puts 
puts h1[a5]

#h = Hash.new(10)
#h["one"] = 1
#print h.value?(1)


=begin
puts str.object_id
str[0] = "aaa"
puts h1[str]


str = "string hash key"
h = {str => "string hash value"}
h[str] # => string hash value
str[0] = "aa"
h[str] # => nil

print FIXNUM_MIN
=end