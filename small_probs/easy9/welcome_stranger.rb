def greetings(name_array, information)
  name = name_array.join(' ')
  puts "Hello, #{name}! Nice to have a #{information[:title]} #{information[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."