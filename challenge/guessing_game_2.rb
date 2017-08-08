def reset_game
	@guess = 0
	@goal = rand(1..50)
end

def nope
	puts "That's not a valid entry."
end

def guessing
	puts
	puts "I have a number between 1 and 50."
	puts 
	while @guess != @goal do
		puts "What is your guess?"
		@guess = gets.chomp.to_i
		if @guess > @goal
			puts "The number is lower than that."
		elsif @guess < @goal
			puts "The number is higher than that."
		elsif @guess == @goal
			puts "Correct."
		else
			nope
		end
	end
end

def play_again
	puts "Do you want to do another?"
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
	reset_game
	guessing
	play_again
end

@again = true
while @again == true
	play
end