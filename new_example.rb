
def iterator(&proc)
    puts "entering iterator"
    proc.call
    puts "existing iterator"
end

def test
    iterator {puts "entering proc"; break}
    puts "existing teset\n"
end
#test

p = Proc.new {print "abc"; return}
#iterator(&p)

#iterator  {puts "entering proc"; break}

#puts "over"

def test(la)
    puts "entering test method"
    #lambda = lambda {puts "entering lambda"; break; puts "exiting lambda"}
    #lambda.call
    la.call
    puts "existing test method"
end
lambda = lambda {puts "entering lambda"; break; puts "exiting lambda"}
    
test(lambda)

