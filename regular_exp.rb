
#print "abc" === /\w/
#print /\w/ === "abc"

str = "apple"
case str
when /^a/ 
    print "start from a"
when /^b/
    print "start from b"
else
    print "not start from a or b"
end
# => start from a

case
when /^a/===str 
    print "start from a\n"
when /^b/===str
    print "start from b"
else
    print "not start from a or b"
end
# => start from a

$arr3
arr = [1,2,3,4,5,6,7,8,9,10]
def method(arr)
    $arr3 = arr.select do |x|
        return if x==4
        x%2==0
    end
end
method(arr)
print $arr3 # => [2, 4, 5, 6, 7, 8, 9, 10]

arr = [1,2,3,4,5,6,7,8,9,10]
arr2 = arr.select do |x|
    next if x==4
    x%2==0
end
print arr2  # => never execute to this line

arr = [1,2,3,4,5,6,7,8,9,10]
arr.map! do |x|
    break if x==4
    x**2
end
print arr