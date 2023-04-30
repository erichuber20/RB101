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

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']