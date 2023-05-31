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

PROBLEM ----------

explicit:
  input is a string
  output is a string
  for every 3rd word, every 2nd character should be uppercased
    other characters should remain the same
  
implicit:
    if there is not second character, do not uppercase the 1st, skip that word and the counting starts over as it normally would
    
inputs: string
outputs: string with every other character in the third word uppercased

EXAMPLES ------------

  p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

DATA ----------

strings
arrays

MODELING ----------

=> split input string into array of words 'Lorem Ipsum is simply dummy text of the printing'
  => ["Lorem", "Ipsum", "is", "simply", "dummy", "text", "of", "the", "printing"]
    => iterate through words with an index
      => if index is evenly divisible by 3
        => index assign an upcased character to every character at an even index
          => for each character that is at an odd index, uppercase 'iS' 'tExT' ...
      => place each word into the results array
          => join strings together with a space between and return

ALGORITHM ---------

  split input string into an array of strings (words)
    initailze a results empty array
      iterate through words
       if index is divisible by 3
        initialize an index variable
          start a loop
            if the index for the character is odd (starting at index 0)
              uppercase that character
      place word into results array (unchanged and case changed)
        join array with space between and return that string
=end

def to_weird_case(string)
  results = []
  words = string.split
  
  words.each_with_index do |word, i|

    if (i + 1) % 3 == 0
      index = 0
      loop do
        word[index] = word[index].upcase if index.odd?
        index += 1
        break if index == word.length
      end
      results << word
    else
      results << word
    end
  end
  results.join(' ')
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'