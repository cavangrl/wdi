class Zoo

	attr_accessor :exhibits
	attr_accessor :address

	def initialize
		@exhibits = []
	end

	def add_animal(animal)
		@exhibits << animal
	end
end


class Animal
  attr_accessor :legs

  def speak
  	puts "I am an animal"
  end

end

class Dog < Animal
  def speak
    # super
    puts "WOOF"
  end
end
