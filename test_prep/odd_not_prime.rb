# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

=begin
PROBLEM ------------

explicit requirements: 
  x is an integer between 1 and 10000
  must determine the count of integers that meet criteria
    less than or equal to x
    odd
    not prime
      A prime number is a natural number greater than 1 that has no positive divisors other than 1 and itself
  
implicit requirements:
  natural number = not an integer, not a float/decimal

EXAMPLES ------------

input: 5
output: (1, 3, 5) = 1 (1 is not prime)

input: 10
output: (1,3,5,7,9) = 2 (1 and 9 are not prime)


DATA ------------

arrays

ALGORITHM -----------

create an array of integers 1 through x
select all the odd integers from that array and set odd_integers as it
reject all the prime numbers, leaving only not prime integers (satisfying all implicit requirements)
  determine prime
    iterate through odd_integers
      divide each integer by integers from 1 to integer and place into factors array if remainder is 0
      if factors array size is 2, reject that integer and place into outputs array
count the size of the array

=end

def factors(int)
  integers = (1..int).to_a
  factors_array = integers.select { |factor| int % factor == 0 }
end

def odd_not_prime(x)
  integers = (1..x).to_a
  odd_integers = integers.select { |int| int.odd? }
  outputs = odd_integers.reject { |odd_int| factors(odd_int).size == 2 } # any integer that has exactly 2 factors is rejected since they would be prime numbers, leaving only not prime left to count
  outputs.size
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20
