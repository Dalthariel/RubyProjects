# run these in IRB in the terminal to see what they return


["1", "23.0", "0", "4"].map { |x| x.to_i }
# is the same as 
["1", "23.0", "0", "4"].map(&:.to_i }

("a".."g").to_a.map {|i| i * 2}

Hash[[1, 2.1, 3.33, 0.9].map {|x| [x,x.to_i]}] # to_i truncates the decimals

Hash[%w(A dynamic open source programming language).map {|x| [x,x.length]}]

{:a => "foo", :b => "bar", :c => "pants"}.map{|a, b, c| "#{a}=#{b}"}.join('&')

{:a => "foo", :b => "bar", :lat => "120.343", :long => "33.212"}.map{|a, b| "#{a}=#{b}"}.join('&')

