a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# predict the outcome
# all same object id
# bc integers are immutable
# there can only be 1 integer 1 object