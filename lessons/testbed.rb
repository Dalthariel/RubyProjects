@speed = 10
@rof = 100
@health = 2
@reload = 4
@power = 10

@yen = 20000

def buy
	puts "buy a #{@item(@choice)}?"
	get_it = gets.chomp.downcase.chars.first
	if get_it = "y" and @price <= @yen


def stamina
	@price = 2500
	@health *= 2
end

def double
	puts "Buy a drugs?"
	@drugs = gets.chomp.downcase.chars.first
	if @drugs == "y" and @yen >= 2500
		@yen -= 2500
		@health *= 2
	else
		puts "sucker"
	end
end

def drug
	puts "Buy a drugs?"
	@drugs = gets.chomp.downcase.chars.first
	if @drugs == "y" and @yen >= 2500
		@yen -= 2500
		@health *= 2
	else
		puts "sucker"
	end
end

def speedcola
	puts "Buy a speed cola?"
	@speed_cola = gets.chomp.downcase.chars.first
	elsif @speed_cola == "y" and @yen >= 3000
		@yen -= 3000
		@reload -= 2
		@purchased << "S"
	else
		puts "sucker"
	end
end 

def punch
	puts "Buy a drugs?"
	@drugs = gets.chomp.downcase.chars.first
	if @drugs == "y" and @yen >= 2500
		@yen -= 2500
		@health *= 2
	else
		puts "sucker"
	end
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