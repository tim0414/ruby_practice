a = "abc"
puts a.object_id
a[0] = 'z'
puts a.object_id

str = "hello"
str + " world"
puts str  # => hello
str << " world"
puts str  # => hello world
str.concat("!")
puts str  # => hello world!

puts str[-3..-1]
puts str["l"] = "L"
puts str