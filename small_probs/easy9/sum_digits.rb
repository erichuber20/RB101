def sum(integer)
  integer.digits.sum
end

p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45