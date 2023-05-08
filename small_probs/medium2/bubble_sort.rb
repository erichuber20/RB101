def bubble_sort!(array)  
  counter = 0

  loop do
    index = 0
    loop do
      array[index], array[index + 1] = array[index + 1], array[index]  if array[index] > array[index + 1]
      index += 1
      break if index == array.size - 1
    end
    counter += 1
    break if counter == array.size - 1
  end
  array
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)