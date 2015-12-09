require_relative "car"

class Race
	attr_reader :cars
	def initialize
		@cars = [Car.new, Car.new]
		@cars[0].accelerate(Random.rand(0..100))
		@cars[1].accelerate(Random.rand(0..100))
	end

	def winner
		if cars[0].speed > cars[1].speed
			return cars[0]
		else
			return cars[1]
		end
	end

	def loser
		if cars[0].speed > cars[1].speed
			return cars[1]
		else
			return cars[0]
		end
	end

end