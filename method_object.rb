

m = 10.method(:succ)
puts m.name # => succ
puts m.owner # => Integer
puts m.receiver # => 10


puts m.receiver.class
puts m.owner

trip_equal = Class.method(:===)
puts trip_equal.receiver
puts trip_equal.owner


def square(x); x*x; end
print (1..5).map(&method(:square))
# => [1, 4, 9, 16, 25]

puts self

