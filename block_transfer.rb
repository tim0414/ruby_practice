arr = [1,2,3,4,5,6,7,8,9,10]

def method
    arr = [1,2,3,4,5,6,7,8,9,10]
    b = arr.map do |x|
        return if x==8
        x**2
    end
    print b 
    print "\nmethod over"
end
method

# => method over

arr # => unexpected return (LocalJumpError)

print [1,2,3] == [1,2,3]


arr # => [2, 4, 3, 4, 5, 6, 7, 8, 9, 10] (break)
arr # => [2, 4, 6, 8, 10] (next)
arr # => LocalJumpError (return)

i = 0
while(i<3)
    print i
    i+=1
    redo if i==3
end
puts i

n = 10
n.times do |x|
    print x
    if x==9
        n-=1
        #redo
    end
end
