def leading_substrings(string)
  result = []
  counter = 1

  loop do
    result << string[0, counter]
    counter += 1
    break if result.size == string.length
  end

  result
end

def substrings(string)
  results = []
  counter = 0

  loop do
    results << leading_substrings(string[counter..-1])
    counter += 1
    break if counter == string.size
  end

  results.flatten
end

def palindromes(string)
  palindrome_strings = []
  substrings = substrings(string)

  substrings.each do |sub|
    palindrome_strings << sub if sub == sub.reverse && sub.length > 1
  end

  palindrome_strings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]