module Test
    $abc = 10
    def func1
        puts "testing instance method"
    end

    def self.func2
        puts "testing class method"
    end

    def print_self
        puts self
    end

    def self.print_self
        puts self
    end
end

Test.func2
Test.print_self
puts $abc

include Test
func1

print print_self
Test.print_self

str = "abc"
puts str.object_id
str = str << "ass"
puts str.object_id

puts "bae" =~ /[aeiou]{2}/
result = "bananananac".partition("s")
print result

print /[a]{2}/.match("baasds")
print /../.match('abfs'), "\n"
print "abcd xyz".gsub(/\b./) {|match|  match.upcase}, "\n"
str1 = "asdfg"
str1.upcase!
print "hello\n\n".chomp.chomp, "a"

puts "11".to_i(16)
puts "aaz".succ
puts "ahello".tr("aeiou", "AB")
