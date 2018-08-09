
def level1(&p)
    puts p.class  
    puts p.lambda? 
    p.call(1)      
    puts "after calling p"
end

def level2()
    yield 2
end

def method1(x)
    puts "in the method1 x: #{x}"
    return x+1
end

m = method(:method1)
level2(&m) {|x| print x}
result = level1(&method(:method1))
puts "result: #{result}"    
puts m.method(:call).owner

p = Integer.method(:instance_method)
puts p.owner

unbound_plus = Fixnum.instance_method(:+)
plus_2 = unbound_plus.bind(2)
plus_2.class # => Method