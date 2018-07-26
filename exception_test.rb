
def fac(n)
    if n<1
        raise ArgumentError, "expected argument >= 1. Got #{n}",caller
    end
end

begin
    a = fac(0)
rescue => ex
    print "#{ex.class}, #{ex.message}\n"
    print "#{$!.class}, #{$!.message}\n"
end

print a.class

print "over"  # => over

