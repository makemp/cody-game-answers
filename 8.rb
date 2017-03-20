#Implement a method 'change_object' in such a way that
#object.size == 0 will return 'Hello World!' string.

#object = Object.new
#change_object(object)

#object.size == 0 # should return 'Hello World!'

def change_object(object)
  object.define_singleton_method(:size) do
    self
  end

  object.define_singleton_method(:==) do |arg|
    'Hello World!'
  end
end