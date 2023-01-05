puts "Enter a noun: "
noun = gets.chomp

puts "Enter a verb: "
verb = gets.chomp

puts 'Enter an adjective: '
adjective = gets.chomp

puts 'Enter an adverb: '
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# if you wanted to create multiple sentences then this is a good solution
# within a 'madlibs' method put this below code at the end after getting user inputs

  # sentences = []
  # sentences << "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  # sentences << "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
  # sentences << "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."
 
  # puts sentences.sample