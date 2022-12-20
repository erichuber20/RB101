puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retire_age = gets.to_i

current_year = Time.now.year
years_left = retire_age - age
retirement_year = years_left + current_year

puts "It is #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years to go!"