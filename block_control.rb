arr = [1,3,5,7,9]
arr.map! do |x|
    next if x==5
    x + 3
end

print arr