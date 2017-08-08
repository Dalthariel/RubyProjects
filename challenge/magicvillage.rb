# Challenge - Magic Village
# Every night one person is transformed into an animal
# Lamb - everyone safe
# Tiger - eats one person
# Cow - gets eaten
# Dragon eats 2 people
# Manticore adds one person
# Run scenario until all villagers but one are gone and how many nights they survive
@villagers = ["Dan", "Dave", "Jared", "Ben", "Gordon", "Ian", "Dallin", "Tyson", "Dipesh", "Braden"]
@random_animal = ["Lamb", "Tiger", "Cow", "Dragon", "Manticore"]
@animal = ""
@nights = 0
@victim = ""
@dead_villagers = []

def pick_animal
	@animal = @random_animal.sample
end

def pick_villager
	@name = @villagers.sample
end

def pick_victim
	@victim = @villagers.sample
	x = false
	while x == false
		if @victim != @name
			x = true
		else
			pick_victim
		end
	end	
end

def night
	pick_animal
	pick_villager
	puts "#{@name} has turned into a #{@animal}!"
	if @animal == "Lamb"
		puts "Nothing happens."
	elsif @animal == "Tiger"
		puts "The vicious beast eats someone!"
		pick_victim
		@villagers.delete(@victim)
		@dead_villagers << @victim
		puts "#{@victim} is dead."
	elsif @animal == "Cow"
		puts "Mmm, steak.    ...oops."
		puts "#{@name} was delicious."
		@villagers.delete(@name)
		@dead_villagers << @name
	elsif @animal == "Dragon"
		puts "The massive creature burninates the countryside."
		if @villagers.count > 2
			pick_victim
			@villagers.delete(@victim)
			@dead_villagers << @victim
			print "#{@victim}"
			pick_victim
			@villagers.delete(@victim)
			@dead_villagers << @victim
			print " and #{@victim} burned to death.\n"
		else
			pick_victim
			@villagers.delete(@victim)
			@dead_villagers << @victim
			print "#{@victim} burned to death.\n"
		end
	elsif @animal == "Manticore"
		puts "The manticore has blessed our realm!"
		if @villagers.count > 9
			puts "He brings cake and everyone has a party."
		else
			rez = @dead_villagers.sample
			@villagers << rez
			@dead_villagers.delete(rez)
			puts "#{rez} is alive once more!"
		end
	else
		puts "This game is broken bro"
	end
	print "Villagers total is ", @villagers.count, "\n\n"
end

while @villagers.count > 1
	night
	@nights += 1
end
print @nights, " nights have passed.\n\n"
print @name, " is the survivor.\n"