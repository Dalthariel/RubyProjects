require 'rspec'

def find_element collection, element
	# Manual Solution
	collection.each do |c|
		return c if c[1] == element
	end
	# Ruby Solution
	#collection.rassoc(element) # R association method, followed by element you're searching for
end


describe "find element" do
	it "returns an array from a nested array if the second element equals the queried element" do
		players = [
			[27, "Jose Altuve"],
			[2,  "Alex Bregman"],
			[1,  "Carlos Correa"],
			[9,  "Marwin Gonzalez"],
			[10, "Yulieski Gurriel"]
		]

		expect(find_element(players, "Jose Altuve")).to eq([27, "Jose Altuve"])
	end
end


players = [
	[27, "Jose Altuve"],
	[2,  "Alex Bregman"],
	[1,  "Carlos Correa"],
	[9,  "Marwin Gonzalez"],
	[10, "Yulieski Gurriel"]
]

puts find_element players, "Marwin Gonzalez"