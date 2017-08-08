# price of gold = 1209.55 per troy ounce
# one pound of gold is 14.583333 troy ounces
Gold_oz_price = 1211.80
Oz_per_pound = 14.5833333333

price_per_pound = Gold_oz_price * Oz_per_pound
puts "#{price_per_pound} per pound"
puts "How many dollars are you spending on gold?"
dollars = gets.chomp.to_i
x = dollars/price_per_pound
puts "$#{dollars} is #{x} pounds"