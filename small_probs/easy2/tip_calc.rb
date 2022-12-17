def decimal_format(value)
  format("%.2f",(value))
end

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percent = gets.to_f

tip = (tip_percent * 0.01 * bill)
total = bill + tip

puts "The tip is $#{decimal_format(tip)}"
puts "The total is $#{decimal_format(total)}"