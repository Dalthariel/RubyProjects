# Who Wants to Be a Millionaire
# ruby challenge written by David.Hamaker@gmail.com

#define variables
@answer = ""
@lifeline = ""
@response = ""
@final = ""
@stakes = 0
@points = 0
@used_the_lifeline = false
victory = false
@possible_questions = [q1, q2, q3, q4]#, q5, q6, q7, q8, q9, q10]
@answered_questions = ""

# Intro section
def intro
	system(clear)
	puts
	puts "Welcome to 'Who Wants To Be A Millionaire?'"
	puts
	puts "You will have 4 multiple-choice questions to answer."
	puts "Please select A, B, C, or D.  You will be allowed one lifeline, the 50/50."
end

# Questions section
def q1
	puts
  puts "Which of these is a village in Somerset, England?"
  puts
  puts "A) Brie"
	puts "B) Emmental"
	puts "C) Gorgonzola"
	puts "D) Cheddar"
	@answer = "D"
	@lifeline = "A"
	@answered_questions.push("q1")
end
def q2
	puts
	puts "What name is given to a person who turns animal skins into leather?"
	puts
	puts "A) Shilling"
	puts "B) Quid"
	puts "C) Tanner"
	puts "D) Florin"
	@answer = "C"
	@lifeline = "D"
	@answered_questions.push("q2")
end
def q3
	puts
	puts "Which TV programme would you most expect to see Jeremy Clarkson presenting?"
	puts
	puts "A) Newsnight"
	puts "B) Ground Force"
	puts "C) Top Gear"
	puts "D) Antiques Roadshow"
	@answer = "C"
	@lifeline= "D"
	@answered_questions.push("q3")
end
def q4
	puts
	puts "Which of these is a tool for shaping and smoothing wood?"
	puts
	puts "A) Train"
	puts "B) Plane"
	puts "C) Car"
	puts "D) Bike"
	@answer = "B"
	@lifeline= "A"
	@answered_questions.push("q4")
end

# Gameplay section
def UserInput
	puts "Please select your answer"
	puts "A, B, C, D, or L for your lifeline if you haven't already used it."
	@response = gets.chomp.to_s
	if @response.upcase != "A" || "B" || "C" || "D" # check for valid response
		puts "Please select a valid answer"
		userinput
	else
		puts "Is that your final answer? (Y/n)"
		@final = gets.chomp

	end
end

def CheckCorrect
	if @response.upcase == @answer
		
		
	end
end

def pick_question
	question = @possible_questions.sample #randomly select a question
	if @answeredquestions != ""
		1..(@answeredquestions.length -1).each do |check| # check if it's answered already
			if question == check
				pick_question #resets the question selection if the random has been used already
			end
		end
	end
	question.call
end

# main control section
intro
while victory == false
	list_stakes
	pick_question
	user_input
	check_correct
	if @points == 4
		puts "You are a millionaire!"
		victory = true
	end

end