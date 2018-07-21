p = Proc.new {|x| print x}
l = lambda {|x,y| x+y}
print "#{p.lambda?}, #{l.lambda?}"

def method(*a, &b)
    #a[1].call(10)
    #b.call(100)
    #yield 10
end



method(1,p) #{|s| print s}

def calculate(a,b)
    add = Proc.new do |x,y|
        return x+y
    end
    add.call(a,b)
    puts "done"
end

#print "\n", calculate(1,2), "\n"

def calculate2(a,b,operation)
    print "\noperation class: #{operation},\nis it lambda? #{operation.lambda?}\n"
    result = operation.call(a,b)
    puts "done, result is #{result}\n"
end

proc = Proc.new {|x,y| next x+y}
lam = lambda {|x,y| return x+y}

puts calculate2(1,2, proc)
#puts calculate2(1,2, &lam)
#puts calculate2(1,2) {|x,y| x+y}
