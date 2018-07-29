def square(n)
    n*n
end



def be_false(n)
    puts "false method: #{n}"
    false
end

def be_true(n)
    puts "true method: #{n}"
    true
end

a = (be_false 1 and be_true 2)

not be_true 1*2 # => true method: 1
#defined? be_true 1 # => syntax error

case not(be_false(1))
when not(be_false(1))
    puts "a"   # => print a
else
    puts "b"   
end

if be_true 1
    print "a"
end

def method
    yield 10, 100
end

method {|x| print x; print "start block"}
puts
puts
print be_true 2