# say hello
def hello_world(name)
	puts "Hello #{name}!"
end

def say_hello(first_name, last_name)
	puts "Hello #{first_name.upcase}. Your last name is #{last_name}."
	# Your last name is 6 characters long
	puts 'Your last name is #{last_name.length} characters long.'
end

# return the sum of two numbers as fixnum
def add_numbers(number1, number2)
	number1 + number2
end

# hello_world("Brian")
# hello_world "Matthew"
say_hello("Brian", "Fountain")

# response = hello_world "Brian"

value = add_numbers(4, 5)
# puts "The value is #{value}."
# causes an error
# puts "The response is" + response
# gets handled by ruby
# puts "The response is #{response}."