#Write such a code that allows to use ~:foo syntax in 'case' statement like this:

#o = ...
#case o
#  when ~:new  then puts "o responds to :new method"
#  when ~:size then puts "o responds to :size method"
#end

# for o = [] expected output is  "o responds to :size method"
# for o = String expected output is  "o responds to :new method"

class Checker
  @@method = nil
  def self.===(item)
    item.respond_to? @@method
  end
end

class Object
  def ~
    Checker.class_variable_set(:@@method, binding.receiver)
    Checker
  end
end