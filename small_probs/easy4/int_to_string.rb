def integer_to_string(integer)
  array = integer.digits
  array.each { |x| x.to_s }
  array.join.reverse
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)