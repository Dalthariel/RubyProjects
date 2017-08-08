# Challenge: make a frame around any input from the user
# put each word on a separate line
# written by David.Hamaker@gmail.com

howbigisit = 0
puts "type stuff here"
thing = gets.chomp
broken = thing.split
broken.each do |x|
	if x.length > howbigisit
		howbigisit = x.length
	end
end

# top border
print "┌"
howbigisit.times do
	print "─"
end
puts "┐"

# middle bit
broken.each do |x|
	print "│"
	print x
	if x.length < howbigisit
		y = howbigisit - x.length
		y.times do
			print " "
		end
	end
	puts "│"
end

# bottom border
print "└"
howbigisit.times do
	print "─"
end
puts "┘"