#Writing ordinary if statement is boring. Implement this funny looking conditional statement.

#(1 == 1).--> { puts 'true' } { puts 'false' }
# should print 'true'
#(0 >= 1).--> { puts 'true' } { puts 'false' }
# should print 'false'
#(0 >= 1).--> { puts 'true' }
# should do nothing


class Object
  def -(blo)
    if self.class == TrueClass
      blo.call
    elsif self.class == FalseClass
      yield if block_given?
    end
  end
end