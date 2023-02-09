def word_sizes(string)
  word_sizes_hash = Hash.new(0)

  string.split.each do |word|
    word_sizes_hash[word.size] += 1
  end
  word_sizes_hash
end

p word_sizes("Hello this is Eric Matthew Huber")