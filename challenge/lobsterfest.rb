# Shooting challenge written by David.Hamaker@gmail.com
# Lobsterbacks vs Minute Maids take turns shooting at each other
# Each person in each group has a 50% chance of being hit and dying
# How many rounds does it take to determine a winning group?
# 10 v 10

def new_game # repopulate the teams
	@victory = false
	@volleys = 0
	@lobsters = []
	@minutemaids = []
	10.times do |x|
		@lobsters << "Lobster #{x}"
		@minutemaids << "Maid #{x}"
	end
	puts "Team Lobsterbacks:"
	puts @lobsters
	puts
	puts "Team Minute Maids:"
	puts @minutemaids
	puts 
end

def coin_toss # decide who shoots first
	@coin = rand(2)
	if @coin == 0
		puts "Coin toss result is Heads, the Minute Maids shoot first."
		puts
	elsif @coin == 1 
		puts "Coin toss result is Tails. The Lobsterbacks have delicious tails so they shoot first."
		puts
	else
		puts "the program broke on the coin toss"
		exit
	end
end

def dodge
	@shot = rand(2)
end

def battle
	@dead = []
	@volleys += 1
	while @victory == false
		if @coin == 0
			maids_shoot
			@coin = 1 #changes whose turn it is
		elsif @coin == 1
			lobsters_shoot
			@coin = 0
		else
			puts "the program broke trying to do battle"
			exit
		end
	end
	puts "The battle took #{@volleys} volleys."
end

def maids_shoot
	puts "The Minute Maids fire at their enemy!"
	@lobsters.each do |x|
		puts "#{x} is under attack!"
		dodge
		if @shot == 1
			puts "#{x} got shot and died."
			@dead << x
		elsif @shot == 0
			puts "#{x} lives!"
		else
			puts "it broke during the maids turn"
			exit
		end
	end
	@lobsters.delete(@dead) # this is NOT WORKING
	if @lobsters.length == 0
		puts "The Minute Maids have eliminated their terrible foe!"
		puts 
		@victory = true
	else
		puts "Some of the foe remains..."
		puts
	end
end

def lobsters_shoot
	puts "The Lobsterbacks engage their foe!"
	@minutemaids.each do |x|
		dodge
		puts "#{x} is under attack!"
		if @shot == 1
			puts "#{x} got shot and died."
			@dead << x
		elsif @shot == 0
			puts "#{x} lives!"
		else
			puts "it broke during the maids turn"
			exit
		end
	end
	@minutemaids.delete(@dead) # this is NOT WORKING
	if @minutemaids.length == 0
		puts "The Lobsterbacks have destroyed the enemy!"
		puts 
		@victory = true
	else
		puts "Some of the foe remains..."
		puts
	end
end

def play_again
	puts "Would you like see a new battle?"
	again = gets.chomp.downcase.chars.first
	if again == "y"
		@play = true
		puts
	elsif again == "n"
		@play = false
		puts "Goodbye."
		puts
	else
		puts "Um, what?"
		puts
		play_again
	end
end

@play = true
while @play == true
	puts "A great battle is about to take place..."
	puts
	new_game
	coin_toss
	battle
	play_again
end
