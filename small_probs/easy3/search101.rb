numbers = []

puts "Enter the 1st number: "
first = gets.to_i
numbers << first

puts "Enter the 2nd number: "
second = gets.to_i
numbers << second

puts "Enter the 3rd number: "
third = gets.to_i
numbers << third

puts "Enter the 4th number: "
fourth = gets.to_i
numbers << fourth

puts "Enter the 5th number: "
fifth = gets.to_i
numbers << fifth

puts "Enter the last number: "
last = gets.to_i

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else 
  puts "The number #{last} does not appears in #{numbers}."
end

