# https://www.codewars.com/kata/59da47fa27ee00a8b90000b4/ruby
# Given a string of integers, return the number of odd-numbered substrings that can be formed.

# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

# solve("1341") = 7. See test cases for more examples.

=begin

Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.


PEDAC Template
==============



--------------------------- Problem ---------------------------

- determine how many odd numbered substrings can be formed form a given string

-  Inputs: string
-  Output: integer representing a count



**Implicit Requirements:**

- 



--------------------------- Examples ---------------------------

solve("1341"),7)
solve("1357"),10)
solve("13471"),12)
solve("134721"),13)
solve("1347231"),20)
solve("13472315"),28)




--------------------------- Data Structure---------------------------

arrays 


--------------------------- Modeling ---------------------------

string '1341' create all the substrings that are possible into a substrings array => ['1', '13', '134', ... ]
substrings count the number of substrings that are odd by converting each substring to_i and calling #odd?
  => substrings.count { |substring| substring.to_i.odd? }
return that count




--------------------------- Algorithm ---------------------------

create substrings of the given string and place into a substrings array
count the number of substrings that when converted to an integer are odd
return the count



=end

def solve(string)
  substrings = []

  (0..string.length).each do |i|
    (i..string.length - 1).each do |ii|
      substrings << string[i..ii] if string[i..ii].to_i.odd?
    end
  end
  substrings.size
end

# OLD SOLUTION

# def solve(string)
#   substrings = []

#   (0..string.size).each do |i|
#     (i..string.size-1).each do |ii|
#       substrings << string[i..ii]
#     end
#   end
#   integers = substrings.map { |substring| substring.to_i }
#   odds = integers.select {|int| int.odd? }
#   odds.size
# end

# p solve('13471')