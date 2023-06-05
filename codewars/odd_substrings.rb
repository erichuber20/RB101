# https://www.codewars.com/kata/59da47fa27ee00a8b90000b4/ruby
# Given a string of integers, return the number of odd-numbered substrings that can be formed.

# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

# solve("1341") = 7. See test cases for more examples.

def solve(string)
  substrings = []

  (0..string.size).each do |i|
    (i..string.size-1).each do |ii|
      substrings << string[i..ii]
    end
  end
  integers = substrings.map { |substring| substring.to_i }
  odds = integers.select {|int| int.odd? }
  odds.size
end

p solve('13471')