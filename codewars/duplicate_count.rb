=begin
  
https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/ruby

Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. 
  The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

  Example
  
  "abcde" -> 0  # no characters repeats more than once
  "aabbcde" -> 2  # 'a' and 'b'
  "aabBcde" -> 2  # 'a' occurs twice and 'b' twice (`b` and `B`)
  "indivisibility" -> 1  # 'i' occurs six times
  "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
  "aA11" -> 2  # 'a' and '1'
  "ABBA" -> 2  # 'A' and 'B' each occur twice

PROBLEM-------------

  inputs: string
  output: integer count

  explicit requirements:
    return a count
    case insensitive
    string contains numbers (upper and lowercase) and digits
    count how many instances of a letter or number appearing more than once in the string
  
  implicit requirements:
    anything more than 1 occurence is counted as 1 (ie if a letter appears 4 times, it is still 1 occurence and not 2)


EXAMPLES -------------

  "abcde" -> 0  # no characters repeats more than once
  "aabbcde" -> 2  # 'a' and 'b'
  "aabBcde" -> 2  # 'a' occurs twice and 'b' twice (`b` and `B`)
  "indivisibility" -> 1  # 'i' occurs six times
  "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
  "aA11" -> 2  # 'a' and '1'
  "ABBA" -> 2  # 'A' and 'B' each occur twice

DATA-----------

arrays
hashes

MODELING ----------------

=> "aabBcde" input
  => split into an array of characters ['a', 'a', 'b', 'B', ...]
  => downcase the characters
    => initialize a count hash letter_counts
      => iterate through the array of characters and for each elements 
          add each character to letter_counts as a key
          or
          add 1 to the value of that letter if it is already in letter_counts as a key
          letter_counts => {'a' => 2, 'b' => 2, ...}
      => count the number of values in letter_count that are greater than 1 and return
        2

ALGORITHM --------------

  downcase the input string
  create an array of all the characters in the input string as elements
  initialize a letter_count hash
  iterate through the array of downcased letters and digits
      if the character is not listed as a key in letter_count
          add that element to the hash and set the value to 1
      if the character is already listed as a key in letter_count
          increment the value associated with that key by 1
  iterate through letter_counts values and count the number of values that are greater than 1
  return that count

=end

def duplicate_count(string)
  characters = string.downcase.chars
  letter_counts = Hash.new(0)
  characters.each do |char|
    if letter_counts.keys.include?(char)
      letter_counts[char] += 1
    else
      letter_counts[char] = 1
    end
  end
  letter_counts.values.count { |value| value > 1 }
end

p duplicate_count('aabBcde')
p duplicate_count('indivisibility')
p duplicate_count('Indivisibilities')
p duplicate_count('aA11')