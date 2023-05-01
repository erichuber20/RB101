def swap_name(full_name)
  full_name_array = full_name.split

  "#{full_name_array[1]}, #{full_name_array[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'