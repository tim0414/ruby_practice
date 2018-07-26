def method(n)
    begin
        print "begin block execute\n"
        raise if n==0
        return "begin"
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

print method(1) 




