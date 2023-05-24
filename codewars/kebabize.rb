=begin
https://www.codewars.com/kata/57f8ff867a28db569e000c4a/train/ruby
Modify the kebabize function so that it converts a camel case string into a kebab case.
kebabize('camelsHaveThreeHumps') // camels-have-three-humps kebabize('camelsHave3Humps') // camels-have-humps
Notes:
the returned string should only contain lowercase letters
=end

def kebabize(string)
  alphabet = ('a'..'z').to_a
  characters = string.chars.select { |char| alphabet.include?(char.downcase)}
  kebabize = []
  characters.each_with_index do |char, index|
    kebabize << '-' if char == char.upcase && index != 0
    kebabize << char
  end

  kebabize.join.downcase
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string' 
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'