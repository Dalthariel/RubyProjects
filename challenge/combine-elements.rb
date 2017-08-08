def gargling
	gargle = ""
	# string 1
	x = ["Punch Squat-Thrust", "John McLargeHuge", "Applekirk Rosenbaum", "A barrel of fish", "500 pound gorilla"]
	# string 2
	y = ["bob", "toad", "pancake", "flugelhorn", "hamstring"]
	gargle = x.zip(y).flatten
	puts gargle
end
gargling


def sandwich
	lollapalooza = 0
	party = [3, 6, 9, 12, 15]
	music = [2, 4, 6, 8, 10]
	lollapalooza = party.zip(music).flatten.compact
	print lollapalooza
end
sandwich

