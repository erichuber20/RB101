famous_words = "seven years ago..."

#show two ways to put the exepected "Four score and" in front of it

famous_words_array = famous_words.split
famous_words_array.unshift('Four', 'score', 'and')
puts famous_words_array.join(' ')

#second option
puts "Four score and " + famous_words

#other options on LS solutions that are cleaner than mine
famous_words.prepend("Four score and ")