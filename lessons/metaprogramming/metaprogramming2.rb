class String
	def censor(bad_word)
		self.gsub! "#{bad_word}", "CENSORED"  # gsub is a substitution method
	end

	def num_of_chars
		size
	end
end

# these definitions add to the class, they don't overwrite the entire class

p "The bacon was in trouble with the king's bacon".censor("bacon")
p "The bacon was in trouble with the king's bacon".num_of_chars