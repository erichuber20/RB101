puts "Enter the first number: "
first = gets.chomp.to_i

puts "Enter the second number: "
second = gets.chomp.to_i

addition = first + second
subtraction = first - second
multiplication = first * second
division = first / second
remainder = first % second
square = first ** second

puts "#{first} + #{second} = #{addition}"
puts "#{first} - #{second} = #{subtraction}"
puts "#{first} * #{second} = #{multiplication}"
puts "#{first} / #{second} = #{division}"
puts "#{first} % #{second} = #{remainder}"
puts "#{first} ** #{second} = #{square}"