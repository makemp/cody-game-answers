#Implement class Squirrel in a way below API will be supported.

#squirrel = Squirrel.new
#squirrel.fight do
#  jump
#  kick
#  punch
#  jump
#end

#squirrel.actions #=> ['jump', 'kick', 'punch', 'jump']

class Squirrel
  def fight
    @actions = []
    self.class.send(:define_method, :method_missing, Proc.new { |arg| @actions << arg  })
    instance_eval &Proc.new

  end

  def actions
    @actions
  end
end