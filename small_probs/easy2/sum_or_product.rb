puts "Please enter an integer greater tan 0: "
integer = gets.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

array = (1..integer).to_a
sum = array.sum
product = array.inject(:*)

case
when operator == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
when operator == 'p'
  puts "The sum of the integers between 1 and #{integer} is #{product}."
else
  puts "Unkown operation."
end
