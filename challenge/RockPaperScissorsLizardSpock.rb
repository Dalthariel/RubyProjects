# Rock Paper Scissors Lizard Spock challenge written by David.Hamaker@gmail.com

def nope
	puts "That's not a valid entry."
end

def init
	@gozer = 0
	@stay_puft = 0
end

def options
	puts
	puts "1) Rock"
	puts "2) Paper"
	puts "3) Scissors"
	puts "4) Lizard"
	puts "5) Spock"
	puts
end

def player_choice
	puts "Choose the method of your destruction"
	@gozer = gets.chomp.to_i
	puts "you picked #{@gozer}"
	if @gozer < 1 or @gozer > 5
		nope
		player_choice
	end
end

def computer_choice
	@stay_puft = rand(1..5)
end

def win
	@player_score += 1
end

def lose
	@computer_score += 1
end

# Rock beats Lizard and Scissors
# Paper beats Rock and Spock
# Scissors beats Lizard and Paper
# Lizard beats Paper and Spock
# Spock beats Rock and Scissors

def who_won
	puts
	if @gozer == @stay_puft
		puts "It's a tie!"
		return
	end
	if @gozer == 1
		if @stay_puft == 2
			puts "Rock is covered by Paper, you lose"
			lose
		elsif @stay_puft == 3
			puts "Rock smashes Scissors, you win"
			win
		elsif @stay_puft == 4
			puts "Rock squishes Lizard, you win"
			win
		elsif @stay_puft == 5
			puts "Rock is vaporized by Spock, you lose"
			lose
		else
			puts "broken in Rock"
			exit
		end
	end

	if @gozer == 2
		if @stay_puft == 1
			puts "Paper covers Rock, you win"
			win
		elsif @stay_puft == 3
			puts "Paper is cut by Scissors, you lose"
			lose
		elsif @stay_puft == 4
			puts "Paper is eaten by Lizard, you lose"
			lose
		elsif @stay_puft == 5
			puts "Paper disproves Spock, you win"
			win
		else
			puts "broken in Paper"
			exit
		end
	end	

	if @gozer == 3
		if @stay_puft == 1
			puts "Scissors is smashed by Rock, you lose"
			lose
		elsif @stay_puft == 2
			puts "Scissors cuts Paper, you win"
			win
		elsif @stay_puft == 4
			puts "Scissors decapitates Lizard, you win"
			win
		elsif @stay_puft == 5
			puts "Scissors is smashed by Spock, you lose"
			lose
		else
			puts "broken in Scissors"
			exit
		end
	end	

	if @gozer == 4
		if @stay_puft == 1
			puts "Lizard is smashed by Rock, you lose"
			lose
		elsif @stay_puft == 2
			puts "Lizard eats Paper, you win"
			win
		elsif @stay_puft == 3
			puts "Lizard is decapitated by Scissors, you lose"
			lose
		elsif @stay_puft == 5
			puts "Lizard poisons Spock, you win"
			win
		else
			puts "broken in Lizard"
			exit
		end
	end

	if @gozer == 5
		if @stay_puft == 1
			puts "Spock vaporizes Rock, you win"
			win
		elsif @stay_puft == 2
			puts "Spock is disproved by Paper, you lose"
			lose
		elsif @stay_puft == 3
			puts "Spock smashes Scissors, you win"
			win
		elsif @stay_puft == 4
			puts "Spock is poisoned by Lizard, you lose"
			lose
		else
			puts "broken in Spock"
			exit
		end
	end		
end

def list_scores
	puts
	puts "Player Score: #{@player_score}"
	puts "Computer_score: #{@computer_score}"
end

def play_again
	puts "Do you want to do another?"
	another = gets.chomp.downcase.chars.first
	if another == "y"
		@again = true
	elsif another == "n"
		puts "Goodbye"
		@again = false
	else
		nope
		play_again
	end
end

@player_score = 0
@computer_score = 0
@again = true
while @again == true
	init
	options
	player_choice
	computer_choice
	who_won
	list_scores
	play_again
	system("clear")
end