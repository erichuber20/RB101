# write a method that determines if it is a palindrome (same forwad and backwards)

def palindrome?(str)
  characters = str.split
  return true if characters = characters.reverse
  false
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# LS solution
#  def palindrome?(string)
#   string == string.reverse
#  end

# further exploration
# create a method that can take either an array or a string and determine if it is a palindrome

def palindrome2?(collection)
  collection.class == 'String' ? reverse_collection = "" : reverse_collection = []
  if collection.class == 'String'
    characters = collection.split
    return true if characters = characters.reverse
  elsif collection.class == 'Array'
    return true if collection = collection.reverse
  end
end
  
  #index = collection.size - 1
  #loop do
    #reverse_collection << collection[index]
    #index -= 1
    #break if index == -1
  #end
  #collection == reverse_collection
#end

p palindrome2?(['a', 7, nil, "d"])
p palindrome2?(['a', 'b', 'a'])
p palindrome2?('noon')
p palindrome2?("Eric")