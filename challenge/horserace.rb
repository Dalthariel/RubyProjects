# Challenge: take bets for a horse race
# take bids and then pay the winner
# create 4 horses
# accept bets to which will win
# randomly choose a horse and pay the winner

@horses = ["Cthulhu", "Famine", "Pestilence", "War", "Death"]
@payout = 0
@bet = 0
@winner = ""
@choice = 0
@bets_closed = false
@bookie_array = 
@player = ""
@player_array = []

def get_players
	puts "What's your name?"
	@player = gets.chomp
end

def horse_menu
	puts "Horses running today:"
	puts "1) Famine"
	puts "2) Pestilence"
	puts "3) War"
	puts "4) Death"
end

def take_bet
	horse_menu
	puts "What's your name?"
	@player = gets.chomp
	puts "Which horse do you want to bet on?"
	@choice = gets.chomp
	puts "How much do you want to bet?"
	@bet = gets.chomp.to_i
	@payout += @bet
	@bookie_array << @player
	@bookie_array << @choice
	puts "Place another bet? (Y/n)"
	another = gets.chomp.downcase
	if another == "n"
		@bets_closed = true
	end
end

def choose_winner
	@winner = @horses.sample
	#puts @bookie_array
	puts "#{@winner} is the winning horse!"
	if @choice == @winner
		puts "You earned $#{@payout}"
	else
		puts "You didn't win.  Better luck next time."
	end
end


while @bets_closed == false
	take_bet
end
choose_winner
