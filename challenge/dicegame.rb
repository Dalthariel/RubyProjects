# Create a game where you roll 1 die and the computer rolls 1 die and you see who is greater
@computer = 0
@human = 0
@computerpoints = 0
@humanpoints = 0

def rolldice
	@computer = 1 + rand(6)
	@human = 1 + rand(6)
end

def game
	win = false
	@computerpoints = 0
	@humanpoints = 0
	until win
		rolldice
		print " Computer score: ", @computerpoints, " Player score: ", @humanpoints, "\n"
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
	# Play to 5 victories
		if @computerpoints == 5
			puts "The computer wins"
			win = true
		elsif @humanpoints == 5
			puts "You win"
			win = true
		end
	end
	# Ask to play again.
	puts "Play again? (Y/n)"
	again = gets.chomp.downcase
	if again != "n"
		game
	end
end

game