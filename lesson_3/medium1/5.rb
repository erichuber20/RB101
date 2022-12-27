limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# results in an error, why? How to fix?
# limit variable needs to be defined inside the method definition
# fib is a method so it doesn't have access to any local variables outside of its scope