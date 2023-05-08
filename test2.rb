def bubble_sort!(arr)
  idx = 0

  until arr == arr.sort
    idx = 0 if arr[idx+1] == nil
    if arr[idx] > arr[idx+1]
      arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
      idx += 1
    else
      idx += 1
    end
  end

  arr
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]
p 
p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]
p 
p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)