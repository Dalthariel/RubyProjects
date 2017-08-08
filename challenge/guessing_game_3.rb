# User picks a number from 1 to 25, computer guesses
# challenge written by David.Hamaker@gmail.com

# this section lets you run the other guessing game if you want to guess a number

def nope
	puts "That's not a valid entry."
end

def game_select
	decision = false
	until decision == true do
		puts "Welcome to the guessing game, do you want to (p)ick a number for me to guess, or (g)uess a number I pick?"
		which_game = gets.chomp.upcase.chars.first
		if which_game == "G"
			system("ruby guessing_game_2.rb")
			exit
		elsif which_game == "P"
			decision = true
		else
			nope
		end
	end
end

def reset_game
	@guess = 0
	@bottom = 1
	@top = 25
	@how_many_guesses = 0
end

def guessing
	@guess = rand(@bottom..@top)
	@how_many_guesses += 1
	puts "I will guess your number is #{@guess}."
	puts "Is your number (H)igher, (L)ower, or am I (C)orrect? [or (Q)uit]"
	answer = gets.chomp.downcase.chars.first
	if answer == "h"
		@bottom = @guess + 1
	elsif answer == "l"
		@top = @guess - 1
	elsif answer == "c"
		puts "Yay, I won!  It only took me #{@how_many_guesses} tries."
		return
	elsif answer == "q"
		exit
	else
		nope
		guessing
	end
	if @bottom < @top
		guessing
	elsif @bottom > @top
		puts "Either you forgot your number or you're cheating. We're done here."
		exit
	elsif @bottom == @top
		guessing
	else
		puts "Something broke after the guess."
		exit
	end
end

def play_again
	puts "Do you want to do another? (yes/no)"
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

def play
	game_select
	reset_game
	puts "I want you to think of a number (no decimals or fractions please) between #{@bottom} and #{@top}. Press enter when you're ready."
	gets
	guessing
	play_again
end

@again = true
while @again == true
	play
end