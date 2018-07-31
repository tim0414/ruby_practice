def method1(a, &block)
    (1..5).map do |x| 
        break if x==3
        x*x
    end
    print a

    #method2(a, block)
end

def method2()
        begin
            print "begin\n"
            #raise "begin error"
           
            return 1
        rescue
            print "rescue\n"
            raise ArgumentError, "rescue error", caller
            print 2
        else
            print "else\n"
            raise "else error"
            3
        ensure
            print "ensure\n"
            return 4
        end
end

begin
    a = method2()
    raise
    print "after calling method2\n"
rescue => ex
    print "outer exception handling #{ex.class}, #{ex.message}"
    a = ex.backtrace
    print a
end

puts a

method1(a)

begin
    raise
rescue => ex
    puts
    print "exception class: #{ex.class}\n"
    print "exception message #{ex.message}\n"
    print "backtrace arry #{ex.backtrace}\n"
    print $!.class
end

print $!.class


    
def accessor_pair(initialValue)
    value = initialValue
    getter = lambda{value}
    setter = lambda{|x| value = x}
    return getter, setter
end

getX, setX = accessor_pair(0)
puts getX[] # => 0
setX[10]
puts getX[] # => 10
print "value: #{value}" 
# => undefined local variable or method `value'