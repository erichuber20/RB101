=begin

PEDAC Template
==============



Problem
-------------------------------------------------

-  Inputs: string
-  Output: mutated string

---

**Implicit Requirements:**
return same string object
inputs contains one or more words in the string
each word in the string that contains 5 or more characters is reversed
words with less than 5 characters are not reversed
spaces inputted are also outputted
case of characters is maintained
---

**Clarifying Questions:**

1. >= 5 or > 5?
2. input validity?
3.

---




Examples / Test Cases / Edge Cases
----------------------------------------------------

**Examples:**

-  Example 1
  -  Inputs: 'Professional'
  -  Output: 'lanoisseforP'
-  Example 2
  -  Inputs: 'Walk around the block'
  -  Output: 'Walk dnuora the kcolb'

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 'Launch School'
  -  Output: 'hcnuaL loohcS'

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: ''
  -  Output: ''

---




Data Structure
-----------------------------------------------
strings
arrays




---

Algorithm
---------
split string into array of word(s)
reverse characters in words if words have 5 or more characters
join array with words seperated by spaces to return string



Code
----





=end

def reverse_words(string)
  words = string.split

  words.each do |word|
    word.reverse! if word.length >= 5
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS