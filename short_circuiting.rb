

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
end

def be_false(value)
    $a+=1
    print "#{value}.false #{$a}\n"
    false
end

#be_true
#print  "$a: #{$a}\n"

$a = 0
result1 = be_true(1) or be_false(2) and be_true(3)
print "result: #{result1}, $a: #{$a}\n"
puts 
$a = 0
result2 = be_true(1) || be_false(2) && be_true(3)
print "result: #{result2}, $a: #{$a}\n"

foo =42 && foo/ 2
puts foo==nil