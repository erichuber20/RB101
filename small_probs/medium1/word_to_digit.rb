NUMBERS = {
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5,
  'six' => 6,
  'seven' => 7,
  'eight' => 8,
  'nine' => 9
}

def word_to_digit(string)
  words = string.split
  result = []
  
  words.each do |word|
    if NUMBERS.has_key?(word)
      result << NUMBERS[word]
    elsif NUMBERS.has_key?(word[0..-2])
      punctuation = word.chars.pop
      result << "#{NUMBERS[word[0..-2]]}#{punctuation}"
    else
      result << word
    end
  end

  result.join(" ")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'