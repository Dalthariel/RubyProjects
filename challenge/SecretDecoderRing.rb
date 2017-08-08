# challenge written by David.Hamaker@gmail.com
# Write a language translator
# Use the following conversion to convert a user-input sentence to the new alphabet
# ABCDEFGHIJKLMNOPQRSTUVWXYZ
# AZYXEWVTISRQPNOMLKJHUGFDCB

puts "Secret Decoder Ring"

def init
	@secret_phrase = ""
	@new_phrase = ""
	@again = false
end

def get_input
	puts "Please enter your sentence to encrypt:"
	@secret_phrase = gets.chomp
end

def append(letter)
	@new_phrase << letter
	@new_phrase.join
end

def algorithm(x)
	if (x > 96 and x < 123)
		y = x - 95
	elsif (x > 64 and x < 91)
		y = x - 63
	end
	if y == 1, 5, 9, 15, 21
		append(x.chr)
	else
		case 2..4

end

def convert
	toad = @secret_phrase.chars
	toad.each do |letter|
		if letter.match(/[a-zA-Z]/)
		x = letter.ord
			algorithm(x)
		else
			append(letter)
		end
	end	
end

def nope
	puts "That's not a valid entry."
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

@again = true
while @again == true
	init
	get_input
	convert
	play_again
end