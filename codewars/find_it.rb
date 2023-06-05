=begin

https://www.codewars.com/kata/54da5a58ea159efa38000836/solutions/ruby

=end

def find_it(array)
  number_counts = Hash.new(0)
  array.each do |digit|
    if number_counts.keys.include?(digit)
      number_counts[digit] += 1
    else
      number_counts[digit] = 1
    end
  end
  odd_value = number_counts.select { |key, value| return key if value % 2 != 0 }
  odd_value
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,2,2,3,3,3,4,3,3,3,2,2,1]) == 4