flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# This is how we added dino before 
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)

p flintstones.push("Dino", "Hoppy")

# LS solution
# flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item