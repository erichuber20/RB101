# Replace important with urgent in this string
# advice = "Few things in life are as important as house training your pet dinosaur."

advice = "Few things in life are as important as house training your pet dinosaur."
advice_array = advice.split
advice_array.map! { |x| x == 'important' ? 'urgent' : x }
p advice_array.join(' ')

# LS solution (much easier)
# advice.gsub!('important', 'urgent')