def init
	@fibtimes = 0
	@n1 = 0
	@n2 = 1
	@total = 0
	@verbose = false
end

def nope
	puts "That's not a valid entry."
end

def get_number
	puts "How many times are we adding Fibonacci numbers?"
	@fibtimes = gets.chomp.to_i
	puts "you picked #{@fibtimes}"
	if @fibtimes < 1
		nope
		get_number
	end
end

def verbose_mode
	puts "Would you like Verbose Mode on? (yes/no)"
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

def cv (n1, n2, total) # stands for Check Verbose
	if @verbose 
		puts "#{n1} plus #{n2} equals #{total}"
	else
		print "#{total}, "
	end
end

def do_math
	1.upto(@fibtimes) do
		@total = @n1 + @n2
		cv(@n1, @n2, @total)
		@n1 = @n2
		@n2 = @total
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
	verbose_mode
	do_math
	puts "The ending number is #{@total}"
	play_again
end