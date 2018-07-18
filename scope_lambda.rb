def mul(*args)
    x = 100
    args.map {|x| lambda {|y| x*y}}
end

double, triple = mul(2,3)
puts double.class
puts double.call(3)
puts triple.call(2)

def bind