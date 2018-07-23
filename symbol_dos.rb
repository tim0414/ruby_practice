


before = Symbol.all_symbols.size
100_000.times do |i|
  "sym#{i}".to_sym
end
GC.start
after = Symbol.all_symbols.size
puts after - before
# ruby2.1 => 100001
# ruby2.2 => 1

def foo; end  # => can't be GC
:foo          # => can't be GC
"foo".to_sym  # => can be GC

A = 100 # => already initialized constant A
A = 10  # => still asign 10 to A

puts A

def assignment(a)
  a =1000
end

assignment(A)
puts A