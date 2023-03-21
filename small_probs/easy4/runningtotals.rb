=begin

PEDAC Template
==============



Problem
-------------------------------------------------

-  Inputs: array
-  Output: array with incremeneting sum

---

**Implicit Requirements:**
sum of all values up to and including the current element
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
  -  Inputs: [2,5,13]
  -  Output: [2,7,20]
-  Example 2
  -  Inputs: [14, 11, 7, 15, 20]
  -  Output: [14, 25, 32, 47, 67]

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: [3]
  -  Output: [3]

---




Data Structure
-----------------------------------------------
arrays




---

Algorithm
---------
initialize sum variable = 0
initialize output array = []
iterate through input array
  add each element to sum
  add sum to output array
return output array



Code
----





=end

def running_total(array)
  sum = 0
  output = []

  array.each do |int|
    sum += int
    output << sum
  end
  output
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []