
class A
    attr_accessor :a
    def initialize(a)
        @a = a
    end
    def ==(o)
        puts "using =="
        super(o)
    end

    def equal?(o)
        puts "using equal?"
        super(o)
    end

    def eql?(o)
        puts "using eql?"
        super(o)
    end

    def ===(o)
        puts "using ==="
        super(o)
    end

    def object_id
        puts "using object id"
        super(o)
    end

    def <=>(o)
        puts "using <=>"
        super(o)
    end
end


a1 = A.new(10)
a2 = A.new(10)
a3 = A.new(11)
a4 = A.new(12)
a5 = A.new(13)
a6 = A.new(11)

arr1 = [a1, a2, a3, a4, a5, a6, a1]

arr2 = [a1, a3]
arr3 = arr1 - arr2  # => [a2, a4, a5, a6]
arr4 = arr1 & arr2  # => [a1, a3]
arr5 = arr1 | arr2  # => [a1, a2, a3, a4, a5, a6]


print arr1
puts
print arr3
puts
print arr4
puts
print arr5


puts
#arr1.delete(a1)


=begin
arr = Array.new(10, a1)
10.times do |i|
    puts arr[i].object_id
end
a.a = 12

10.times do |i|
    puts arr[i].a
end
=end

arr = [1,2,3]
arr[-2..1] # => [2]
arr.insert(1,100)
arr # => [1, 100, 2, 3]
