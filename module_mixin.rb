
module Countable
    def single
        puts "There is a #{self.name}"
    end
    def multiple
        puts "There are #{self.names}"
    end
end

class Animal
    include Countable
    attr_reader :name, :names
    def initialize(name, names)
        @name, @names = name, names
    end
end

m = Animal.new("mouse", "mice")
m.single   # => There is a mouse
m.multiple # => There are mice
Animal::A.new.method1


