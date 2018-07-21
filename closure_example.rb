def mul(*args)
    z = 100
    args.map {|x| lambda {|y| x*y*z}}
end

def get_mul2(*args)
    mul = []
    for n in args do
        puts n
        mul << lambda {|x| x*n }
    end
    mul
end

double, triple = mul(2,3)
puts double.call(2) # =>4

arr = mul(2,3,4,5,6)
puts arr[1].class

double, triple = get_mul2(2,3)
print double.call(2)
print triple.call(2)