# Array method challenge written by David.Hamaker@gmail.com
# Write a method that returns the elements on odd positions in an array
# then do even, then do a given number

Steve = %w[Hamster Gouda Orca Emmantal Wolfhound Mozzarella Owl Swiss Hippo Stilton]

def even
	x = []
	Steve.each_with_index do |item,index| 
	  if (index %2 == 0) then 
	    x.push(item) 
	  end
	end
	return x
end

def odd
	y = []
	Steve.each_with_index do |item,index| 
	  if (index %2 == 1) then 
	    y.push(item) 
	  end
	end
	return y
end

def pick
	z = Steve.sample
	return z
end

puts even
puts
puts odd
puts
puts pick
puts