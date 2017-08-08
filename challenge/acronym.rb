# Acronym challenge written by David.Hamaker@gmail.com
# Accept sentence input from the user
# return a capitalized acronym of the sentence
# part 2: remove extraneous words like the, of, etc.
#
sentence = ""
midway_array = []
acronym = ""
puts "please enter your sentence"
sentence = gets.chomp.upcase
midway_array = sentence.split

#version written by Ian
# puts acronym

# def acro_convert  
#   @elements_of = @sentence.split
#   @acronym = []

#   @elements_of.each do |x|
#     if x == "a" || x == "the" || x == "of" || x == "and" || x == "to"
#     else
#       @acronym << x.to_s.chars.first.upcase
#     end
#   end
# end

# def reverse
#   puts @final.reverse
# end

# puts "Please type out a sentence:"
# @sentence = gets.chomp.downcase
# acro_convert
# @final = @acronym.join(".")
# puts "Your acronym: #{@final}"
# puts "Would you like to reverse it?"
# choice = gets.chomp.downcase
#   if choice == "y" || choice == "yes"
#     reverse
#     puts "There ya go!"
#   else
#     "Ok, all done then!"
#   end