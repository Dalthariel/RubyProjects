my_array = Array.new
p my_array.class

my_array = []
p my_array.class

my_array = Array.new(3)
p my_array

my_array = Array.new(3, true)
p my_array

my_array = Array.new(4) { Hash.new }
p my_array

my_empty_table = Array.new(4) { Array.new(4) }
p my_empty_table

# Elements in an array can be retrieved using the #[] method
# Negative numbers count back from the end of the array.

my_empty_array = []
my_empty_array << "Append"
my_empty_array << "all"
my_empty_array << "the"
my_empty_array << "words"
p my_empty_array

array = [0, 1, 2, 3, 4, 5]
for i in array
	puts i
end

def array_copy(source)
	destination = []
	source.each do |i|
		destination << i if (i < 4)
	end
	return destination
end
p array_copy(array)

france = [1, 2, 3, 4, 5]
p france.map { |i| i+1 }
p france

# select even numbers
[1,2,3,4,5,6].select {|number| number%2==0}

names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
p names.each.select {|x| x.length > 5}