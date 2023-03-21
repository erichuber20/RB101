def volume_up(string)
  puts string
  puts string.object_id

  string << '!!!!'

  puts string
  puts string.object_id
end

words = 'Hello, World'

volume_up(words)


def volume_up_2(string)
  puts string
  puts string.object_id
  string = string + '!!!!'
  puts string
  puts object_id
end

phrase = 'This is a test'

volume_up_2(phrase)