# Chessboard doubling challenge written by David.Hamaker@gmail.com
# Calculate the number of gold pieces on a chessboard given that the number on each square doubles.
# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have gold pieces. One gold piece on the first square of a chess board. Two gold pieces on the next. Four on the third, and so on.
# There are 64 squares on a chessboard.
# Write code that shows:
# how many gold pieces were on each square, and
# the total number of gold
gold = 1
total = 0
64.times do |square|
	total = total + gold
	puts "Square #{square+1} has #{gold} gold for a total of #{total} gold"
	gold = gold * 2
end