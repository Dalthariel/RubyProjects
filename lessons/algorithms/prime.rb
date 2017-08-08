require "prime"

prime_array = Prime.take_while { |p| p < 2_000_000 } # array of all primes between 1 and 2 million

updated_array = prime_array.inject { |sum, x| sum + x } # adding all the prime numbers between 1 and 2 million

p updated_array

# 142,913,828,922