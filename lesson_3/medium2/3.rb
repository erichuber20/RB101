def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# what will be displayed and why?
# My string looks like this now: pumpkins
# My array looks like this now: ["pumpkins", "rutabaga"]
# += is non mutating so it takes a copy of my_string, adds rutabaga to it and assigns it to a new variable
# the my_string object is not mutated and therefore is just pumpkins
