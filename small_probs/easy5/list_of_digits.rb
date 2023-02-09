def digit_list(integer)
  digit_array = []

  character_array = integer.to_s.chars
  character_array.each do |char|
    digit = char.to_i
    digit_array << digit
  end
  digit_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# Remember to use .map(&:to_i) to solve this easier rather than the block I used
# something.map(&:to_i) == something.map { |char| char.to_i }