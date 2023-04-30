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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
