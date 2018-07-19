class A
    attr_accessor :a
    def initialize(a)
        @a = a
    end
end

a = A.new(10)

arr = Array.new(10, a)
10.times do |i|
    puts arr[i].object_id
end
a.a = 12

10.times do |i|
    puts arr[i].a
end
