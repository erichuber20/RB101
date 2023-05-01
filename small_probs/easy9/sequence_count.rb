def sequence(int1, int2)
  results = []
  next_value = int2

  int1.times do
    results << next_value
    next_value += int2
  end

  results
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []