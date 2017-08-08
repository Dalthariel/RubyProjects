total = 0

[3, 2, 4, 53, 3, 23343, 4342, 12, 3].each do |i|
	total	+= i
end
# is the same as
[3, 2, 4, 53, 3, 23343, 4342, 12, 3].inject(&:+)

[3, 2, 4, 53, 3, 23343, 4342, 12, 3].inject(&:*) # multiply instead of add


