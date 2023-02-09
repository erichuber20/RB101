def crunch(string)
  characters = string.chars
  crunch_text = []
  characters.each do |char|
    if char == crunch_text[-1]
      crunch_text.delete_at(-1)
      crunch_text << char
    else
      crunch_text << char
    end
  end
  crunch_text.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
  