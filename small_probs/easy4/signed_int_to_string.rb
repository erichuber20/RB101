CONVERSION = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(int)
  int = int.digits.reverse
  string = ''
  int.each do |x|
    string << CONVERSION[x]
  end
  string
end

def signed_integer_to_string(integer)
  if integer >= 0
    integer_to_string(integer)
  else
  no_sign_integer = integer * -1
  integer_to_string(no_sign_integer).prepend('-')
  end
end

p signed_integer_to_string(467)
p signed_integer_to_string(-568)
p signed_integer_to_string(0)

# other solution
#STRING_DIGITS = {
  #0 => '0',
  #1 => '1',
  #2 => '2',
  #3 => '3',
  #4 => '4',
  #5 => '5',
  #6 => '6',
  #7 => '7', 
  #8 => '8',
  #9 => '9'
#}
#
#def signed_integer_to_string(integer)
  #if integer.negative? 
    #integer = integer * -1
    #string = integer.digits.map {|x| STRING_DIGITS[x]}
    #"-" + string.reverse.join
  #elsif integer.positive?
    #string = integer.digits.map {|x| STRING_DIGITS[x]}
    #"+" + string.reverse.join
  #else
    #string = integer.digits.map {|x| STRING_DIGITS[x]}
    #string.reverse.join
  #end
#end
#
#p signed_integer_to_string(4321) == '+4321'
#p signed_integer_to_string(-123) == '-123'
#p signed_integer_to_string(0) == '0'