full_name = Proc.new { |first, last| first + " " + last } # do whatever you want to your variables
p full_name["David", "Hamaker"] # uses square brackets
p full_name.call("David", "Hamaker") #two methods of doing the exact same thing

def full_name(first, last) #this does the same thing but can't be stored as a variable
	first + " " + last
end
full_name(first, last)

