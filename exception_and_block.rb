def method1(a, &block)
    print a
    #method2(a, block)
end

def method2()
    begin
        print "begin\n"
        return 1
    rescue
        print "rescue\n"
        2
    else
        print "else\n"
        break 3
    ensure
        print "ensure\n"
        4
    end
end

b = 10
method1(b) {|x| print x+1}
a = method2()
print a
