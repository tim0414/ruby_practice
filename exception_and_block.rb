def method1(a, &block)
    method2(b, block)
end

def method2(b, &b)
    begin
    exception
rescue

end


block = Proc.new {|a| a+1}
method(a, )
