ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# add age for marilyn and spot to the original array
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!("Marilyn" => 22, "Spot" => 237)

p ages

#LS solution
p ages.merge!(additional_ages)
