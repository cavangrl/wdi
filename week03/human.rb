#human.rb

class Human

	def initialize
		@arms = 2
		@legs = 2
		@heads = 1

		puts "Human created: arms: #{@arms}, 
		leg: #{@legs}, heads: #{@heads}."
	end

	def name=(name)
		@name = name
	end

	def name
		@name
	end

end