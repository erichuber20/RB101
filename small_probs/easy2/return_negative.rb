def negative(number)
  number.negative? || number == 0 ? number : number * -1
end
p negative(-5)
p negative(0)
p negative(7)