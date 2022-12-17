puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

area_meters = length * width
area_feet = (length * 10.7639) * (width * 10.7639)

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."

# LS Solution accounting for floats and rounding to 2 decimal places
#SQMETERS_TO_SQFEET = 10.7639

#puts '==> Enter the length of the room in meters: '
#length = gets.to_f

#puts '==> Enter the width of the room in meters: '
#width = gets.to_f

#square_meters = (length * width).round(2)
#square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

#puts "The area of the room is #{square_meters} " + \
     #"square meters (#{square_feet} square feet)."