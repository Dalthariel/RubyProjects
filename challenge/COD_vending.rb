@speed = 10
@rof = 100
@health = 2
@reload = 4
@power = 10

@yen = 20000
@item = ["Furby Death Bomb of Ultimate Win", "stamina-up", "double-tap", "drugs", "speed cola", "pack-a-punch"]

def buy
	puts "buy a #{@item(@choice)}?"
	get_it = gets.chomp.downcase.chars.first
	if @purchased.include? == @item(@choice)
		puts "you already buyed it"
	elsif get_it = "y" and @price <= @yen
		@purchased << @item(@choice)

		# modify the stats
	elsif get_it = "y" and @price > @yen
		puts "you don't have enough"
	elsif get_it == "n"
		puts "fine then, be like that"
	else
		nope
	end
end


def stamina
	@price = 1500
	@speed
end

def double
	@price = 2000
	@rof
end

def drug
	@price = 2500
	@health
end

def speedcola
	@price = 3000
	@reload -= 2
	
end 

def punch
	@price = 5000
	@power
end

def nope
	puts "you make no sense"
	puts
end

def vending
	puts "you have ¥#{points}"
	puts
	puts "which item to have buy?"
	puts
	puts "1) stamina-up boosts running speed"
	puts "2) double-tap boosts rate of shoot"
	puts "3) drugs boosts health"
	puts "4) speed cola boosts reload rate"
	puts "5) pack-a-punch boosts killing"
	puts
	@choice = gets.chomp.to_i
	if @choice == (1..5)
		# do stuff here
	else 
		nope
		vending
	end
end