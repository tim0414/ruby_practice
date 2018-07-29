
class BasicObject
    def equal?(o)
        "using equal?"
    end
end

o1 = BasicObject.new
o2 = BasicObject.new


print o1.equal?o2
print o1==o2
