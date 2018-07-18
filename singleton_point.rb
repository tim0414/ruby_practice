#require_relative "point_class"
require "singleton"

class PointStats
    include Singleton

    def initialize
        @n, @totalX, @totalY = 0, 0.0, 0.0
    end

    def record(point)
        @n += 1
        @totalX += point.x
        @totalY += point.y
    end

    def report
        puts "number of points created: #@n"
        puts "average X coordinate: #{@totalX.to_f/@n}"
        puts "average Y coordinate: #{@totalY.to_f/@n}"
    end

end