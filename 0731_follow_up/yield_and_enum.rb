$a = 0
class A
    attr_accessor :a, :b, :c, :instance_var
    def initialize(a,b,c,instance_var)
        @a, @b, @c, @instance_var = a, b, c, instance_var
    end
    def each

        local_var=0 if $a==0
        puts "before the first iteration #{local_var}"
        yield a

        $a+=1
        @instance_var+=1
        local_var+=1
        puts "local variable: #{local_var}"  
        yield b

        $a+=1
        @instance_var+=1
        local_var+=1
        puts "local variable: #{local_var}"
        puts "before the last iteration"
        yield c

        $a+=1
        @instance_var+=1
        local_var+=1
        puts "end of yoeld: #{local_var}"
    end
end

a = A.new(1,2,3,0)
iter = a.to_enum
puts "after create enumerator"
puts
puts "first result: #{iter.next}"
puts
puts "second result: #{iter.next}"
puts "$a: #{$a}"
puts "@instance_var: #{a.instance_var}"
puts
puts "peek result: #{iter.peek}"
puts "$a: #{$a}"
puts "@instance_var: #{a.instance_var}"
puts
puts "the last iteration start"
puts "third result: #{iter.next}"
puts "$a: #{$a}"
puts "@instance_var: #{a.instance_var}"

puts "rewind result: #{iter.rewind}"
puts "$a: #{$a}"
puts "@instance_var: #{a.instance_var}"

iter.next
iter.next
puts "$a: #{$a}"
puts "@instance_var: #{a.instance_var}"

puts "start peek"
puts iter.peek
puts iter.peek
puts iter.peek
puts "end peek"

puts "$a: #{$a}"
puts "@instance_var: #{a.instance_var}"