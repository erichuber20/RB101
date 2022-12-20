puts "What is your name?"
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name.chop.upcase}. WHY ARE YOU SCREAMING?"
else
  puts "Hello, #{name}."
end

#LS solution
# utilized indexing the string like you would in an array

##print 'What is your name? '
#name = gets.chomp

#if name[-1] == '!'
  #name = name.chop
 # puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
#else
 # puts "Hello #{name}."
#end