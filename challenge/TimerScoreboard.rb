# Timer sort challenge written by David.Hamaker@gmail.com
# You are the scorekeeper at the end of a race.
# Write a program that updates a top 5 finishers list.
@highscore = {
	"2:30" => "Ho Chi Minh",
	"3:00" => "Castro",
	"3:30" => "Pol Pot",
	"4:00" => "Hitler",
	"4:30" => "Stalin",
	"3:15" => "Mao Zedong"
}

def enter_times
	puts "Enter name"
	runner_name = gets.chomp
	puts "Enter time (mm:ss)"
	runner_time = gets.chomp
	@highscore << (runner_time => runner_name)
	puts @highscore
end

def clip_scores
	@highscore = @highscore.sort_by { |time, runner| time }
	while @highscore.length > 5
		@highscore.delete_at(5)
	end
end

def show_scores
	clip_scores
	puts "Current high scores:"
	puts @highscore
end

def more_runners
	puts "Is there another runner?"
	more = gets.chomp.downcase.chars.first
	if more == "y"
		@quit = false
		puts
		enter_times
	elsif more == "n"
		@quit = true
		puts "Goodbye."
		puts
	else
		puts "Um, what?"
		puts
		more_runners
	end
end

@quit = false
puts "Welcome to the races"
while @quit = false
	show_scores
	more_runners
end