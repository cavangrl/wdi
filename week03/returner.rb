def returner
	a = 100
	b = 200
	c = 300
	return a, b, c
end

value = returner
for number in value
	puts number * number
end