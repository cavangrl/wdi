#adventure.rb

class Character

	attr_accessor :health
	attr_accessor :name

	def initialize
		@health = 100
		puts "new character created"
		puts "health is #{@health}"
	end
end

class Mage < Character

	def initialize
		super
		@health -= 10
		puts "mages are weak, health is now #{@health}"
	end
end

def get_name
	puts "welcome to the game"
	puts "what is your name"
	name = gets.chomp
end

def play_game
	name = get_name
	puts "Welcome #{name}. You adventure awaits."
	character = choose_character
	puts "You have #{character.lives} lives. Use them wisely."
	character.name = name
end

play_game


