# only grab the even integers

puts (1..10).to_a.select { |x| x.even?	}

puts (1..10).to_a.select(&:even?)

(1..10).to_a.select do |x|
	if x.even?
		puts x
	end
end

# all three are the same

# given an array of strings return only the words over 5 letters
arr = %w(The quick brown fox jumped over the lazy dog) # converts each word into a value in an array
p arr.select { |x| x.length > 4 }

puts %w(h i j k l m n o p q r s t u v w x y z).select { |v| v=~ /[aeiou]/ } # pulls out all the vowels