# Array addition challenge written by David.Hamaker@gmail.com
# Write three methods that compute the sum of the array using:
# For loop
# While Loop
# Recursion

@happy_fun_ball = [17,23,42,1776]

# for loop
@total = 0
for x in 0..@happy_fun_ball.length-1
	@total += @happy_fun_ball[x]
end
puts "For loop total is #{@total}"

# while loop
x = 0
@total = 0
while @happy_fun_ball[x] != nil
	@total += @happy_fun_ball[x]
	x += 1
end
puts "While loop total is #{@total}"

# recursion
@total = 0
@magic_pants = @happy_fun_ball
def recursion_loop
  return puts "Recursion loop total is #{@total}" if @magic_pants.length == 0
  @total += @magic_pants[0]
  @magic_pants.delete_at(0)
  recursion_loop
end
recursion_loop