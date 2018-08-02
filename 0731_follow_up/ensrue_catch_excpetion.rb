$a = 0
def test(n)
    begin
        $a=$a+1   
        raise ArgumentError if n==1
        
        #retry

    rescue => ex
        puts ex.class
        raise IOError
 
   
    ensure
        puts "ensure close"
        puts $!.class
        #retry if $a==1
        #retry if a ==1
        #puts $!.message

    end
end



def test()
    begin
        raise ArgumentError
    rescue IOError => ex
        puts "rescue exceptio class: #{ex.class}"
        #raise IOError
    ensure 
        puts "ensrue exception class: #{$!.class}"
        return 10
    end
end

a = test
puts a
# => rescue exceptio class: ArgumentError
# => ensrue exception class: IOError
puts "over testing" # won't execute this line

def test
    begin
        raise IOError
    rescue IOError => ex
        puts "rescue: #{ex.class}"
    ensure
        puts "ensure: #{$!.class}"
    end
end
test
# => rescue: IOError
# => ensure: NilClass      
