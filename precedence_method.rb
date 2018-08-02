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

case not be_false(1) # => syntax error
when not be_false(1) # => syntax error
    puts "a" 
else
    puts "b"   
end

