def level1(b)
    begin
        puts "level1 begin"
        level2(b)
=begin
    rescue => exception
        puts "level1 rescue: #{exception.class}"
    else
=end
        puts "level1 else"

    ensure
        puts "level1 ensure: #{$!}"
    end
end

def level2(b)
    begin
        puts "level2 begin"
        level3(b)
=begin
    rescue => exception
        puts "level2 rescue: #{exception.class}"
    else
=end
    ensure
        puts "level2 ensure: #{$!}"
    end
end

def level3(b)
    begin
        puts "level3 begin"
        #yield 0
        level4(b)
        #yield 0
=begin
    rescue => exception
        puts "level3 rescue: #{exception.class}"
=end
    else
        puts "level3 else"

    ensure
        puts "level3 ensure: #{$!}"
    end
end

def level4(b)
    begin
        puts "level4 begin"
        level5(b)
=begin
    rescue => exception
        puts "level4 rescue: #{exception.class}"
=end
    else
        puts "level4 else"
    ensure
        puts "level4 ensure: #{$!}"
    end
end

def level5(b)
    begin
        puts "level5 begin"
        a = b.call 10
        print "lambda result: #{a}"
=begin
    rescue => exception
        puts "level5 rescue: #{exception.class}"
=end
    else
        puts "level5 else"
    ensure
        puts "level5 ensure: #{$!}"
    end
end

p = lambda do |x|
    puts x
    puts "block execute"
    break 100
    #raise ArgumentError
end



begin
    puts "level0 begin"
    a = level1(p)
    puts a
rescue => exception
    puts "level0 rescue: #{exception.class}"
else
    puts "level0 else"
ensure
    puts "level0 ensure: #{$!}"
end