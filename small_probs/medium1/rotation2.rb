def rotate_rightmost_digits(integer, digit)
  digits = integer.digits.reverse
  rotated_digit = digits[-digit]
  digits.delete_at(-digit)
  digits.push(rotated_digit).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917