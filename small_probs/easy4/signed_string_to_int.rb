DIGITS = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
    '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }

string = ''

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def signed_string_to_integer(string)
  characters = string.chars
  if characters[0] == '-'
    characters.delete_at(0)
    characters = characters.join
    string_to_integer(characters) * -1
  elsif characters[0] == '+'
    characters.delete_at(0)
    characters = characters.join
    string_to_integer(characters)
  else
    string_to_integer(string)
  end
end

p signed_string_to_integer('-134')
p signed_string_to_integer('42945')
p signed_string_to_integer('+482')

#refactoring LS solution
def string_to_signed_integer(string)
  if string[0] == '-' || string[0] == '+'
    no_sign_string = string[1..-1]
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

# my solution after revisiting
def string_to_signed_integer(string)
  negative = string[0] == '-'
  string.delete! "+-"
  total = 0

  string.chars.each do |digit|
    total = (total * 10) + DIGITS[digit]
  end
  negative ? total * -1 : total
end