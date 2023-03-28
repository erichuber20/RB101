def cleanup(string)
  string_with_spaces = string.gsub(/[^0-9a-z]/i, ' ')
  string_with_spaces.squeeze(' ')
end

p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '

=begin

refactored solution

def cleanup(string)
  clean_characters = ('a'..'z').to_a
  clean_array = []

  string.chars.each do |char|
    if clean_characters.include?(char)
      clean_array << char
    else
      clean_array << ' ' unless clean_array[-1] == ' '
    end
  end

  clean_array.join
end


=end

