1 == 1.0    # => true
1.eql?(1.0) # => false
puts (1.0..7.0)===3 # => true
puts (1.0..7.0)===8 # => false


puts "abc" == "abc"  # => true
puts "abc".eql?"abc" # => true
puts /\d+/ === "123" # => true

puts 2**3**2
