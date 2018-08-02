def method(n)
    begin
        n+=1
        puts "begin"
        retry if n ==1
        raise 
    rescue => exception
        puts n
        retry if n<5
    else
        puts "else"
        

    ensure
        puts "ensure"
        
    end
end


method(0)
