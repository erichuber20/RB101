def center_of(string)
  center_index = string.size / 2

  if string.size.even?
    string[center_index - 1, 2]
  else
    string[center_index]
  end
end

p center_of('Erics')