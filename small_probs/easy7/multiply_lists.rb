def multiply_list(array1, array2)
  results = []
  index = 0

  loop do
    results << (array1[index].to_i * array2[index].to_i)
    index += 1
    break if results.size == array1.size
  end
  results
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]