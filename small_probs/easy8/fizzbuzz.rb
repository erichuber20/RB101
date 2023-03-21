def fizzbuzz(int1, int2)
  numbers = (int1..int2).to_a
  result = []

  numbers.map do |num|
    if num % 3 == 0 && num % 5 == 0
      result << 'FizzBuzz'
    elsif num % 3 == 0
      result << 'Fizz'
    elsif num % 5 == 0
      result << 'Buzz'
    else
      result << num
    end
  end
  puts result.join(', ')
end

fizzbuzz(1, 15) 

# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz