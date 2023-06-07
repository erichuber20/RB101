# https://www.codewars.com/kata/585d7d5adb20cf33cb000235/ruby

def find_uniq(arr)
  arr.sort!
  return arr[-1] if arr[0] == arr[1]
  arr[0]
end

p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55