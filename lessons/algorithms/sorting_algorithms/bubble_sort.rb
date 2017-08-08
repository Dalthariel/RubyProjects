def bubble_sort(array)
	n = array.length

	loop do
		swapped = false
		(n-1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
		break if not swapped
	end
	array
end

a = [17, 23, 42, 1776, 4, 123, 23948075423, 3, 1, 0, -13, 400]
bubble_sort(a)
puts a