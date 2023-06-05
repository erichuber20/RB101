=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.


PROBLEM -----------

find all the multiples between 0 and a given number of 3 or 5
compute the sum of these multiples

explicit: 
  must be natural number inputted
  do not include the given number in the count of multiples
  numbers divisible by 3 and 5 should only be counted once

implicit:
  a multiple is evenly divisible with no remainder by the divisor

EXAMPLES ----------

10 => 3, 5, 6, 9 => 23


DATA -------------

arrays

MODELING---------------

establish a range from 0 to inputted number (0...20)
    iterate through that range and for each element
      place into a multiples array if it is divisble by 3 or 5 [3, 5, 6, 9, 10, 12, 15, 15, 18]
        take out duplicate values [3, 5, 6, 9, 10, 12, 15, 18]
          sum the array => 78

ALGORITHM -------------

initialize a multiples array to an empty array
initialize a range object from 0 to the input number exlcuding the input number from the range
iterate through the range of numbers and for each element, select that number and place into multiples array if it is either
    divisible by 3
    divisible by 5
remove duplicate values from multiples array
sum multiples array
  
=end

def multiples_3_5_sum(integer)
  multiples = (0...integer).select do |int|
                int % 3 == 0 || int % 5 == 0
              end
  multiples.uniq.sum
end

p multiples_3_5_sum(20)
p multiples_3_5_sum(10)