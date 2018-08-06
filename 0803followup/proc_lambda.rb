def method(&p)
    puts p.object_id
    p.call 10
end

l = lambda {|x| print x+1}
puts l.object_id
method() {|x| print x}