def demo(*item, &block)
    puts item
    proc = item[-1]
    proc.call(100) if proc.respond_to? :call 
    print block.class, " block id: ", block.object_id
    #block.call(12)
    if block_given?
        a = yield 10
        print "a: #{a} \n"
    end
end



demo(1,2,3) {|x| puts x;12}

puts "\nuse proc as parameter\n"
p = Proc.new {|x| puts x; 11}
demo(2,3,4,p)