def interleave(array1, array2)
  final_index = array1.size
  index = 0
  interleaved_array = []

  loop do
    interleaved_array << array1[index]
    interleaved_array << array2[index]
    index += 1
    break if index == final_index
  end
  
  interleaved_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']