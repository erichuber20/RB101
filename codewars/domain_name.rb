=begin
https://www.codewars.com/kata/514a024011ea4fb54200004b/train/ruby
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:
domain_name("http://github.com/carbonfive/raygun") == "github" domain_name("http://www.zombie-bites.com") == "zombie-bites" domain_name("https://www.cnet.com") == "cnet"

PROBLEM ---------

inputs: string that is a URL
outputs: string with just domain name extracted

explicit: will start with string and will return a string
implicit: URL may or may not have consistent formatting
  domain will always precede a '.'
  domain may follow a '/' or '.'


Examples --------

domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites" 
domain_name("https://www.cnet.com") == "cnet"

DATA--------

strings
arrays

ALGORITHM --------

split URL into array of characters
initialize results array
loop through the characters array until char == the second '/' or '.'
  concatenate each character following into results until char is '.'
  keep track of index counter to break out of the loop at the start of the loop
join results array into a string and return

=end

def find_starting_index(array)
  slashes = 0
  periods = 0
  starting_index = 0

  array.each_with_index do |char, index|
    slashes += 1 if char == '/'
    return index if char == '/' && slashes == 2
    return index if char == '.'
  end
end

def find_end_index(array)
  index = find_starting_index(array)
  loop do
    index += 1
    break if array[index] == '.'
  end

  index
end

def domain_name(url)
  characters = url.chars
  starting_index = find_starting_index(characters)
  ending_index = find_end_index(characters)
  slice = (ending_index - starting_index) - 1
  results = (characters[starting_index + 1, slice]).join
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"