# age_checker.rb

def age_checker(age)
	puts "* " * 8
	puts "Your age is #{age}."
	# if the age is 21 or older say 'welcome...'
	if age > 21
		puts "Welcome! Have a good time."
	# if the age is less than 21 say 'too young...'
	elsif age == 21
		puts "Welcome! Enjoy a free drink at the bar."
	else
		puts "Sorry. Come back when you are older."
	end
	puts "* " * 8
	puts
end

age_checker(21)
age_checker(18)
age_checker(67)