# Mad Libs challenge written by David.Hamaker@gmail.com
# Level one: write a mad lib that pulls from a separate file that has a list of nouns, verbs, adjectives, pronouns, etc.
# Level two: Get user input that writes into those files from your main file.
# Level Two Plus: Make them all in different files, making them as modules. Figure out how to bring them in and implement the modules into your main Mad Lib program.
puts "It's Mad Libs!"

filedump = []
3.times do
	puts "Give me a noun"
	noun = gets.chomp
	filedump << noun
end
File.open("nouns.txt", "w") {|f| f.write(filedump) }

# filedump = []
# 3.times do
# 	puts "Give me a pronoun"
# 	pronoun = gets.chomp
# 	filedump << pronoun
# end
# File.open("pronouns.txt", "w") {|f| f.write(filedump) }

# filedump = []
# 3.times do
# 	puts "Give me an adjective"
# 	adjective = gets.chomp
# 	filedump << adjective
# end
# File.open("adjectives.txt", "w") {|f| f.write(filedump) }

# filedump = []
# 3.times do
# 	puts "Give me a verb"
# 	verb = gets.chomp
# 	filedump << verb
# end
# File.open("verbs.txt", "w") {|f| f.write(filedump) }

# filedump = []
# 2.times do
# 	puts "Give me the name of a person in the room"
# 	person = gets.chomp
# 	filedump << person
# end
# File.open("people.txt", "w") {|f| f.write(filedump) }

File.open("nouns.txt", "r") {|f| puts f}