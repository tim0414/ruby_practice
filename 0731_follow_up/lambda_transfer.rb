def method(&operation)
    #puts operation.class
    #puts operation.lambda?
    operation.call(10)
end

#l = lambda {|x| puts x}
method()