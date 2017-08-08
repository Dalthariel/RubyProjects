# if all the numbers from 1 to 1000 inclusive were written out in words, how many characters would be used?

require 'humanize'
no_space_array, total = [], 0
(1..1000).map(&:humanize).each { |word| no_space_array << word.delete(" ").delete("-")}
no_space_array.each { |element| total += element.length }
p total