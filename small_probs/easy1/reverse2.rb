#declare words array
#split string into an array of words
# iterate through each word in array and reverse letters if size >= 5
# add each word element into declared word array
# join word array together to make each element seperated by a space
# print

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words("The Iowa Hawkeyes are the greatest team ever")
