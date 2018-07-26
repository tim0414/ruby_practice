def level1(a, &block)
    begin
        puts "level1 begin"
        block.call(1)
        result = level2(a, &block)
        puts "level1 begin returned"
        result
    rescue => ex
        puts "#{ex.class} level1 rescue"
        "level1 rescue returned"
    else
        puts "level1 else"
        "level1 else returned"

    ensure
        puts "level1 ensure"
        "level1 ensure returned"

    end
end

def level2(a, &block)
    begin
        puts "begin level2"
        raise if a==1
        result = yield(1)
        result
    rescue => ex
        puts "#{ex.class}, #{ex.message}, level2 rescue"
        "level2 exception returned"
    else
        puts "level2 else"
        "level2 else returned"

    ensure
        puts "level2 ensure"
        "level2 ensure returned" 
    end
end

$a = 0
proc = Proc.new {puts "execute block"; a+=1}

result1 = level1(1) {|x| puts "execute block";$a+=1; break 100 if x==1}
puts "final result: #{result1} #{$a}"    


#result2 = level1(1, proc)
#puts "final result: #{result2}"  