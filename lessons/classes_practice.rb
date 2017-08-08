class Person
	def self.breathe
		puts "inhale and exhale"
	end
end

class Baby < Person
	def self.speak
		puts "Goo goo ga ga"
	end
end

Baby.breathe
Baby.speak
p Baby.methods.sort

my_baby = Baby.new
puts my_baby.methods.sort

# p Person.ancestors
# p Class.ancestors



# question: why would I use
def double(x)
	x *= 2
end

# instead of 
def self.timestwo
	x *= 2
end
x.timestwo