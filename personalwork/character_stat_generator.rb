def init
	@stat_array = []
end

def roll_stat
	@die = 0
	@stat = []
	@number = 0
	4.times do
		@die = rand(2..6)
		@stat << @die
	end
	@stat = @stat.sort.drop(1)
	puts @stat
	@number = @stat.inject(&:+)
	puts @number
	puts
end

def get_stats
	7.times do
		roll_stat
		@stat_array << @number
	end
	@stat_array = @stat_array.sort.drop(1)
	puts @stat_array
end

init
get_stats
puts 
puts @stat_array