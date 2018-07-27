
def method(n)
    begin
        print "begin block execute\n"
        raise if n==0
         "begin"
    rescue => exception
        print "rescue block execute\n"
         "rescue"
    else
        print "else block execute\n"
         "else"
    ensure
        print "ensure block execute\n"
         "ensure"
    end
end

result = method(0) 
print "result returned from: #{result}"

p = Proc.new {|x| x+1}
l = lambda {|x, y| x+y}
l.class   # => Proc
l.lambda? # => true

l[1,2] # =>3
p[1]   # =>2

def procBuilder(message)             # create and return a proc
    Proc.new {puts message; return}  # return retruns from procBuilder
    #but procBuilder has already returned here!
end

def test
    puts "entering method"
    p = procBuilder("entering proc")
    p.call                  # prints "entering proc" and raise LocalJumpError!
    puts "existing method"  # this line is never executed
end
test
