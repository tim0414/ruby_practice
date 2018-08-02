

a = 0
true or a+=1
#puts a # => 0

false and a+=1
#puts a # => 0

$a = 0

def be_true(value)
    puts "#{value}.true"
    "#{value}.true"
end

def be_false(value)
    puts "#{value}.false"
    false
end

#be_true
#print  "$a: #{$a}\n"

=begin
$a = 0
result1 = (be_true(1) or be_false(2) and be_true(3) or be_false(4) and be_true(5) or be_false(6))
print "result1: #{result1}, $a: #{$a}\n"

puts 
$a = 0
result3 = (be_true(1) or be_false(2) and be_true(3))
print "result3: #{result3}, $a: #{$a}\n"

puts 
$a = 0
result2 = (be_true(1) or be_false(2) and be_true(3))
print "result2: #{result2}, $a: #{$a}\n"

puts 
$a = 0
result3 = (be_false(1) and be_false(2) or be_true(3))
print "result3: #{result3}, $a: #{$a}\n"

puts 
$a = 0
result4 = (be_true(1) or be_false(2) && be_true(3))
print "result4: #{result4}, $a: #{$a}\n"

puts
$a = 0
result5 = true or (be_true(10) && (a+=1))
print "result5: #{result5}\n"

puts
$a = 0
result6 = (be_false(1) or be_true(2) && be_true(3))
print "result6: #{result6}, $a: #{$a}\n"

puts
$a = 0
result7 = (be_true(1) or (be_false(2) and be_true(3)))
print "result7: #{result7}, $a: #{$a}\n"

puts
$a = 0
result8 = (be_true(1) or be_false(2) and be_true(3))
print "result8: #{result8}, $a: #{$a}\n"

puts
$a = 0
result9 = (be_true(1) or be_false(2) and be_true(3) or be_false(4) and be_false(5) or be_true(6))
print "result9: #{result9}, $a: #{$a}\n"

puts
$a = 0
result10 = (be_true(1) or be_false(2) and be_false(3) or be_false(4) and be_false(5) or be_true(6))
print "result10: #{result10}, $a: #{$a}\n"


puts
$a = 0
result11 = (be_true(1) or be_false(2) and be_true(3) or (be_true(4) && be_false(5)) or be_true(6))
print "result11: #{result11}, $a: #{$a}\n"

puts
$a = 0
result13 = (be_true(1) or be_false(2) and be_true(3) or be_true(4) && be_false(5) or be_true(6))
print "result13: #{result13}, $a: #{$a}\n"

puts
$a = 0
result14 = (be_true(1) or be_false(2) and be_true(3) or be_true(4) and be_false(5) or be_true(6))
print "result14: #{result14}, $a: #{$a}\n"

puts
$a = 0
result12 = (be_true(1) or be_false(2) and be_false(3) or be_false(4) && be_false(5) or be_true(6))
print "result12: #{result12}, $a: #{$a}\n"

puts
$a = 0
result15 = (be_true(1) or be_true(3) and be_false(2))
print "result15: #{result15}, $a: #{$a}\n"

puts
$a = 0
result16 = (be_true(1) or be_true(3) && be_false(2))
print "result16: #{result16}, $a: #{$a}\n"

puts
$a = 0
result = be_true(1) || be_false(2) && be_true(3)
print "result: #{result}, $a: #{$a}\n"

puts

$a = 0
result = (be_true(1) || be_false(2)) && be_true(3) 
print "result: #{result}, $a: #{$a}\n"


#foo =42 && foo/ 2
#puts foo==nil

=begin
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
=end

true || false && true  # => ?


result = (be_true(1) or be_false(2) and be_true(3))
puts "result: #{result}"
# => 1.true
# => 3.true
# => result: 3.true
puts
result = be_true(1) || be_false(2) && be_true(3)
puts "result: #{result}"
# => 1.true
# => result: 1.true

puts

result = be_false(1) and be_true(2) or be_true(3)
puts "result: #{result}"
# => 1.false
# => 3.true
# => result: false

puts
result = be_true(1) or be_false(2) and be_true(3)
puts "result: #{result}"
# => 1.true
# => 3.true
# => result: 1.true

a = false
be_true(1) or a = be_true(2) and be_true(3)
puts a
# => 1.true
# => 3.true
# => false

puts
result = (be_false(0) and be_true(1)?be_true(2): be_true(4))
puts result