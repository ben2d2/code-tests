def get_odd_numbers_below(max)
	fibonacci_number, previous_number = [0, 1]

	odd_numbers = []

	while fibonacci_number <= max
		fibonacci_number, previous_number = previous_number, fibonacci_number + previous_number
		if fibonacci_number % 2 != 0
			odd_numbers << fibonacci_number
		end
	end

	odd_numbers
end

puts get_odd_numbers_below(10000).sum