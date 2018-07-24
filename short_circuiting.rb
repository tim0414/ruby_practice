

a = 0
true or a+=1
#puts a # => 0

false and a+=1
#puts a # => 0

$a = 0
def be_true(value)
    $a+=1
    print "#{value}.true #{$a}\n"
    true
    "#{value}.true #{$a}\n"
end

def be_false(value)
    $a+=1
    print "#{value}.false #{$a}\n"
    false
end

#be_true
#print  "$a: #{$a}\n"

$a = 0
result1 = be_true(1) or be_false(2) and be_true(3) or be_false(4) and be_true(5) or be_false(6)
print "result: #{result1}, $a: #{$a}\n"
puts 
$a = 0
result2 = be_true(1) || be_false(2) && be_true(3) 
print "result: #{result2}, $a: #{$a}\n"

puts 
$a = 0
result3 = be_false(1) and be_true(2) or be_false(3)
print "result: #{result3}, $a: #{$a}\n"



#foo =42 && foo/ 2
#puts foo==nil

print (1..9).include?(2.5)
print ("a".."z").cover?("cc")
# x and y # => if x then y else false
# x or y  # => if x then true else y


class A
    attr_accessor :x, :name
    def initialize(x,name)
        @x = x
        @name = name
    end
    def object_id
        puts "#{@name} calling object id method"
        100
    end
end

a1 = A.new(10, "a1")
a3 = A.new(11, "a3")
print "\n #{a1.equal?(a3)}, #{a1.object_id} #{a3.object_id}\n "

b=0
print (b+=1) or (b+=1) and (b+=1)
puts
print b