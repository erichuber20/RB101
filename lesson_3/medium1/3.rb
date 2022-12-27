# def factors(number)
  # divisor = number
  # factors = []
  # begin
    # factors << number / divisor if number % divisor == 0
    # divisor -= 1
  # end until divisor == 0
  # factors
# end

# How can we modify the above code to accomodate 0 and negative numbers?

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Bonus : number % divisor == 0 checks if it is integer number (necessary for determining factors)
# Bonus 2 the last line of the method def
  # factors is there to return factors otherwise it would return the last line previously stated and not the array like we want
  
