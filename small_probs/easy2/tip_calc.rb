puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percent = gets.to_f

tip = ((tip_percent * 0.01 * bill)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"