# Challenge: Magic 8 ball written by david.hamaker@gmail.com
q = ""
again = ""
answers = ["Yes", "No", "Ask again later", "I have no idea", "How DARE you ask me that", "Probably", "Feed me.  I'm too hungry to answer questions right now.", "It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Signs point to yes", "Reply hazy try again", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]
playagain = true
while playagain == true
	puts "Ask a yes or no question:"
	q = gets.chomp
	puts answers.sample
	puts "Ask another? (Y/n)"
	again = gets.chomp.downcase
	if again == "no" or again == "n"
		playagain = false
	end
end