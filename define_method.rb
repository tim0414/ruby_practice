class A;end
A.class_eval{ define_method("method1"){puts "method1"} }

A.define_singleton_method("singleton_method1"){puts "class method1"}
A.singleton_class.class_eval{
    define_method("singleton_method2"){puts "class method2"}
}

a = A.new
a.define_singleton_method("singleton_method3"){puts "singleton method3"}
a.singleton_class.class_eval{
    define_method("singleton_method4"){puts "singleton method4"}
}

A.singleton_method1 # => class method1
A.singleton_method2 # => class method2
a.method1 # => method1
a.singleton_method3 # => singleton method3
a.singleton_method4 # => singleton method4

A.instance_eval {def method2(x);yield x;end}

A.method2(1) {|x| puts x}
# => 1
