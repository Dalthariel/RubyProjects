# Number Adding Challenge written by David.Hamaker@gmail.com
# Have a user insert 10 numbers which are shoveled into an array
# Add all the numbers in the array
# print out the numbers in word form
require 'to_words'
@input = ""
@total = 0
@number_array

def check_input
	@input = gets.chomp
	@input = @input.to_i
	@number_array << @input	
end

def get_numbers
	(1..10).each do |x|
		puts "#{x}: enter a number"
		check_input
	end
end

def add_numbers
	@total = 0
	@total = @number_array.inject(&:+)
end

def print_numbers
	puts @total.to_words
end

get_numbers
add_numbers
print_numbers