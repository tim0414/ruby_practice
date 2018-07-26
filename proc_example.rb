def method(&a)
    print a.class
    print a.lambda?
    #yield 3
    #a.call(100)
end

#method {|x| print x}

p = Proc.new {|x| print x}
l = lambda {|x| print x}
method(&p)
#print p.class