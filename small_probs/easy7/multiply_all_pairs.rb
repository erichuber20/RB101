def multiply_all_pairs(array1, array2)
  products = []
  
  array1.each do |num1|
    array2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]