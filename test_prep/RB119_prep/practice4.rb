# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

=begin

PROBLEM --------

explicit req:
  input is an array of integers
  returns two integers closest in value

implicit req:
  returned integers should be in an array
  if there is a tie, the first pair should be selected/returned

inputs: array of integers
outputs: array of two integers that are closest in value

EXAMPLES ---------

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

DATA ----------

arrays

MODELING ----------

=> iterate through input array and make all possible pairs into an array of subarray pairs : [5, 25, 15, 11, 20] => [[5, 25], [5, 15], ... [11, 20]]
    => iterate through the subarrays and subtract index 0 from index 1 and return the absolute value => [20, 10, 9]
      =>sort the subarrays by absolute value difference
        => select the subarray with the smallest absolute value difference(at index 0) [15, 11] => 4
          => return that subarray => [15, 11]

ALGORITHM ---------

initialize an empty array varaible named subarrays
iterate through a range of numbers from 0 to the size of the array to reference indices
    at each of these indices, iterate through a range starting at that index to the size of the array to reference a second index
      add the two elements at the two indices to a subarray that will be added to subarrays
sort the subarrays in order from least absolute value difference to greatest
return the subarray at index 0

=end

def closest_numbers(array)
  subarrays = []

  (0..array.size - 1).each do |i|
    (i + 1..array.size - 1).each do |ii|
      subarrays << [array[i], array[ii]]
    end
  end

  subarrays.sort_by! do |subarray|
    (subarray[0] - subarray[1]).abs
  end

  subarrays[0]

end
  
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
