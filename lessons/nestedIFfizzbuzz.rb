def fizzbuzz
	1.upto(100) do |number|
		if number % 15 == 0
			puts "fizzbuzz"
		else
			if number % 5 == 0
				puts "buzz"
			else
				if number % 3 == 0
					puts "fizz"
				else
					puts number
				end
			end
		end
	end
end
fizzbuzz