def sequence(int)
  integers = []
  int.times do |i|
    integers << i + 1
  end
  integers
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# def sequence(int)
#   (1..int).to_a
# end