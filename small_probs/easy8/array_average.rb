=begin

PEDAC Template
==============



Problem
-------------------------------------------------

-  Inputs: array of integers
-  Output: average of integers in array (integer)

---

**Implicit Requirements:**
array will never be empty
numbers are always positive
results should be integer
cannot use array#sum method

---

**Clarifying Questions:**

1.
2.
3.

---




Examples / Test Cases / Edge Cases
----------------------------------------------------

**Examples:**

-  Example 1
  -  Inputs: [1, 6] 
  -  Output: 3
-  Example 2
  -  Inputs: [1, 5, 87, 45, 8, 8]
  -  Output: 25

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs:
  -  Output:

---




Data Structure
-----------------------------------------------
arrays




---

Algorithm
---------
initiate sum variable = 0
iterate through each element in array
add each element to sum
divide sum by the size of the array



Code
----

=end

def average(array)
  sum = 0
  array.each do |int|
    sum += int
  end

  sum / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40