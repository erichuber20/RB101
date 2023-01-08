# incomplete

def running_total(array)
  running_total_array = []
  array.map |number|
    running_total += number
    running_total_array << running_total
  end


p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])