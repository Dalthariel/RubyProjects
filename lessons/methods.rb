def second_baseball_team_list
	x = 15
	return ["Mets", "Padres", "Hockey is better"] if x == 10
	["Giants", "Dodgers", "Yankees"]
end
puts second_baseball_team_list

class Invoice
	# Class method
	def self.print_out
		puts "Printed out invoice"
	end

	# Instance method
	def convert_to_pdf
		puts "Converted to PDF"
	end
end

i = Invoice.new # the .new marks it as a method not a variable
i.convert_to_pdf

