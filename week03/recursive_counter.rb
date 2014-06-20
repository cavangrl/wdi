#recursive_counter.rb

def recursive_counter(number)
	puts number
	number -= 1
	# recursive_counter(number) unless number < 1
	# recursive_counter(number) unless number == 0
	recursive_counter(number) if number > 0
end

def wrong_counter
	number = 100
	# ???
	wrong_counter
end

puts "Please enter a countdown number"
my_number = gets.to_i

recursive_counter(my_number)