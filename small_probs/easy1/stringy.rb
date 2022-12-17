def stringy(integer)
  string = ""

  integer.times do |number|
    string << "1" if number.even?
    string << "0" if number.even?
  end

  string
end

p stringy(7)
p stringy(4)

# LS SOLUTION

#def stringy(integer)
  #numbers = []

  #integer.times do |index|
    #number = index.even? ? 1 : 0
   # numbers << number
  #end

 # numbers.join
#end