def sum(integer)
  digits = []
  
  string_digits = integer.to_s.chars
  string_digits.each do |digit|
    digit.to_i
    digits << digit
  end

  digits.map!(&:to_i)
  digits.sum
end

p sum(6759)
