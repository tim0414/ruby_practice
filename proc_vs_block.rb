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

def test()
    #proc_demo(p4)
    puts "test over"
    p1 = Proc.new {puts "return proc\n";return}
    p2 = Proc.new {puts "break proc\n";break}
    p3 = Proc.new {puts "next proc\n";next}
    proc_demo(p2)
    print "over!"

end

#test
#test(p2)

proc_demo(p1)
#proc_demo(p2)
#proc_demo(p3)

#block_demo(p1) {|x| puts x; return}

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

class A
    attr_accessor :a, :b
    include Enumerable
    def initialize(a,b)
        @a, @b = a, b
    end
    def each
        yield @a
        yield @b
    end
    def to_s
        "#{@a}, #{@b}"
    end
end

a = A.new(10, 1)
b = a.inject {|x,y| x+y}
print b

s = "hello\nworld"
a = s.enum_for(:each_char)
b = s.enum_for(:each_line)
#a.each {|x| print "[#{x}]"}
puts
loop do
    print a.next
end
a.rewind
print a.peek, a.peek
#print "next: #{a.next}"


#puts
#b.each {|x| print "[#{x}]"}
=begin
for line,a in a.each.with_index
    print "#{a}.#{line}\n"
end
=end


class Two_Dimension
    def initialize(x,y)
        @x, @y = x, y
    end
    def each
        yield @x
        yield @y
    end
end

class Three_Dimension
    def initialize(x, y, z)
        @x, @y, @z = x, y, z
    end
    def each
        yield @x
        yield @y
        yield @z
    end
end



p1 = Two_Dimension.new(10, 2)
iter1 = p1.to_enum

p2 = Three_Dimension.new(10, 5, 6)
iter2 = p2.to_enum

if iter1.next==iter2.next and iter1.next==iter2.next
    print "true"
else
    print "false"
end
# => false