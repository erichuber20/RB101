=begin

Problem
_________________

inputs: integer
outputs: strings in diamond art

Explicit requirements: 
integer is always off
diamond has to be 4 pointed

Clarifying questions:


EXAMPLES:
_________________

diamond(1)
*

diamond(3)
 *
***
 *

 diamond(9)
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *


DATA STRUCTURES:
___________________

strings
maybe arrays

Algorithm:
determine the size of each row from the input integer
set starting stars count = 1
set spaces count = integer / 2
set row number = 1
loop
print out a row of spaces + stars
add 2 to stars
subtract 1  from spaces
add one to row
break when stars = integer

loop 
print out a row of spaces + stars
subtract 2 from stars
add 1 to spaces
add 1 to row number
break after stars = 1

=end

def diamond(integer)
  stars_count = 1
  spaces_count = integer / 2
  loop do
    puts "#{' ' * spaces_count}" + "#{'*' * stars_count}"
    break if stars_count == integer
    stars_count += 2
    spaces_count -= 1
  end
  if stars_count > 1
    loop do
      stars_count -= 2
      spaces_count += 1
      puts "#{' ' * spaces_count}" + "#{'*' * stars_count}"
      break if stars_count == 1
    end
  end
end

diamond(1)
diamond(3)
diamond(9)