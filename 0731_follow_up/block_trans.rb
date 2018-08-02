=begin
def method(a)
    a.call 10
end

p = Proc.new{|x| print x}
method() #{|x| print x}
=end

def method(&b)
    
end

method()
# => no block given (yield) (LocalJumpError)