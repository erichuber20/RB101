=begin
(​https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby​)
6 kyu
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation. 
=end

def panagram?(string)
  letters = ('a'..'z').to_a
  letter_counts = Hash.new(0)
  characters = string.downcase.chars.select { |char| letters.include?(char)}
  characters.each do |char|
    letter_counts[char] += 1
  end

  letter_counts.values.all? { |count| count >= 1 } && letter_counts.values.size == 26
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false

# OTHER REFACTORED SOLUTION THAT IS ALSO GOOD BUT DOESNT ACCOUNT FOR NON ALPHANUMERIC CHARACTERS

def panagram?(string)
  ('a'..'z').map { |letter| string.downcase.include?(letter) }.all?(true)
end

def panagram?(string)
  uniq_chars = []
  characters = string.upcase!.chars
  characters.select! { |char| ('A'..'Z').include?(char) }

  characters.each do |char|
    next if uniq_chars.include?(char)
    uniq_chars << char
  end
  uniq_chars.size == 26
end
