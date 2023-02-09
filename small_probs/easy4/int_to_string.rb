def integer_to_string(integer)
  array = integer.digits
  string_array = []
  array.each do |x|
    case
    when x == 1 then string_array << '1'
    when x == 2 then string_array << '2'
    when x == 3 then string_array << '3'
    when x == 4 then string_array << '4'
    when x == 5 then string_array << '5'
    when x == 6 then string_array << '6'
    when x == 7 then string_array << '7'
    when x == 8 then string_array << '8'
    when x == 9 then string_array << '9'
    when x == 0 then string_array << '0'
    end
  end
  string_array.join.reverse
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)

#LS User Solution that I like a lot
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

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)