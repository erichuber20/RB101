# https://www.codewars.com/kata/53a452dd0064085711001205/train/ruby

def group_and_count(input)
  return nil if input == nil || input.empty?
  counts = Hash.new(0)

  input.each do |int|
    counts[int] += 1
  end
  counts
end

p group_and_count([0,1,1,0]) == {0=>2, 1=>2}