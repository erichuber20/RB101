puts "Please write word or multiple words:"
answer = gets.chomp
answer_array = answer.chars
answer_array.delete(" ")

puts "There are #{answer_array.length} characters in \"#{answer}\"."
