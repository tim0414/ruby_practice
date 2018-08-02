def show_info(o)
    print "object id: #{o.object_id}\n"
    print "class: #{o.class}\n"
    if o.respond_to?(:superclass)
        print "super class: #{o.superclass}\n"
        print "super class object id: #{o.superclass.object_id}\n"

    end
end

class A
    def info
        show_info(self)
    end
    def singleton_info
        show_info(self.singleton_class)
    end

    class << self
        def info
            show_info(self)
        end
        def singleton_info
            show_info(self.singleton_class)
        end
    end

end

a = A.new
def a.singleton_method1
end
puts a.info
puts a.singleton_info
puts A.info
puts A.singleton_info
puts Module.superclass
puts Class.superclass