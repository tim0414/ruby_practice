

(1..20).each do |x|
    puts x if (x == 5) .. (x == 10)
end


(1..10).each {|x| print x if x==3..x>=3} # => 3

(1..10).each {|x| print x if x==3...x<=3} # => 34
