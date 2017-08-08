# fizzbuzz challenge written by David.Hamaker@gmail.com
def isprime n
	# starting with 2 because testing for a prime means you don't want to test division by 1
	2.upto(Math.sqrt(n)) do |x|
	# testing up to the square root of the number because going past there is excessive
		if n % x == 0
	# n is the number being called from the program
	# x is the number we're dividing by, counting from 2 up to the square root of the number
			return false # this means the number is not prime
		else
			return true # this means the number is prime
		end 
	end
end
def fizzbuzz
	puts "How high do you want to FizzBuzzPrime?"
	count = gets.chomp.to_i
	1.upto(count) do |number|
		if number % 15 == 0 # this means the number is divisible by 15, which is 3 times 5
			puts "fizzbuzz"
		elsif number % 5 == 0 # this means the number is divisible by 5
			puts "buzz"
		elsif number % 3 == 0 # this means the number is divisible by 3
			puts "fizz"
		elsif isprime(number) # this checks the number to see if it's prime using the function above
			puts "prime"
		else
			puts number # this will print out the number which is not prime or divisible by 3 or 5
		end
	end
end
fizzbuzz