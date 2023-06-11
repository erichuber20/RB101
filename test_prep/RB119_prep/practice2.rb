# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

=begin

PROBLEM ------------

explicit: write a method
  inputs an array of integers
  return the lowest sum of 5 consecutive integers in the array
  return nil if input has less than 5 integers

implicit: integers can be negative
  

inputs: array of integers
Outputs: sum of lowest 5 integers in consecutive order

EXAMPLES ------------

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

DATA ------------

arrays

MODELING ------------

input: [55, 2, 6, 5, 1, 2, 9, 3, 5, 100] 
  => iterate through array with each integer as the start of a run of 5 
    => extract that integer and the 4 consecutive integers [55, 2, 6, 5, 1], [2, 6, 5, 1, 2] ...
      => sum those integers
        => 16

ALGORITHM ---------
  return nil if input array's size is less than 5
  initalize a results variable array
  establish a range from 0 to input array's size
  iterate through that range with each element representing a starting index in the array
  iterate through that index for to the size of the array to
  return that range of integers to results resulting in all subarrays
  select all the ranges that have 5 elements
  sum each of the selected arrays
  return the lowest sum

=end

def minimum_sum(integers)
  return nil if integers.size < 5
  sub_arrays = []

  (0..integers.size).each do |i|
    (i+1..integers.size).each do |ii|
      sub_arrays << integers[i..ii] if integers[i..ii].size == 5
    end
  end

  sub_arrays.map { |subarray| subarray.sum }.min
end



=begin
def minimum_sum(arr)
  return nil if arr.size < 5
  subarrays = []
  (0..arr.size).each do |i|
    (i+1..arr.size).each do |ii|
      subarrays << arr[i..ii]
    end
  end
  runs_of_5 = subarrays.select do |subarray|
    subarray.size == 5
  end
  runs_of_5.map { |result| result.sum }.min
end
=end


p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
