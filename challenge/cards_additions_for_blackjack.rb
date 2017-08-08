if @win
	if @blackjack
		@bet = @bet * 1.5
		@cash += @bet
	else
		@cash += @bet
	end
else
	@cash -= @bet
end

def wager
	puts "You currently have #{cash}.  How much do you want to bet?"
	@bet = gets.chomp.to_i
	if @bet > @cash
		puts "You cannot bet more than you have."
		wager
	end
	puts "You bet #{@bet}.  Are you sure?"
	sure = gets.chomp.downcase.chars.first
	if sure == "y"
		# do nothing
	elsif sure == "n"
		wager
	else
		nope
		wager
	end
end