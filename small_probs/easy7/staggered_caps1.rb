def staggered_case(string)
  all_caps = string.upcase
  capital_characters = all_caps.chars
  index = 0
  
  loop do
    capital_characters[index].downcase! if index % 2 != 0
    index += 1
    break if index == capital_characters.size
  end

  capital_characters.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# could also use a string.chars.map_with_index |char, idx|
# if idx.even?    etc etc