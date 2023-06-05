=begin

https://www.codewars.com/kata/5c55ad8c9d76d41a62b4ede3/train/ruby
PROBLEM ---------

explicit req:
  count all the pairs in the given array
  input is an array of integers
  array can be empty or have 1 value - 0 pairs
  if there are more pairs of the same number, only count those pairs once [0,0,0,0] => 2 (2 pairs of 0's)
  numbers can be 0-1000 and array length can be 0-1000
implicit reqs:

inputs: array of integers
output: integer number representing the number of pairs present in the array


EXAMPLES ------------

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4


DATA -------------

arrays


MODELING ----------
    => initialize the new_number array to an empty array
      => initialize a pairs count variable to 0
        => iterate through the input array [1, 2, 5, 6, 5, 2] and for each element
          => check to see if element is in the new_number array
            => if it is in the new number array
              => add 1 to the pairs count and delete the integer from new_number array
            => if it is not, add that int to new_number array
            => do this for each element in input array
            => return the count of the pairs number

ALGORITHM -----------

initialize a pairs counter variable
initialize a new number array
iterate through the input array and for each element
  check if that element is in the new numbers array
    if it is - 
        add 1 to pairs counter
        delete that element from new_number array
    if it is not
        add that integer to new_numbers
return pairs count

=end

def pairs(array)
  pairs = 0
  new_numbers = []

  array.each do |int|
    if new_numbers.include?(int)
      pairs += 1
      new_numbers.delete(int)
    else
      new_numbers << int
    end
  end

  pairs

end

p pairs([1,2,5,6,5,2])
p pairs([1,2,2,20,6,20,2,6,2])
p pairs([0,0,0,0,0,0,0])
p pairs([1000, 1000])
p pairs([0])
p pairs([54])
