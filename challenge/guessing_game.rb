# Written by david.hamaker@gmail.com
# Challenge: computer chooses a number between 1 and 25
# Enter your guess and the computer will tell you higher or lower

def reset_game
	@guess = 0
	@goal = rand(1..25)
end

def guessing
	puts 
	if @odd != nil
		@goal = @odd.sample
	end
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
			puts "That's not a guess."
		end
	end
end

def again
	puts "Play again?"
	playagain = gets.chomp.upcase
	if playagain == "Y" or playagain == "YES"
		play
	elsif playagain != "N" and playagain != "NO"
		puts "I'm sorry, I didn't understand that. Please answer Yes or No without punctuation."
		again
	end
end

puts "I want to play a game.  I have chosen an integer between 1 and 25."
puts "You will try to guess my number.  If you fail, I will tell you higher or lower."

def play
	reset_game
	guessing
	again
end

@odd = nil
play

# Part two: use the Each method of array to iterate over 1 through 20 and print out each value
@bogstench = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

@bogstench.each do |pie|
	puts pie
end

# Same as above but only print out values greater than 5
@bogstench.each do |pie| 
	if pie > 5
		puts pie
	end
end

# Using the array from part 2, use the select method to extract all odd numbers into a new array
@odd = @bogstench.select{|item| item%2!=0 }
puts @odd
# Then turn them into dragons
# Store the dragons into a new variable and ask the user to guess how many dragons.
# Write a program informing if the number is in that variable or not.

puts "NOW THERE ARE DRAGONS!"
puts "How many dragons are there?"
play

# Give Dan 20 bucks
puts "Now Dan has 20 bucks!"

# Give Elise nothing
puts "Elise gets nothing!"