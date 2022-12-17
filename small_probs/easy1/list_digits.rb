# my solution after study
def digit_list(integer)
  integer.to_s.chars.map(&:to_i)
end

p digit_list(6758645)

#LS brute force solution
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

p digit_list(886645)