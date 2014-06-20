#fizzbuzz.rb

def fizzbuzz(limit)
	1.upto(limit) do |number|
		# if number is divisible by 3 puts 'fizz'
		if number % 15 == 0
			puts 'fizzbuzz'
		# if number is divisible by 5 puts 'buzz'
		elsif number % 5 == 0
			puts 'buzz'
		# if number is divisible by 3 and 5 puts 'fizzbuzz'
		elsif number % 3 == 0 
			puts 'fizz'
		# else puts number
		else
			puts number
		end
	end
end

fizzbuzz(16)