#I removed % operator for integer numbers!
#Re-implement it in a way following code will work properly:

#10 % 3 #=> 1
#23 % 0 # raises ZeroDivisionError error

#Don't worry about negative numbers. I don't care about them.


class Fixnum
  def %(other)
    raise  ZeroDivisionError if other == 0
    num = (self / other).floor
    self - num * other
  end
end