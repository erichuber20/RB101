advice = "Few things in life are as important as house training your pet dinosaur."
# does "Dino" appear in this string?

words = advice.split
p words.include?("Dino")

# LS Solution
advice.match?("Dino")

# Note that this is not a perfect solution, as it would match any substring with Dino in it.