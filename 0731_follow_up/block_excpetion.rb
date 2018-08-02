def level1(&b)
    begin
        puts "level1 begin"
        level2(&b)
    rescue => exception
        puts "level1 rescue: #{exception.class}"
    else
        puts "level1 else"

    ensure
        puts "level1 ensure: #{$!}"
    end
end

def level2(&b)
    begin
        puts "level2 begin"
        level3(&b)
    rescue => exception
        puts "level2 rescue: #{exception.class}"
    else

    ensure
        puts "level2 ensure: #{$!}"
    end
end

def level3(&b)
    begin
        puts "level3 begin"
        level4(&b)
    rescue => exception
        puts "level3 rescue: #{exception.class}"
    else
        puts "level3 else"

    ensure
        puts "level3 ensure: #{$!}"
    end
end

def level4(&b)
    begin
        puts "level4 begin"
        level5(&b)
    else
        puts "level4 else"
    ensure
        puts "level4 ensure: #{$!}"
    end
end

def level5(&b)
    begin
        puts "level5 begin"
        yield (0)
    else
        puts "level5 else"
    ensure
        puts "level5 ensure: #{$!}"
    end
end

p = Proc.new do |x|
    puts x
    puts "block execute"
    #break 100
    raise IOError
end
l = lambda do |x|
    puts x
    puts "block execute"
    break
    raise IOError
end

begin
    puts "level0 begin"

    result = level1 do |x|
        puts "execute block"
        puts "block execute"
        #break 100
        raise ArgumentError
    end
    puts "result: #{result}" 
    
rescue => exception
    puts "level0 rescue: #{exception.class}"
else
    puts "level0 else"
ensure
    puts "level0 ensure: #{$!}"
end

