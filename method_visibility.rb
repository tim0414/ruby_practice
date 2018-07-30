
class A
    def method1
        puts "method1 in #{self.class}"
    end

    protected
    def method2
        puts "method2 in #{self.class}"
    end

    private
    def method3
        puts "method3 in #{self.class}"
    end
end

a = A.new
#a.method1 # => method1 in A
#a.method2 # => NoMethodError, protected method `method2' called
#a.method3 # => # => NoMethodError, private method `method3' called

a.send(:method3) # => method3 in A

class B < A
    def b_method1
        method1 # public method in A
    end
    def b_method2
        method2 # protected method in A
    end
    def b_method3
        method3 # private method in A
    end
end

b = B.new
b.method1 # => method1 in B
#b.method2 # => NoMethodError, protected method `method2' called
#b.method3 # => NoMethodError, private method `method3' called
b.b_method1 # method1 in B
b.b_method2 # method2 in B
b.b_method3 # method3 in B

class Meditator
    def initialize(hours)
      @hours = hours
    end
  
    def more_experienced?(other_person)
      hours > other_person.hours
    end
  
    protected
    attr_reader :hours  # We have made the accessor protected
end
  
m1 = Meditator.new 3000
m2 = Meditator.new 5000
m1.hours # => NoMethodError, protected method `hours' called

m2.more_experienced? m1  # => true
m1.more_experienced? m2  # => false