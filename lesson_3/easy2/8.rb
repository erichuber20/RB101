advice = "Few things in life are as important as house training your pet dinosaur."

# shorten this string to " house training your pet dinosaur" and slice! out the beginning portion

advice.slice!(0..37)
p advice

# LS Solution
# advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
# p advice # => "house training your pet dinosaur."
# bonus: if you used slice without the ! , it would print the original string bc it isn't destructive
