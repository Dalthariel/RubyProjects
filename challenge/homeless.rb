# Challenge written by David.Hamaker@gmail.com and Tyson 
# You have been hired by a homeless shelter to write a program to keep track of residents
# Keep track of Name, Age, Illnesses, and if they stayed within the last 30 days
# Print a table that stores this info
# Use a gem for the table
# Add a feature to check out a person from the list
# Store their data in a separate list and starts a timer for 1 week

require "terminal-table"

def init
	@all_people = []
	@person = []
	@illness_list = []
end

def table_stuff
	@table = Terminal::Table.new do |t|
		t << ["Name", "Age", "Date of Check-in", "Illness"]
		t << :separator
		@all_people.each do |x|
			t.add_row [x]
			t.add_separator
		end
	end
	puts @table
end

def nope
	puts "That's not valid input"
	puts
end

def get_illness
	puts "Please enter an illness that requires medication, or type 'done' to exit"
	@illness = gets.chomp
	if @illness.downcase == "done"
		@quit = true
		puts
	else 
		@person << @illness
		get_illness
	end
end

def new_person
	@person = []
	puts "What yo name be, G?"
	name = gets.chomp
	@person << name
	puts "How many annums you gotsk?"
	age = gets.chomp
	@person << age
	puts "WHAT DAY IS IT?!?! (mm/dd/yyyy)"
	date = gets.chomp
	@person << date
	get_illness
	@all_people << @person
end

init
new_person
table_stuff