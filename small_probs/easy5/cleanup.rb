def cleanup(string)
  string_with_spaces = string.gsub(/[^0-9a-z]/i, ' ')
  string_with_spaces.squeeze(' ')
end

p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '
