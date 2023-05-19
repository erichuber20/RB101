# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

def letter_changes(string)
  characters = string.chars
  uppercase_letters = ('A'..'Z').to_a
  lowercase_letters = ('a'..'z').to_a
  result = []

  characters.each do |char|
    if uppercase_letters.include?(char)
      uppercase_letters.each_with_index do |letter, index|
        if letter == char
          result << uppercase_letters[index + 3] if index < 23
          result << uppercase_letters[0] if letter == uppercase_letters[23]
          result << uppercase_letters[1] if letter == uppercase_letters[24]
          result << uppercase_letters[2] if letter == uppercase_letters[25]
        end
      end
    elsif lowercase_letters.include?(char)
      lowercase_letters.each_with_index do |letter, index|
        if letter == char
          result << lowercase_letters[index + 3] if index < 23
          result << lowercase_letters[0] if letter == lowercase_letters[23]
          result << lowercase_letters[1] if letter == lowercase_letters[24]
          result << lowercase_letters[2] if letter == lowercase_letters[25]
        end
      end
    else
      result << char
    end
  end
  
  result.join
    
end
p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')
