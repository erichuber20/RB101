name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

## What does this print?
## Alice
## Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Prints
# BOB
# BOB
# When you apply name.upcase!, which mutates name in place, the value that save_name references also changes. Thus, both name and save_name are set equal to 'BOB'.