def repeater(string)
  repeated = ''
  string.chars.each do |char|
    repeated << char << char
  end
  repeated
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''