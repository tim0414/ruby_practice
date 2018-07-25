arr = [1,3,5,7,9]
arr.map! do |x|
    next if x==5
    x + 3
end

print arr, "\n"

a = [1,2,3,4,5,6,7,8,9,10]
a.select! do |x|
    break if(x==3)
    x%2 == 0
end
print "a: #{a}\n"

c = [1,2,3,4,5,6,7,8,9,10]
c2 = c.select do |x|
    break if(x==3)
    x%2 == 0
end
print "c2: #{c2}\n"
print "c: #{c}\n"

b = [1,2,3,4,5,6,7,8,9,10]
b2 = b.reject do |x|
    next if(x==4)
    x%2==0
end
print "b2: #{b2}\n"
print "b: #{b}"
