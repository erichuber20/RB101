def solution(string, search_text)
  substrings = []
  count = 0
  (0..string.size).each do |i|
    (i..string.size).each do |ii|
      substrings << string[i..ii]
    end
  end
  
  substrings.each do |substring|
    count += 1 if substring == search_text
  end

  count
end
p solution('aa_bb_cc_dd_bb_e', 'bb')
p solution('aaabbbcccc', 'bbb')
p solution('abcdeb','b')
p solution('167671234567', '67')
