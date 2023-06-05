=begin
https://www.codewars.com/kata/529872bdd0f550a06b00026e/ruby

Complete the greatestProduct method so that 
it'll find the greatest product of five consecutive digits in the given string of digits.



PROBLEM --------------------

explicit:
  input is a string of digits
  must compute the greatest total product of 5 consecutive digits in the input string

implicit: 



EXAMPLES -------------------

  greatestProduct("123834539327238239583") // should return 3240

DATA -----------------

array

MODELING/algorithm -------------

find all the substrings of "123834539327238239583"
  select all the substrings that are 5 characters in length
    for each of those substrings:
      convert them to an integer and split into an array of digits
      place the total from multiplying the 5 numbers into a products array
  select the max value in the products array

=end
require 'pry'
def greatest_product(string)
  substrings = []

  (0..string.length).each do |i|
    (i..string.length-1).each do |ii|
      substrings << string[i..ii]
    end
  end

  five_chars = substrings.select { |substring| substring.length == 5 }

  five_digits = five_chars.map { |string| string.chars }

  digits_arrays = five_digits.each do |array|
                  array.map! { |char| char.to_i }
                 end

  products = digits_arrays.map { |array| array.inject(:*) }.max
end

p greatest_product('123834539327238239583')
p greatest_product('92494737828244222221111111532909999')
