# Challenge written by David.Hamaker@gmail.com
# Ask the user for a number from 1 to 25
# Ask to add or multiply
# Add or multiply all the numbers from 1 up to the number
def init
	@number = 0
	@operator = ""
	@total = 0
	@again = true
	@verbose = false
end

def nope
	puts "That's not a valid entry."
end

def get_number
	puts "Please enter an integer from 1 to 25"
	@number = gets.chomp.to_i
	puts "you picked #{@number}"
	if @number < 1 or @number > 25
		nope
		get_number
	end
end

def get_operator 
	puts "Please choose addition or multiplication"
	@operator = gets.chomp.downcase.chars.first
	# puts "you chose #{@operator}" # puts testing shows what the if statement tests against
	if @operator != "a" and @operator != "m"
		nope
		get_operator
	end
end

def verbose_mode
	puts "Verbose mode is off. Turn it on? (yes/no)"
		turn_on = gets.chomp.downcase.chars.first
	if turn_on == "n"
		@verbose = false
	elsif turn_on == "y"
		@verbose = true
	else
		nope
		verbose_mode
	end
end

def cv (n, o) # stands for Check Verbose
	if @verbose 
		if o == "a"
			puts "plus #{n} = #{@total}"
		elsif o == "m"
			puts "times #{n} = #{@total}" 
		else 
			puts "It broke in the Verbose module"
			exit
		end
	end
end

def do_math
	if @operator == "a"
		1.upto(@number) do |n|
			@total += n
			cv(n, @operator)
		end
	else
		puts "something broke in the math module"
		exit
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

@again = true
while @again == true
	init
	get_number
	get_operator
	verbose_mode
	do_math
	puts "Your total is #{@total}"
	play_again
end