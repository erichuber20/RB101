=begin

PEDAC Template
==============



Problem
-------------------------------------------------

-  Inputs: integer
-  Output: integer doubled or returned as is

---

**Implicit Requirements:**
if integer is a double double, return the number as is
  if the integer is not a double double return the number * 2
---

**Clarifying Questions:**

1. What is a double double?
2. How do we handle integers with an odd number of digits? Is the middle digit ignored?
3.

---




Examples / Test Cases / Edge Cases
----------------------------------------------------

**Examples:**

-  Example 1
  -  Inputs: 37
  -  Output: 74
-  Example 2
  -  Inputs: 7676
  -  Output: 7676

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 334433
  -  Output: 668866

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 123_456_789
  -  Output: 123_456_789

---




Data Structure
-----------------------------------------------

integers, strings, arrays



---

Algorithm
---------
convert integer into string
set middle character equal to half of the string length

determine if string has even or add number of digits/characters
if odd number of digits
  convert string to integer and return it multiplied by 2
if even number of digits,
  slice the string into half based off middle character
  determine if the two halves are equivalent
  if they are equivalent,
    join them together, convert string to integer
    return integer



Code
----





=end
require 'pry'
def twice(integer)
  string = integer.to_s
  middle_char = (string.length) / 2

  if string.length.odd?
    integer * 2
  else
    first_half = string[0, (middle_char) ]
    second_half = string[middle_char, (string.length)/ 2]
    if first_half == second_half
      integer
    else
      integer * 2
    end
  end
end

p twice(37) == 74
p twice(44) == 44 ####
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103 ####
p twice(3333) == 3333 ####
p twice(7676) == 7676 ####
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789 ####
p twice(5) == 10