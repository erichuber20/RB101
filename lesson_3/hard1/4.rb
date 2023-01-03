def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  return true
end


# added the return false unless statement to account for inputs that are not 4 elements like and IP address and therefore are not an IP address
# look up the addition of the return false unless statement on line 6
