FIRST_LETTER = %w(b x d c n g r f j h v l z)
SECOND_LETTER = %w(o k q p a t e s w u i y m)

def block_word?(word)
  characters = word.downcase.chars
  index = 0
  results = []

  loop do
    results << (characters.include?(FIRST_LETTER[index]) && characters.include?(SECOND_LETTER[index]))
    index += 1
    break if index == FIRST_LETTER.size
  end

  results.all?(false)
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true


# Alternate solution that sucks that I originally came up with:

# def block_word?(word)
#   characters = word.downcase.chars

#   return false if characters.include?("b") && characters.include?("o")
#   return false if characters.include?("x") && characters.include?("k")
#   return false if characters.include?("d") && characters.include?("q")
#   return false if characters.include?("c") && characters.include?("p")
#   return false if characters.include?("n") && characters.include?("a")
#   return false if characters.include?("g") && characters.include?("t")
#   return false if characters.include?("r") && characters.include?("e")
#   return false if characters.include?("f") && characters.include?("s")
#   return false if characters.include?("j") && characters.include?("w")
#   return false if characters.include?("h") && characters.include?("u")
#   return false if characters.include?("v") && characters.include?("i")
#   return false if characters.include?("l") && characters.include?("y")
#   return false if characters.include?("z") && characters.include?("m")
#   true
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true
