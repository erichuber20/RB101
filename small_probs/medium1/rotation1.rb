def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
p rotate_array(['a']) #== ['a']
p 
p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# my original solution

# def rotate_array(array)
#   array_clone = array.clone
#   array_clone.delete_at(0)
#   array_clone << array[0]
#   array_clone
# end



# my other good solution

# def rotate_array(arr)
#   arr.push(arr.shift)
# end

