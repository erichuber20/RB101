# write a xor method where it determines if exactly one element is truthy

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# this takes advantage of the !<some_object> syntax that makes
# an object the opposite of it boolean equivalent