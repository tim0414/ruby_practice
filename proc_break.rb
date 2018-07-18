def test
    puts "entering test method"
    la = lambda { puts "entering proc"; break ; puts "exiting"}
    la.call
    # LocalJumpError: iterator has already returned
    puts "exiting test method"
end
test

raise "except"