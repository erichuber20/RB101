# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".
=begin

PEDAC Template
==============



--------------------------- Problem ---------------------------

- given a input string, return the same string but:
    every 2nd character in every 3rd word is uppercased
    ignore non-alphabetic characters - they should remain the same

-  Inputs: string
-  Output: string with weird case



**Implicit Requirements:**

- if there is no 3rd word, or no 2nd character within that word, do not change the case
- letters that are already uppercased should remain that way regardless of where they are located



--------------------------- Examples ---------------------------

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'




--------------------------- Data Structure---------------------------

strings
arrays



--------------------------- Modeling ---------------------------

take an input string and split it into an array of words 'Lorem Ipsum is simply dummy text of the printing' => %w(Lorem Ipsum is simply dummy text of the printing)
  Iterate through the words array and for each iteration:
    split the current word into an array of characters
    if the index is odd, uppercase! that characters
    return the mutated word to the words array after each iteration
join the words in words array and seperate all by a space and return that string




--------------------------- Algorithm ---------------------------




=end

# def to_weird_case(input_string)
#   words = input_string.split
#   results = []
#   words.each_with_index do |word, i|
#     if (i+1) % 3 == 0
#       index = 0
#       loop do
#         word[index] = word[index].upcase if index.odd?
#         index += 1
#         break if index == word.size
#       end
#     end
#     word
#   end
#   words.join(' ')
# end

def to_weird_case(string)    
  result = string.split.map.with_index do |word, i|
    if word.length <=1
      word
    else

      if (i + 1) % 3 == 0
        characters = word.chars
        (1..characters.length-1).step(2) do |i|
          characters[i].upcase!
        end
        characters.join
      else
        word
      end

    end
  end
  result.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'