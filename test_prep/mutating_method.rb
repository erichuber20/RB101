def quiet_down(string)
  puts string.delete_suffix!('!') if string[-1] == '!'
end

words = 'This is a test!'

puts words
puts words.object_id
quiet_down(words)
puts words
puts words.object_id