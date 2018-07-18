class Point

    # class instance variable
    @n = 0
    @totalX = 0
    @totalY = 0

    # make class instance variable public
    class << self
        attr_accessor :n, :totalX, :totalY
    end

    def initialize(x,y)
        @x, @y = x, y
    end

    # class method to create new Point objects
    def self.new(x,y)
        @n += 1
        @totalX += 1
        @totalY += 1
        
        super
    end

    def self.report

        puts "number of points created: #@n"
        puts "average X coordinate: #{@totalX.to_f/@n}"
        puts "average X coordinate: #{@totalY.to_f/@n}"
    end
end



print Point.totalX
        