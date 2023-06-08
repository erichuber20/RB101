# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

# p least_common_char("Hello World") #== "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
# p least_common_char("Mississippi") #== "m"
# p least_common_char("Happy birthday!") #== ' '
# p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".

=begin

PEDAC Template
==============

Problem -------------------------------------------------

- return the character from a given string that occurs the least number of times in that string
- case does not matter, a and A are counted the same
- if there is a tie, return the character that occurs first when reading left to right


-  Inputs: string of characters
-  Output: 1 character



**Implicit Requirements:**

- 


**Clarifying Questions:**

1. Should I return the character in a certain case? Case insensitive?
2.
3.




Examples ----------------------------------------------------


# p least_common_char("Hello World") #== "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
# p least_common_char("Mississippi") #== "m"
# p least_common_char("Happy birthday!") #== ' '
# p least_common_char("aaaaaAAAA") #== 'a'



Data Structure -------------------------------------------------


arrays


Modeling -------------------------------------------------------

split string into characters array
initialize a new hash counts
iterate through characters and for each character
  add 1 to the value for the key that is equal to character
find the key that has the smallest_value
return counts with the reference to the smallest_value key



Algorithm ------------------------------------------------------




=end

def least_common_char(string)
  characters = string.downcase!.chars
  counts = Hash.new(0)
  characters.each do |char|
    counts[char] += 1
  end

  counts.key(counts.values.min)
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'
