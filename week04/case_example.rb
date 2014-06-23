
def lucky_number(number)
	case number
	when 1..6
	  "Small numbers are the best"
	when 7
	  "That's a lucky number!"
	when 12, 42
	  "That number is quite special."  
	else
	  "You gave me #{number} -- You are mysterious."
	end
end

puts "please tell me your favorite number" 
my_number = gets.to_i
puts lucky_number(my_number)