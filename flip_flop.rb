

(1..20).each do |x|
    puts x if (x == 5) .. (x == 10)
end


(1..10).each {|x| print x if x==3..x>=3} # => 3

(1..10).each {|x| print x if x==3...x<=3} # => 34

14 % 5 % 3 # => 1

2**3**2 # => 2**9 = 512

puts
str = "\n"

arr = [1,2,3,3]
arr << 4 # => [1,2,3,4]
arr.push(5) # => [1,2,3,3,4,5]
arr << [6,7,8] # => [1,2,3,3,4,5,[6,7,8]]

arr.pop # => [6,7,8]
arr.shift # => 1
arr.delete(3) # => 3
puts arr.delete_at(2) # => 5

arr # => [2,4]


print arr[-2,10]

#puts arr.shift

nils = Array.new(3) # => [nul, nil, nil]
copy = Array.new(nils)

#puts nil.object_id
#puts copy.object_id

print 1===1.0
print FIXNUM_MAX