vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = Hash.new(0)
  
  array.each do |vehicle|
    occurrences[vehicle] += 1
  end
  occurrences
end

p count_occurrences(vehicles)