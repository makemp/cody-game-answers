#Here is the funny method I wrote once:

#def ruby_love
#  We ¦ Ruby! What about you?
#end

#This method should return 'I ¦ Ruby too!' string. You can't change ruby_love method at all.


def method_missing(*arg)
  'I ¦ Ruby too!'
end