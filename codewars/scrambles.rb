# https://www.codewars.com/kata/55c04b4cc56a697bb0000048/train/ruby

def scramble(string1, string2)
  available_characters = string1.chars
  string2.chars.map { |char| available_characters.include?(char) }.all?(true)
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false