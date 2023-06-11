# https://www.codewars.com/kata/5679aa472b8f57fb8c000047/ruby
def find_even_index(arr)
  index = []
  arr.each_with_index do |int, i|
    index << i if arr[0...i].sum == arr[i+1...arr.size].sum
  end
  return -1 if index.empty?
  index[0]
end

p find_even_index([1,2,3,4,3,2,1])