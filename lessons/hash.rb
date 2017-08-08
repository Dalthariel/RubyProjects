# Hashes are a (key => value) pair combination

# most modern syntax
positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Corres" }
positions

# original ruby syntax
positions = { "first_base" => "Chris Carter", "second_base" => "Jose Altuve", "short_stop" => "Carlos Corres" }
positions[first_base]

# alternate syntax
positions = { :first_base => "Chris Carter", :second_base => "Jose Altuve", short_stop: "Carlos Corres" }
positions[:first_base]


people = {:jordan=>32, :tiffany=>27, :kristene=>10, :heather=>29}
people[:tiffany] #show an entry
people.delete[:kristene] # delete an entry
people.each_value do |value|
	puts value #puts the values
end
people.each_key do |key|
	puts key #puts the keys
end

people[:leann] = 42 # adds leann to the hash
people.invert #reverses the keys and values
people_2 = people.invert
people.merge(people_2) # adds the hash in parenthesis to the end of the first hash
people.to_a # converts the hash to an array like {[:jordan=>32], [:kristene=>27]} etc
people.keys # :jordan, :tiffany, :kristene, :heather, :leann
people.values # 32, 27, 10, 29, 42
