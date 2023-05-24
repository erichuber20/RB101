=begin
(​https://www.codewars.com/kata/5842df8ccbd22792a4000245​)
6 kyu
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:
expanded_form(12); # Should return '10 + 2' expanded_form(42); # Should return '40 + 2' expanded_form(70304); # Should return '70000 + 300 + 4' NOTE: All numbers will be whole numbers greater than 0.
If you liked this kata, check out part 2!! 
=end

def expanded_form(int)
  multiplier = 10
  results = []

  loop do
    remainder = int % multiplier
    results << remainder if remainder != 0
    multiplier *= 10
    int -= remainder
    break if int == 0
  end

  results.reverse!
  integers = ('0'..'9').to_a
  results_string = ''

  for number in results
    results_string << number.to_s + ' + '
  end

  unless integers.include?(results_string[-1])
    characters = results_string.chars
    3.times do
      characters.delete_at(-1)
    end
    results_string = characters.join
  end

  results_string
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
