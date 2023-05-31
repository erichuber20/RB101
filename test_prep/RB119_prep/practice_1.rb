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