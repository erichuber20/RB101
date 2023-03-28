def swap_characters(word)
  word[0], word[-1] = word[-1], word[0]
end

def swap(string)
  string_array = string.split
  string_array.each do |word|
    swap_characters(word)
  end
  string_array.join(' ')
end

p swap('Hello it is Eric')


=begin

my solution later on

def swap(string)
  array = string.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end

  array.join(' ')
end

=end


