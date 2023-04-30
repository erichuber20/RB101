# https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d/train/ruby

def letter_count(str)
  characters = str.chars
  letter_counts = Hash.new

  characters.each do |char|
    if letter_counts.keys.include?(char.to_sym)
      letter_counts[char.to_sym] += 1
    else
      letter_counts[char.to_sym] = 1
    end
  end

   letter_counts
end

p letter_count("codewars")
p letter_count("activity")
p letter_count("arithmetics")