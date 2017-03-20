#Write a method called format_number which converts given integer number to string like this:

#format_number(49)         #=> '49'
#format_number(12345)      #=> '12_345'
#format_number(-134567)    #=> '-134_567'
#format_number(1234567890) #=> '1_234_567_890'

#The idea is to create groups of 3 digits separated by '_' character.

def format_number(number)
  result = ''
  arr = number.to_s.split('')
  size = arr.size
  arr.to_enum.with_index.each do |el, index|
   reverse_index = (index - size + 1 ) * -1
   if reverse_index % 3 == 0 and reverse_index != 0 and el != '-'
   	 result = result + el + '_'
   else
   	 result  += el 
   end
  end
  return result
end