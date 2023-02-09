def reverse_array2(array)
  new_array = []
  index = -1
  final_index = (array.size) * -1

  loop do
    new_array << array[index]
    index -= 1
    break if index < final_index
  end
  new_array
end

p reverse_array2([1,2,3,4])
p reverse_array2([true, 8, 'hello', :Eric, 9834])
p reverse_array2(%w(9, 8, 7, 6, 5, 4, 3, 2, 1))