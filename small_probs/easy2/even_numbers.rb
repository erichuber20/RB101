value = 2
loop do
  puts value
  value += 2
  break if value > 99
end

#further exploration
numbers = (1..99).to_a
even_numbers = []
evens = numbers.select {|num| num.even? }
even_numbers << evens 
puts even_numbers

# LS solution
# value = 1
# while value <= 99
#   puts value if value.even?
#   value += 1
# end