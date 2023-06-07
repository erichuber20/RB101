# https://www.codewars.com/kata/550498447451fbbd7600041c/ruby

def comp(arr1, arr2)
  return false if arr1.include?(nil) || arr2.include?(nil)
  squared = arr1.map { |int| int.abs ** 2}
  squared.sort == arr2.sort
end

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

p comp(a, b)