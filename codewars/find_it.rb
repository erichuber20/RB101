=begin

https://www.codewars.com/kata/54da5a58ea159efa38000836/solutions/ruby

=end

def find_it(integers)
  counts = Hash.new(0)
  integers.each do |int|
    counts[int] += 1
  end
  odd = counts.select { |key, value| value.odd? }
  odd.keys[0]
end

=begin
def find_it(seq)
  seq.each do |i|
    if seq.count(i) % 2 != 0
      return i
    end
  end
end
=end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,2,2,3,3,3,4,3,3,3,2,2,1]) == 4