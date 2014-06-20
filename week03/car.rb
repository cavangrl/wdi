class Car

	# attr_reader :engine
	# attr_writer :engine
	attr_accessor :engine

	def initialize
		puts "Honk! Honk!"
	end

	# def engine=(engine)
	# 	@engine = engine
	# end

	# def engine
	# 	@engine
	# end

	def turn_on_engine
		puts "The engine is on."
	end

	def self.traffic_jam
		puts "Everyone is stuck!"
	end
end