# Store Challenge written by David.Hamaker@gmail.com and Dallin Johnson dallin.b.johnson@gmail.com
# Make a Store with at least 3 items or services with several subtypes/variations
@subtotal = 0
@items_bought = 0
@choice_arr = ["F", "L", "R", "P", "C"]

@menu = {
	"Frisbee" => {
		"Red" => 12.97,
		"Black Ultimate" => 15,
		"Solid Gold" => 12992.53,
		"Blue Disc Golf Putter" => 37
	},
	"Live Duckling" => {
		"Pekin" => 8,
		"Jumbo Pekin" => 9,
		"Mallard" => 5,
		"Rouen" => 7,
		"Khaki Campbell" => 11,
		"Blue Swedish" => 10,
		"Black Swedish" => 10,
		"Buff" => 5,
		"Cayuga" => 14,
		"Welsh Harlequin" => 20,
		"White Crested" => 13,
		"Fawn and White Runner" => 12,
		"Black Runner" => 15,
		"Blue Runner" => 14,
		"Chocolate Runner" => 6.50,
		"Golden 300 Hybrid" => 14229,
		"White Layer" => 22
	},
	"Rocket launcher" => {
		"RPS-6" => 392.11,
		"Blueguns RPG7 Training" => 608,
		"RBS-70 Ground-based Air Defense Rocket Launcher System" => 1000
	},
	"Penguin (does not fit in rocket launcher)" => {
		"Emperor" => 311,
		"King" => 280,
		"Adélie" => 175,
		"Little" => 150,
		"African" => 230
	},
	"Camera" => {
		"Canon" => 4199,
		"Nikon" => 449,
		"Fujifilm" => 699	
	}
}

def buy_another
	puts "Would you like to purchase another item (y or n)? "
	@again = gets.chomp.strip.upcase

	if @again == "Y"
		menu_display
		user_choice
	elsif @again == "N"
		return
	else
		buy_another()
	end
end

def menu_display
	puts "Items available for purchase:"
	@menu.each do |item, subtype|
		puts item
	end
end

def choice_item(choice)
	menu_item = 0
	n = @choice_arr.index(choice)
	
	@menu.values[n].each do |thing, price|
		menu_item += 1
		puts "#{menu_item}) #{thing}: $#{price}"
	end
	buy(n)
end

# Display the options and ask which items they want
def buy(n)
	puts "Which item number do you want?"
	purchase = gets.chomp.strip.to_i

	@subtotal += @menu.values[n].values[purchase-1]
end

def user_choice
	puts "Which type of item would you like?"
	choice = gets.chomp.strip.chr.upcase

	choice_item(choice)
end

menu_display
user_choice

until @again == "N" do
	buy_another
end
puts "Subtotal: $#{@subtotal}"

# User must choose at least two items

# Ask if they want anything else

# Total the amount and #TaxationIsTheft and display with a goodbye message

# Program module
# puts "Welcome to Captain Bob's General Store"
# while quit = false
# 	menu_display
# 	user_choice
# end