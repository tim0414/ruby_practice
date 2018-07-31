$a = 0
def test(n)
    begin
        $a=$a+1   
        raise ArgumentError if n==1
        raise IOError if n==2
        #retry
=begin    
    rescue IOError => ex
        puts ex.class
=end  
   
    ensure
        puts "ensure clouse"
        puts $!.class
        #retry if $a==1
        #retry if a ==1
        #puts $!.message

    end
end

test(1)
puts "over test"