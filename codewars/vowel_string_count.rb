# https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/ruby
# The vowel substrings in the word codewarriors are o,e,a,io. 
# The longest of these has a length of 2. 
# Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, 
# return the length of the longest vowel substring. Vowels are any of aeiou.

def solve(string)
  vowels = %w(a e i o u A E I O U)
  substrings = []
  (0..string.length).each do |i|
    (i..string.length).each do |ii|
      substrings << string[i..ii]
    end
  end
  vowel_substrings = substrings.select do |substring|
    substring.chars.all? do |char|
      vowels.include?(char)
    end
  end
lengths = []
vowel_substrings.each do |substring|
  lengths << substring.length
end
lengths.max
end 

p solve('codewarrior') == 2
p solve('suoidea') == 3
p solve('iiihoovaeaaaoougjyaw') == 8