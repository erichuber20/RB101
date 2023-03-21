array = ['a', 'b', 'c']
# colon_array = []

array.each do |letter|
  colon = ":"
  colon_array = []
  colon_array << letter + colon
end

puts colon_array