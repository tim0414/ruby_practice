
def twice
    yield
    yield
end

a = 10
twice {puts a} 


x = y = 0
1.upto(4) do |x|
    y = x+1
    puts y*y
end

print [x,y] # => [0,0]