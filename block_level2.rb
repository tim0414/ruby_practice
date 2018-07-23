def level1(a, block)
    begin
        level2(a, block)
    rescue => ex
        puts "level1 rescue"
    
    end

end

def level2(a, block)
    begin
        puts "begin"
        raise if a==1
        block.call(100)
        #puts b
    rescue => ex
        puts "#{ex.message}, level2 rescue"
        "level2 exception happened"
        
    end
end


proc = Proc.new {|x| next 100*x}

result1 = level1(0, proc)
puts "final result: #{result1}"    

result2 = level1(1, proc)
puts "final result: #{result2}"  