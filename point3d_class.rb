require_relative "point_class"

class Point3D_struct < Struct.new("Point3D", :x, :y, :z)
    # Superclass struct gives us accessor methods, ==, to_s, etc.
end



class Point3D < Point
    def initialize(x,y,z)
        #x = 100
        super(x,y)
        @z = z
    end

    ORIGIN = Point3D.new(0,0,0)

    def to_s
        #super
        "(#{@x}, #{@y}, #{@z})"
    end

    def self.report
        super
    end

    def origin
        super
    end
end

p = Point3D.new(1,2,3)
puts p
#Point.report
Point3D.report
puts Point3D::ORIGIN
p.origin