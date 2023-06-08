=begin

https://www.codewars.com/kata/54d81488b981293527000c8f/train/ruby

PROBLEM ------------

inputs: array of integers and integer as a target sum
outputs: array of integers adding to target sum or nil

explicit req: 
  must iterate through in order of appearance in the original input array
  if two or more pairs add up to the target sum
      the pair with the lower second index will be returned
  negative and duplicate numbers will appear

implicit req:
  code should be quick and efficient (number can be over 10 million)
  

EXAMPLES -------------

sum_pairs([11, 3, 7, 5],         10)
#              ^--^      3 + 7 = 10
== [3, 7]


sum_pairs([4, 3, 2, 3, 4],         6)
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * the correct answer is the pair whose second value has the smallest index
== [4, 2]


sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
== None/nil/undefined (Based on the language)


sum_pairs([10, 5, 2, 3, 7, 5],         10)
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * the correct answer is the pair whose second value has the smallest index
== [3, 7]


DATA -------------------------

arrays


ALGORITHM ----------------------

iterate through the array and at each index (i)
    iterate through the array and at each index (ii)
    set the first element in a pair equal to the element at i
    set the second element in a pair equal to the element at ii
    check and see if the pair add to the target and add it to results array
return the results array if there is only one element otherwise
  for each of the results
    iterate through each array
      extract the element at index 1
        check the index of that element in the original array
          return the pair with the lowest index


=end


def sum_pairs(ints, target_sum)
  indices = Hash.new(0)

  (0..ints.size).each do |i|
    (i+1..ints.size-1).each do |ii|
      pair = [ints[i], ints[ii]]
      if pair.sum == target_sum
        indices[ii] = pair
      end
    end
  end

  return nil if indices.keys.size == 0
  indices[indices.keys.min]
end

# def sum_pairs(ints, target_sum)
#   results = []
#   indices = []

#   (0..ints.size).each do |i|
#     (i+1..ints.size-1).each do |ii|
#       pair = [ints[i], ints[ii]]

#       if pair.sum == target_sum
#         results << pair
#         indices << ii
#       end

#     end
#   end

#   return results[0] if results.size == 1

#   smallest_index = indices.min

#   final_pair = results.select do |pair|
#     pair[1] == ints[smallest_index]
#   end

#   final_pair[0]
# end

p sum_pairs([11,3,7,5], 10) == [3, 7]
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]
p sum_pairs([1, 2, 3, 4, 1, 0], 2) == [1, 1]