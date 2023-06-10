# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

=begin

PROBLEM -------------

Given an array of integers
count how many integers within that array are smaller than each number
return in an array
only account for unique values

explicit: given array of integers
  return the count of each integer that is smaller than the current element in an array
  account for unique values only
  return an array

implicit: 
  equal does not mean less

inputs: array of integers
outputs: array of integers

EXAMPLES -----------

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

DATA ---------

arrays

MODEL ---------

iterate through input array with each element: [8,1,2,2,3]
  element 8, count how many of the integers in the unique array [8,1,2,3] are smaller than 8
    return count on each iteration and place into new array [3]

ALGORITHM ---------

initialize results array to an empty array
initialize unique array from input array with only unique values present
iterate through input array with each individual element
iterate through unique array with each element compared to the element selected in the input array
  compare element from input array to element in unique array to determine if it is less than

  count the total number of elements that are less
  return that count into new results array
return results array

=end

def smaller_numbers_than_current(input_array)
  unique_array = input_array.uniq

  results = input_array.map do |int|
    unique_array.count do |uniq_int|
      int > uniq_int
    end
  end
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]


=begin


ALTERNATIVE SOLUTION!!!!!!!!!!!!!!!!!!!!!

PEDAC Template
==============



Problem -------------------------------------------------

- for a given array, return an array of counts for each integer
- the counts should represent how many integers are smaller than the given element in that input array
- values should only be counted once if there are duplicates

-  Inputs: array of integers
-  Output: array of integers (counts)



**Implicit Requirements:**

- if two numbers are equal, that does not count as less than
- output array may or may not be the same size as the input array




Examples ----------------------------------------------------

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]




Data Structure -------------------------------------------------

arrays of integers



Modeling -------------------------------------------------------

Given and input array => [8,1,2,2,3]
  iterate through the array's values => [8, 1, 2, 2, 3] and for each iteration:
    compare the current element to all each other unique elements in the input array 8 <=> 1, 8 <=> 2, ...
      determine if the current element (8) is less than or greater than than the other elements (1,2,3)
        count how many elements are less than the current element
          push that count to an output/results array




Algorithm ------------------------------------------------------

initialize a results array to an empty array
iterate through input array and for each iteration
  compare the current element to each other element in a uniq value array of the input array
    determine if the current value is greater than the uniq value
    count how many elements the current value is greater than
    push that count to results
    repeat for each element in the input array
return the results array



=end

def smaller_numbers_than_current(input_array)
  results = []

  input_array.each do |current_int|
    count = 0
    input_array.uniq.each do |uniq_int|
      count += 1 if current_int > uniq_int
    end
    results << count
  end
  results
end