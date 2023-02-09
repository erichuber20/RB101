def reverse_array(array)
  front_index = 0
  last_index = -1
  while front_index < array.size / 2
    array[front_index], array[last_index] = array[last_index], array[front_index]
    front_index += 1
    last_index -= 1
  end
  array
end


p reverse_array([1,2,3,4])
p reverse_array([true, 8, 'hello', :Eric, 9834])
p reverse_array(%w(9, 8, 7, 6, 5, 4, 3, 2, 1))