class Season
    NAMES =%w{ Spring Summer Autumn Winter }
    INSTANCES = []

    def initialize(n)
        @n = n
    end

    def to_s
        NAMES[@n]
    end

    NAMES.each_with_index do |name, index|
        instance = new(index)
        INSTANCES[index] = instance
        const_set name, instance
    end

    # We want to allow Season objects to be marshaled, but we don't
    # want new instances to be created when they are unmarshaled.
    def _dump(limit)
        @n.to_s # Return index as a string
    end

    def self._load(s)
        INSTANCES[Integer(s)] # Return an existing instance
    end


    private_class_method :new, :allocate
    private :dup, :clone
end

print Season::NAMES, "\n"
print Season::INSTANCES, "\n"

s = []
s << 1 << 2 << "aa"

NAMES1 =%w{ Spring Summer Autumn Winter }
INSTANCES1 = []
NAMES1.each_with_index do |name, index|
    #instance = new(index)
    INSTANCES1[index] = index
    #const_set name, instance
end

print INSTANCES1