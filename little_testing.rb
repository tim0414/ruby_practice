puts "abc"==="abc"

puts "acccz" < "acccc"

arr = (1..10).to_a
$arr2
def method(arr)
    print arr
    $arr2 = arr.select do |x|
        break 100 if x==4
        x%2==0
    end
end

a = method(arr)
print "arr2: #{$arr2}"

puts "abc"===/^a/

print global_variables
print local_variables