def pairs(arr)
  new_array = []
  pairs_count = 0
  arr.each do |int|
    if new_array.include?(int)
      pairs_count += 1
      new_array.delete(int)
    else
      new_array << int
    end
  end
  pairs_count
end

p pairs([1,2,5,6,5,2])
p pairs([1,2,2,20,6,20,2,6,2])
p pairs([0,0,0,0,0,0,0])
p pairs([1000, 1000])
p pairs([0])
p pairs([54])
