flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# turn this into and array with barneys name and number

array = flintstones.to_a

p array[2]


# LS solution
p flintstones.assoc("Barney")
#=> ["Barney", 2] 
# assoc Returns the first element in array that is an Array whose first element == barney