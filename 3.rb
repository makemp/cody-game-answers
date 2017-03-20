#I removed find_all method from Array class!
#Implement your own Array#find_all method so for example:

#[1, 2, 3, 4].find_all { |e| e > 2 } # would return [3, 4].


class Array
  def find_all
    keep_if { |el| yield el }
  end
end