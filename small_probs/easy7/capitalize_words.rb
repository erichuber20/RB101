def word_cap(string)
  words = string.split(' ')

  words.each do |word|
    word.capitalize!
  end
  capitalized_string = words.join(' ')
end

  p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# LS Solution
def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end