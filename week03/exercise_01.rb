#exercise_01.rb

# returns {toyota: “Prius”, tesla: “Model S”}
def hasher(array1, array2)
	my_hash = {}
	array1.each.with_index do |symbol, index|
		my_hash[symbol] = array2[index]
		# my_hash[:toyota] = array2["Prius"]
	end
	my_hash
end

def hasher2(array1, array2)
	puts Hash[array1.zip(array2)]
end

# array1.each {|symbol| my_hash[symbol] = array2[index]; index += 1}

def hasher3(array1, array2)
	my_hash = {}
	my_counter = 0
	array1.each do |symbol|
		my_hash[symbol] = array2[my_counter]
		my_counter += 1
	end
	my_hash
end

def hasher4(array1, array2)
	my_hash = {}
	my_counter = 0
	for symbol in array1
		my_hash[symbol] = array2[my_counter]
		my_counter += 1
	end
	my_hash
end


# def hasher_two(array1, array2)
# 	hash = {}
# 	array1.each.with_index do |symbol, index|
# 		hash[symbol] = array2[index]
# 	end
# 	hash
# end

result = hasher([:toyota, :tesla, :buick], ["Prius", "Model S"])
puts result