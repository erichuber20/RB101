answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# What is the output of the code?
# 34 bc += is non-mutating! which I think would be pass by value
# Pass by value passes a copy of the object answer into the method and leaves
# the original answer object unchanged
