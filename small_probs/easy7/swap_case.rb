def swapcase(string)
  characters = string.chars

  characters.each do |char|
    if char == char.upcase
      char.downcase!
    elsif char == char.downcase
      char.upcase!
    else
      nil
    end
  end
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'