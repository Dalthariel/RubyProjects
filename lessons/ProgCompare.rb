# Program Comparator
# The goal of this program is to read two files
# and see if the content matches,
# thus to tell if varying methods of coding
# will produce the same output.
# This assumes your program is writing output to a file.
# written May 26 2017 by David.Hamaker@gmail.com
# not for use for large files

puts "Filename 1 (please include extension):"
FileName1 = gets.chomp
File1Array = File.read(FileName1)
puts "Filename 2 (please include extension):"
FileName2 = gets.chomp
File2Array = File.read(FileName2)
if File1Array == File2Array
	puts "Your files match"
else
	puts "Sorry, they don't match"
end

# Use the following formatting to write to a file instead of to the screen
#
#
# File.open("out.txt", [your-option-string]) {|f| f.write("write your stuff here") }
# where your options are:
# 
# r - Read only. The file must exist.
# w - Create an empty file for writing.
# a - Append to a file.The file is created if it does not exist.
# r+ - Open a file for update both reading and writing. The file must exist.
# w+ - Create an empty file for both reading and writing.
# a+ - Open a file for reading and appending. The file is created if it does not exist.
#
#
#  These directions were found at https://stackoverflow.com/questions/7911669/how-to-create-a-file-in-ruby/7915881#7915881
#
#