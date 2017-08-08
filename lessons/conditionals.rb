players = ["Correa", "Carter", "Altuve"]

players.each {|player| puts player } unless players.empty?

# compound conditionals

x = 10
y = 100
z = 10

if x == y
	if x == z
		puts "equal to everything"
	end
end
#same as
if x == y && x == z
	puts "from the if statement"
end

# && = and, interchangeable
# || = or, interchangeable

monkey = true
if monkey 
	puts "monkey"
end