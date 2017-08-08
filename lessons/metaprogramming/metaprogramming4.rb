# class Author
# 	define_method("some_method") do
# 		puts "Some details"
# 	end
# end

class Author
	# def fiction_details(arg)
	# 	puts "Fiction"
	# 	puts arg
	# 	puts "I like swords"
	# end
	# def coding_details(arg)
	# 	puts "Coding"
	# 	puts arg
	# 	puts "I like syntax"
	# end
	# def history_details(arg)
	# 	puts "History"
	# 	puts arg
	# 	puts "I like beheadings"
	# end

	# define_method("some_method") do
	# 	puts "Some details"
	# end

	genres = %w(fiction coding history)
	genres.each do |genre|
		define_method("#{genre}_details") do |arg|
			puts "Genre: #{genre}"
			puts arg
			puts genre.object_id
		end
	end 
end

author = Author.new
author.coding_details("Cal Newport")
author.fiction_details("Ayn Rand")
p author.respond_to?(:coding_details)

p author.respond_to?(:summary)