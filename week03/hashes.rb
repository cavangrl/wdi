#hashes.rb
#:name => "Brian"
my_people = [{name: "Brian", gender: "male", location: "Brooklyn"}, 
			 {name: "David", gender: "male", location: "Manhattan"}, 
			 {name: "Carly", gender: "female", location: "Manhattan"}]

# using the each method
#write a method that says "This is Brian. Brian is from Brooklyn"
# for each person

def greeting(people)
  people.each do |person|
  	puts "This is #{person[:name]}."
  	puts "#{person[:name]} is from #{person[:location]}."
  end
end

def greeting_two(people)
	for person in people
		puts "This is #{person[:name]}."
  		puts "#{person[:name]} is from #{person[:location]}."
	end
end

greeting_two(my_people)