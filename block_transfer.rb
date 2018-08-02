def level1(&block)
    begin
        
    rescue => exception

    ensure
        
    end
end

def level2(block)
    begin
        
    rescue => exception

    ensure
        
    end
end

def level3(block)
    begin
        
    rescue => exception

    ensure
        
    end
end

def level4(block)
    begin
        
    rescue => exception

    ensure
        
    end
end

proc = Proc.new {|x| x+1}

level1(&proc)