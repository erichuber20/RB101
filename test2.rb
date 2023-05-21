

# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20




# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

=begin
PROBLEM-----------
  determine the longest substring within a given string that is in alphabetical order

  explicit req:
inputs are only lowercase letters
inputs are at least one letter long
if there are multiple solutions, just return the first

  implicit req:
no spaces or special characters
no uppercase


EXAMPLES ---------
'asd' == 'as'
'abcdeapbcdef' == 'abcde'
'z' == 'z'
'zyba' == 'z'

DATA -----------
arrays
strings


ALGORITHM -------------

take the input string and split it into an array of characters
initialize an array of substrings to an empty array

iterate through that array of characters and determine if the character at the next index is in alphabetical order
  add that character to the substrings array
continue iteration until the character at the next index is not in alphabetical order

Determine which substring is the longest 
  iterate through substring array and return the substring that has the greatest length



=end

def longest(string)
  characters = string.chars
  substrings = []

  characters.each_with_index do |char|

end