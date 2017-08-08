# dungeon module written by david.hamaker@gmail.com
# version 0.3
# map is currently a 10 by 10 grid
# all rooms are square
# "obvious exits are north, south, and Dennis"


# Room Types
# 16 room types possible, 15 worth using
# 1 with 4 walls, no opening, useless and therefore will not be used
# 4 with 3 walls, 1 opening
# 6 with 2 walls, 2 openings
# 4 with 1 wall, 3 openings
# 1 with 0 walls, 4 openings
#----------------------------
require 'pry'
require 'rspec'

@win = false

# hash for room description
@directions_room = {
	# one opening, dead end rooms
	1 => "This is a dead end. The only way to go is back to the south.",
	2 => "This is a dead end. The only way to go is back to the west.",
  3 => "This is a dead end. The only way to go is back to the north.",
	4 => "This is a dead end. The only way to go is back to the east.",
	# two openings
	5 => "This area allows travel east and west.",
	6 => "This area allows travel north and south.",
	7 => "This area allows travel south and west.",
	8 => "This area allows travel north and west.",
	9 => "This area allows travel north and east.",
	10 => "This area allows travel south and east.",
	# three openings
	11 => "This area allows travel north, south, and east.",
	12 => "This area allows travel south, east, and west.",
	13 => "This area allows travel north, south, and west",
	14 => "This area allows travel north, east, and west.",
	# four openings
	15 => "This area allows travel north, south, east and west.",
}

# Array to assign every room a type
@roomtypes = [0, 10, 5, 7, 4, 12, 12, 5, 12, 5, 7, 11, 7, 9, 5, 8, 9, 7, 6, 4, 8, 3, 9, 5, 2, 10, 2, 3, 11, 5, 7, 10, 5, 12, 2, 11, 5, 7, 3, 4, 13, 11, 2, 6, 4, 13, 1, 11, 5, 12, 8, 6, 1, 9, 5, 8, 9, 15, 7, 3, 1, 6, 6, 4, 7, 10, 7, 6, 3, 10, 8, 6, 11, 5, 15, 8, 6, 3, 1, 6, 1, 6, 9, 7, 6, 10, 14, 5, 15, 8, 6, 9, 5, 8, 3, 3, 10, 5, 14, 5, 8]

# Array to assign every room type a direction set
@roomdirections = [nil, "S", "W", "N", "E", "E W", "N S", "S W", "N W", "N E", "S E", "N S E", "S E W", "N S W", "N S E W"]

# size of the dungeon
@currentroom = 3 # starting room based on current maze model
@exitroom = 106 # exit of the maze
@columns = 1 # moving right and left
@rows = 10 # how wide the maze is, moving 
@levels = 1 # how tall the maze is, z coordinate, not in use at this point

#Prototype game play section
puts "You are in a labyrinth. You have a torch.  You must find your way out."

def describe_room
	@roomtype = @roomtypes[@currentroom]
	puts @directions_room[@roomtype]
end
	
def movement
	puts "Which way will you go? (N/S/E/W) (Q to quit)"
	@direction = gets.chomp.upcase.chars.first

	if @direction == "Q"
		puts "you walk to outer space and die from lack of air"
		exit
	end
	
	if @direction == "N"
		(@currentroom = @currentroom - @rows)
	elsif @direction == "S"
		(@currentroom = @currentroom + @rows)
	elsif @direction == "E"
		(@currentroom = @currentroom + @columns)
	elsif @direction == "W"
		(@currentroom = @currentroom - @columns)
	else
		puts "You don't know how to go that way."
	end	

	if @currentroom < 1 or @currentroom > 100
		puts "you burrow into the belly of the mountain and release a balrog which eats you"
		exit
	end
end

def roomcheck # collision detection
	puts "This is room #{@currentroom}"
	@trytoghost = false
	@allowed = @roomdirections[@roomtype].split(" ") # parsing out the directions 
	puts allowed
	@trytoghost = true unless @allowed.include?(@direction) # total possible directions is 4
	if @trytoghost == true
		puts "Walking through walls isn't in your skill set."
		@direction = ""
	end
end

	#check win condition
until @win == true
	describe_room
	movement
	roomcheck
	if @currentroom == @exitroom
		@win = true
	end
end

puts "You have escaped!  Well done."