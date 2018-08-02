
def level1(&p)
    puts p.lambda? # => true
    level2(&p)
end

def level2(&p)
    puts p.lambda? # => true
end

l = lambda {|x| print x}
level1 &l
