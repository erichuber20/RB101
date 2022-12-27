ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#see if spot is present

p ages.include?("Spot") ? true : false

#LS solution
ages.key?("Spot")
# Hash#member? would also work
