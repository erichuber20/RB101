ENGLISH_NUMBER = {
'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4,
'five' => 5,'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9,
'ten' => 10,'eleven' => 11, 'twelve' => 12, 'thirteen' => 13, 'fourteen' => 14,
'fifteen' => 15,'sixteen' => 16, 'seventeen' => 17, 'eighteen' => 18, 'nineteen' => 19
}

def alphabetic_number_sort(input)
  sorted_array  = ENGLISH_NUMBER.to_a.sort
  result = []
  sorted_array.each do |element|
    result << element[1]
  end
  result
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]