# LS solution that I have studied
# make occurences has, iterate through array, extract each uniq value and assign a count value to it as it tallies, iterate through occurences hash to print key value pairs

def count_occurrences(array)
  occurences = {}
  
  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)