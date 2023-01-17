def ascii_value(string)
  total = 0

  string.each_char do |char|
    total += char.ord
  end
  total
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('') 