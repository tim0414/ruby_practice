data = [1,3,5,7,9]
data.inject do |x,y|
    print "x: #{x}, y: #{y}\n"
    x+y
end

$a = 1
(1..4).collect {|i| print i*i;$a+=1}
puts "a: #{$a}"