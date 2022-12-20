value = 1
loop do
  puts value
  value += 2
  break if value > 99
end

#further exploration
numbers = (1..99).to_a
odd_numbers = []
odds = numbers.select {|num| num.odd? }
odd_numbers << odds 
puts odd_numbers