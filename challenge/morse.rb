# Challenge: Create a Morse Code translator
# Written by David.Hamaker@gmail.com
def matrix
	@translation_matrix = {
		"A" => "•− ",
		"B" => "−••• ",
		"C" => "−•−• ", 
		"D" => "−•• ",
		"E" => "• ",
		"F" => "••−• ",
		"G" => "−−• ",
		"H" => "•••• ",
		"I" => "•• ",
		"J" => "•−−− ",
		"K" => "−•− ",
		"L" => "•−•• ",
		"M" => "−− ",
		"N" => "−• ",
		"O" => "--- ",
		"P" => "•--• ",
		"Q" => "--•- ",
		"R" => "•-• ",
		"S" => "••• ",
		"T" => "- ",
		"U" => "••- ",
		"V" => "•••- ",
		"W" => "•-- ",
		"X" => "-••- ",
		"Y" => "-•-- ",
		"Z" => "--•• ",
		"0" => "----- ",
		"1" => "•---- ",
		"2" => "••--- ",
		"3" => "•••-- ",
		"4" => "••••- ",
		"5" => "••••• ",
		"6" => "-•••• ",
		"7" => "--••• ",
		"8" => "---•• ",
		"9" => "----• ",
		"." => "•-•-•- ",
		"," => "--••-- ",
		":" => "---••• ",
		"?" => "••--•• ",
		"'" => "•----• ",
		"-" => "-••••- ",
		"/" => "-••-• ",
		"(" => "−•−−•− ",
		")" => "−•−−•− ",
		"@" => "•--•-• ",
		"=" => "-•••- ",
		'"' => "•-••-•"
	}
end

def translate(sentence)
	
	intermediary_array = sentence.chars
	intermediary_array.each do |x|
		@translation_matrix.key
	
	end
end

puts "Write out a sentence to translate into Morse Code."
sentence = gets.chomp.upcase
puts translate(sentence)