def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# differences
# 1 returns a reference to the object passed in as the buffer argument
# 2 returns a new object
# 1 mutates the argument given by the buffer argument while the 2nd doesnt mutate its input_array argument
  # code that calls rolling_buff1 sees a modified array after the method returns while
  # rolling_buffer2 will not see any changes in the array
# 1 has a side effect so 2 is better probably