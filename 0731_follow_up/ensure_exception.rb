def test1
    begin
        raise ArgumentError
    rescue => ex
        puts "rescue exception class: #{ex.class}"
        raise IOError
    ensure
        puts "ensure exception class: #{$!.class}"
        return "ensure handle exception"
    end
end

#puts test1
puts "after test method call"
# => rescue exception class: ArgumentError
# => ensure exception class: IOError
# => ensure handle exception
# => after test method call


def test2
    begin
        #test1
    rescue => ex
        puts ex.class
    else
        "else"
    ensure
        "ensure"
    end
end

puts "test2 #{test2}"

begin

rescue

ensure
    retry # => Invalid retry (SyntaxError)
end
    

