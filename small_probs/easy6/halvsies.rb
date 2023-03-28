def halvsies(array)
  array.size % 2 == 0 ? middle_index = ((array.size / 2) - 1) : middle_index = ((array.size / 2))
  nested_array = []
  array1 = array[0..(middle_index)]
  array2 = array[(middle_index + 1)..array.size]
  nested_array << array1
  nested_array << array2
  nested_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

#further exploration
# The LS solution divides arr.size by 2.0 instead of just 2 because dividing an integer by an integer will only produce a whole number, e.g. 3/2 = 1, not 2.
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

# my other solution
def halvsies(array)
  new_array = []
  if array.size.even?
    new_array << array.slice(0, array.size/2)
    new_array << array.slice(array.size/2, array.size/2)
  else
    new_array << array.slice(0, (array.size/2) + 1)
    new_array << array.slice(array.size/2 + 1, array.size/2)
  end
  new_array
end