puts "abc"==="abc"

puts "acccz" < "acccc"

arr = (1..10).to_a
$arr2
def method(arr)
    print arr
    $arr2 = arr.select do |x|
        break 100 if x==4
        x%2==0
    end
end

a = method(arr)
print "arr2: #{$arr2}"

puts "abc"===/^a/

puts "asx".kind_of?String


def iterator(&proc)
    puts "entering iterator"
    proc.object_id
    proc.call
    puts "existing iterator"
end

def test
    iterator {puts "entering proc"; break}
    puts "existing test"
end
test

animal = "cat"
puts "animal super class: #{animal.class}"

def animal.speak
    puts "the #{self} says miaow"
end

animal.speak
a = 1
puts "animal super class: #{animal.class.superclass}"


class Point
    @a=0
    @b=0

    def initialize(x,y)
        @x, @y = x, y
    end
    def to_s
        "(#{@x}, #{@y})"
    end
    def self.method1
        puts "#{@a}, #{@b}"
    end
end

class Point2 < Point
    def self.method1
        
        puts "#{@a}, #{@b}"
    end
end

puts Point2.respond_to?(:@a)

p = Point.new(1,1)

Point.method1
puts p.itself