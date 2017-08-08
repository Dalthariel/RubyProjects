# Teenage chatbot challenge written by David.Hamaker@gmail.com
# Bob is a lackadaisical teenager.  In conversation, his responses are very limited.
# Bob answers "Sure." if you ask a question.
# Bob answers "Whoa, chill out!" if you yell at him.
# Bob says "Fine. Be that way!" if you address him without actually saying anything.
# Bob answers "Whatever." to anything else.

@talk = ""
@quit = false

puts "This is Bob.  He's a teenager. I don't recommend talking to him."
puts "Type the word 'leave' to walk away."

def conversation
	puts "What will you say?"
	@talk = gets.chomp.downcase
	if @talk == "leave"
		puts "You wisely leave the laconic luggard."
		@quit = true
	elsif @talk.chars.last == "?"
		puts "Sure."
	elsif @talk.chars.last == "!"
		puts "Whoa, chill out!"
	elsif (@talk.chars.first(3).join == "bob" and @talk.length == 3) or (@talk.chars.first(4).join == "bob." and @talk.length == 4)
		puts "Fine, be that way!"
	else
		puts "Whatever."
	end
end

while @quit == false do
	conversation
end

