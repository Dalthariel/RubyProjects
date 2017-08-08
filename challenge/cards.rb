# Challenge written by David.Hamaker@gmail.com
# Create a normal 52-card deck
# do not draw cards again 

require "pry"

def init
	@again = true
	@card = 0
	@cardvalue = 0
	@player_hand = []
	@player_total = []
	@dealer_hand = []
	@dealer_total = []
	@suit = ""
end

def display_card
	face_cards = {
	1 => "A",
	11 => "J",
	12 => "Q",
	13 => "K",
	53 => "Red",
	54 => "Black"
}
	if face_cards.include?(@cardvalue)
		print face_cards[@cardvalue], @suit
		puts
	else
		print @cardvalue, @suit
		puts
	end
end

# I think this isn't checking to see if the card is in both hands, only the current hand.
# It's currently like each player is playing from their own deck.  Dunno if that's really a problem.
def draw_card(hand, total) 
	@card = rand(54) + 1 # set to rand(52) to remove jokers
	if hand.include?(@card)
		draw_card
	end
	if @card > 0 and @card <= 13
		@suit = "♦"
		@cardvalue = @card
	elsif @card > 13 and @card <= 26
		@suit = "♣"
		@cardvalue = @card - 13
	elsif @card > 26 and @card <= 39
		@suit = "♥"
		@cardvalue = @card - 26
	elsif @card > 39 and @card <= 52
		@suit = "♠"
		@cardvalue = @card - 39
	elsif @card > 52 and @card <= 54
		@suit = "Joker"
		@cardvalue = @card
	else puts "What kind of cheating nonsense is this anyway?  *BANG*"
		exit
	end
	hand << @card
	if @cardvalue > 10 then @cardvalue = 10 end
	total << @cardvalue
end 

def nope
	puts "That's not a valid entry."
end

def play_again
	puts "Do you want to play again?"
	another = gets.chomp.downcase.chars.first
	if another == "y"
		@again = true
	elsif another == "n"
		puts "Goodbye"
		@again = false
	else
		nope
		play_again
	end
end

puts "Deck of Cards"
init
while @again == true
	draw_card(@player_hand, @player_total)
	display_card
	draw_card(@dealer_hand, @dealer_total)
	binding.pry
	play_again
end

