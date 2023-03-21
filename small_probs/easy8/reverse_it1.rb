=begin

PEDAC Template
==============



Problem
-------------------------------------------------

-  Inputs: string
-  Output: string with words in reversed order

---

**Implicit Requirements:**
must return a new string
string must be in reverse order for multiple words
any amount of spaces results in an empty string
capitalization is maintained in new string

---

**Clarifying Questions:**

1. Do we have to check for validity of inputs?
2.
3.

---




Examples / Test Cases / Edge Cases
----------------------------------------------------

**Examples:**

-  Example 1
  -  Inputs: 'Hello World'
  -  Output: 'World Hello'
-  Example 2
  -  Inputs: 'Reverse these words'
  -  Output: 'words these Reverse'

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 'This is a test'
  -  Output: 'test a is This'

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: '   '
  -  Output: ''

---




Data Structure
-----------------------------------------------
strings
arrays




---

Algorithm
---------
return '' if string has 1+ spaces
split string into array of words
reverse order of elements/words in array
join array and seperate by spaces


Code
----





=end

def reverse_sentence(string)
  words = string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''