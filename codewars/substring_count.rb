# https://www.codewars.com/kata/5168b125faced29f66000005/train/ruby

def solution(string, search_text)
  substrings = ''
  (0..string.size).each do |i|
    (i..string.size).each do |ii|
      substrings << string[i..ii]
    end
  end
  
  substrings.include?(search_text)
end
p solution('aa_bb_cc_dd_bb_e', 'bb')
p solution('aaabbbcccc', 'bbb')