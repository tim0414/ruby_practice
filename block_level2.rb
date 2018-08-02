
def level1(a, &block)
    begin
        puts "level1 begin"
        raise if a==1
        level2(a, &block)
        puts "after calling level2"
        #raise if a==1
        "level1 begin return"
    rescue => ex
        puts "#{ex.class}, level1 rescue"
        "level1 rescue return"
    else
        puts "level1 else"
        "level1 else"
    ensure
        puts "level1 ensure"
        "level1 ensure"
    end
end


def level2(a, &block)
    begin
        puts "level2 begin"
        raise if a==2
        block.call(100)
        "level2 begin return"
    rescue => ex
        puts "#{ex.class}, level2 rescue"
        "level2 rescue return"
    else
        puts "level2 else"
        "level2 else"
    ensure
        puts "level2 ensure"
        "level2 ensure"
    end
end

=begin
def level3(a, &block)
    begin
        puts "level2 begin"
        raise if a==2
        block.call(100)
        "level2 begin return"
    rescue => ex
        puts "#{ex.class}, level2 rescue"
        "level2 rescue return"
    end
end
=end


result1 = level1(0){|x|  break 100*x}
puts "final result: #{result1}"    

puts

result2 = level1(1){|x|  break 100*x}
puts "final result: #{result2}"  

puts

result3 = level1(2){|x|  break 100*x}
puts "final result: #{result3}"  


