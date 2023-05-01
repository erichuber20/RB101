def buy_fruit(fruit_array)
  result = []

  fruit_array.each do |fruit_amt|
    fruit_amt[1].times do
      result << fruit_amt[0]
    end
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]