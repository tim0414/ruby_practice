def repeat(x)
    if x
        yield x
    end
end

n=10
n.times do |x|
    print x
    if x==9
        n-=1
        #retry
    end
end

a = [1,2,3,4]
print a[0,2]

p = Proc.new {|x|  x}
z = p.call([1,2,3,5])

b = a.collect {|x| print x*n}
s = a.inject {|sum,x| sum+=x }
print "\n",s