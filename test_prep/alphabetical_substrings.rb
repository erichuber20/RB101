# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.


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
require 'pry'
def substring(string)
  substrings = []

  (0..substrings.length).each do |index|
    (index...string.length).each do |end_index|
      substrings << string[index..end_index]
    end
  end
  substrings
end

def longest(string)
  substrings = substring(string)
  alphabetical_substrings = []
  longest_substring = ''

  substrings.each do |substring|
    alphabetical_substrings << substring if substring.chars.sort == substring.chars
  end

  alphabetical_substrings.each do |alphabetical_substring|
    longest_substring = alphabetical_substring if alphabetical_substring.length > longest_substring.length
  end
  
  longest_substring
end

# p substring('asd')
# p longest('asd') == 'as'
p longest('nab') #== 'ab'
# p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') #== 'aaaabbbbctt'
p longest('asdfbyfgiklag') #== 'fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'