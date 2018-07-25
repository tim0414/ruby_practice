def block_demo(item, &block)
    print "block class: #{block.class}, block respond to call? #{block.respond_to?:call}\n"
    #proc.call(100) if proc.respond_to? :call 
    #print block.class, " block id: ", block.object_id, " respond to call?", (proc.respond_to? :call), "\n"
    yield 10
    block.call(11)
    if block_given?
        a = yield 10
        print "a: #{a} \n"
    end
end

def proc_demo(proc)
    print "proc class: #{proc.class}, proc respond to call? #{proc.respond_to?:call}\n"
    print "before proc.call\n"
    proc.call
    print "after proc.call\n"
end



#puts "\nuse proc as parameter\n"

p1 = Proc.new {puts "return proc\n";return}
p2 = Proc.new {puts "break proc\n";break}
p3 = Proc.new {puts "next proc\n";next}

#proc_demo(p1)
#proc_demo(p2)
proc_demo(p3)

#block_demo(p1) {|x| puts x; break}

#demo(2,3,4,p)

def two(a)
    puts a
    2
end
def three(a)
    puts a
    3
end


#a = two(1)**two(2)**three(3)**two(4)
#puts a