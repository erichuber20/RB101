# write a method that determines if it is a palindrome (same forwad and backwards)

def palindrome?(str)
  characters = str.split
  return true if characters = characters.reverse
  false
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# LS solution
#  def palindrome?(string)
#   string == string.reverse
#  end

# further exploration
# create a method that can take either an array or a string and determine if it is a palindrome

def palindrome2?(arr_text)
  arr_text == arr_text.reverse
end

p palindrome2?(['a', 7, nil, "d"])
p palindrome2?(['a', 'b', 'a'])
p palindrome2?('racecar')
p palindrome2?("Eric")