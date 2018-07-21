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
    print "after calling method2\n"
rescue => ex
    print "outer exception handling #{ex.class}, #{ex.message}"
end

puts a

method1(a)

    
