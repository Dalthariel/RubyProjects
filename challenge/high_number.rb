# Sort through an array of numbers and return the highest one without using .max
#written by David.Hamaker@gmail.com
array = []
10.times do
	array << rand(100)+1
end
print array
embiggen = 0
array.each do |number|
	if embiggen < number
		embiggen = number
	end
end
puts
puts embiggen