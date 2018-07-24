
data = [1,3,5,7,9]
result = data.inject do |x,y|
    print "x: #{x}, y: #{y}\n"
    x+y
end
result # => 25


puts


result = data.inject(3) do |x,y|
    print "x: #{x}, y: #{y}\n"
    x+y
end
result # => 28

#puts result


puts
$a = 1
(1..4).collect {|i| print i*i;$a+=1}
puts "a: #{$a}"

print "\n",data
data.map! {|x| x*x}
print data

a = [1,2,3,4,5,6,7,8,9,10]
a.select! do |x|
    break if(x==9)
    x%2 == 0
end
print "a: #{a}"

b = [1,2,3,4,5,6,7,8,9,10]
b.reject! do |x|
    break if(x==3)
    x%2==0
end
print "\nb: #{b}"

c = [1,2,3,4,5,6,7,8,9,10]
c = c.find do |x|
    print x
    x>5
end
print "\nc: #{c}"

print 1.."a"