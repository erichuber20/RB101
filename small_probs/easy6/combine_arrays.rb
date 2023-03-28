def merge(array1, array2)
  array1 += array2
  array1.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# without using #uniq method
# def merge2(array1, array2)
# all_elements = array1 + array2
# unique_array = []
# 
# all_elements.each do |element|
  # unique_array << element unless unique_array.include?(element)
# end
# unique_array
# end