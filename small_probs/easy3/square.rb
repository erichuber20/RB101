def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num, exponent)
  num1 = num
  while exponent > 1 do
    num = multiply(num1, num)
    exponent -= 1
  end
  num
end

p power(5, 2)
p power(3, 3)
p 5**2
