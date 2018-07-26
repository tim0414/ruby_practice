def proc_demo(&proc)
    print "proc class: #{proc.class}, proc respond to call? #{proc.respond_to?:call}\n"
    print "before proc.call\n"
    proc.call
    print "after proc.call\n"
end

p1 = Proc.new {puts "return proc\n";return}
p2 = Proc.new {puts "break proc\n";break}
p3 = Proc.new {puts "next proc\n";next}

proc_demo(&p1)