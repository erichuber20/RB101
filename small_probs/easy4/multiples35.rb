def multisum(number)
  multiples = []
  while number > 0
    multiples << number if number % 3 == 0 || number % 5 == 0
    number -= 1
  end
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# further exploration
# could use multiples.inject(:+) instead