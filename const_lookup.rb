module Kernel
    # Constants defined in Kernel
    A = B = C = D = E = F = "defined in kernel"
end
    
# Top-level or "global" constants defined in Object
A = B = C = D = E = "defined at toplevel"
    
class Super
    # Constants defined in a superclass
    A = B = C = D = "defined in superclass"
end
    
module Included
    # Constants defined in an included module
    A = B = C = "defined in included module"
end
    
module Enclosing
    # Constants defined in an enclosing module
    A = B = "defined in enclosing module"
    class Local < Super
        include Included
        # Locally defined constant
        A = "defined locally"
        # The list of modules searched, in the order searched
        # [Enclosing::Local, Enclosing, Included, Super, Object, Kernel]
        
        search = (Module.nesting + self.ancestors + Object.ancestors).uniq
        
        puts A # defined locally
        puts B # defined in enclosing module
        puts C # defined in included module
        puts D # defined in superclass
        puts E # defined at toplevel
        puts F # defined in kernel
    end
end
