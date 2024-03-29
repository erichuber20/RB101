def featured(number)
  next_number = number + 1

  loop do
    return "There is no possible number." if next_number >= 9_876_543_210
    break if next_number >= 9_876_543_210

    conditions = []
    conditions << true if next_number.odd?
    conditions << true if next_number % 7 == 0
    conditions << true if next_number.digits.uniq == next_number.digits
    break if conditions.count(true) == 3
    next_number += 1 
  end

  next_number
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements