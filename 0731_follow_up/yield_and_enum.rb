$a = 0
class A
    attr_accessor :a, :b, :c, :d, :e, :f
    def initialize(a,b,c,d,e,f)
        @a, @b, @c, @d, @e, @f = a, b, c, d, e, f
    end
    def each
        #$a = 0
        z=0
        puts "before yield #{z}"
        yield a
        $a+=1
        @f+=1
        z+=1
        puts "local z: #{z}"
        yield b
        $a+=1
        @f+=1
        z+=1
        puts "local z: #{z}"
        puts "before last iteration"
        yield c
        $a+=1
        @f+=1
        z+=1
        puts "end of yoeld: #{z}"
    end
end

a = A.new(1,2,3,4,5,0)
iter = a.to_enum
puts "after create enumerator"
puts "first result: #{iter.next}"
puts "end of the first iteration"
puts "second result: #{iter.next}"
puts "$a: #{$a}"
puts "@f: #{a.f}"
puts iter.peek
puts "the last iteration start"
puts "third result: #{iter.next}"
puts "the last iteration over"
puts "$a: #{$a}"
puts "@f: #{a.f}"
puts iter.rewind
puts "$a: #{$a}"
puts "@f: #{a.f}"
puts iter.next
puts iter.next

puts "start peek"
puts iter.peek
puts iter.peek
puts iter.peek
puts "end peek"

puts "$a: #{$a}"
puts "@f: #{a.f}"