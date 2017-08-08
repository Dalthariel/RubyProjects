# Dicegame challenge written by David.Hamaker@gmail.com
# Create a game where you roll dice and the computer rolls dice and you see who is greater
@computer = 0
@human = 0
@computerpoints = 0
@humanpoints = 0
@numberofdice = 0
@victorycondition = 0

def rolldice
	@computer = 0
	@human = 0
	for i in 1..@numberofdice
		@computer += (1 + rand(6))
		@human += (1 + rand(6))
	end
end

def game
	puts
	puts "Welcome to DICE GAME 2 - ELECTRIC BOOGALOO"
	puts
	puts "How many dice do you want to roll?"
	@numberofdice = gets.chomp.to_i
	puts "How many points do you want to play to?"
	@victorycondition = gets.chomp.to_i

	win = false
	@computerpoints = 0
	@humanpoints = 0
	until win
		rolldice
		print "  Computer rolled ", @computer
		print "  You rolled ", @human, "\n"
		# On a tie, roll again.
		if @computer > @human
			@computerpoints = @computerpoints + 1
		elsif @computer < @human
			@humanpoints = @humanpoints + 1
		else
			puts "You tied!"
		end
		print " Computer score: ", @computerpoints, " Player score: ", @humanpoints, "\n"
	# Play to chosen number of victories
		if @computerpoints == @victorycondition
			puts "The computer wins"
			win = true
		elsif @humanpoints == @victorycondition
			puts "You win"
			win = true
		end
	end
	# teacher told us to turn it into dragons
	puts "NOW THEY ARE DRAGONS!" # lol it's all imaginary anyway
	# Ask to play again.
	puts "Play again? (Y/n)"
	again = gets.chomp.downcase
	if again != "n" # they have to type N or the game restarts
		game
	end
end

game