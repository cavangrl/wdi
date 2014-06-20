#loops.rb

start_number = 0

while start_number < 5
	puts "The number is #{start_number}."
	start_number += 1
	# start_number = start_number + 1
end

# 1.upto(4) {|number| puts "It's number #{number}!"}

# this does the same thing as above
# 1.upto(4) do |number| 
# 	puts "It's number #{number}!"
# end

# 10.downto(1) do |number| 
# 	puts "#{number}!"
# end
# puts "blastoff!!!".upcase

# for number in (0...4)
# 	puts "The number is #{number}"
# end

# for my_letter in ("a"..."z")
# 	puts "The letter is #{my_letter}."
# end
