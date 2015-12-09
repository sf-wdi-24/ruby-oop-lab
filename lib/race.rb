require_relative "car"

class Race
	attr_reader :cars
	def initialize
		car_1 = Car.new
		car_2 = Car.new
		@cars = [car_1, car_2]
		cars[0].accelerate(rand(0..100)+1)
		cars[1].accelerate(rand(0..100)+1)
	end

	def winner
		if (cars[0].speed > cars[1].speed)
			cars[0] 
		else
			cars[1]
		end
	end

	def loser
		if (cars[0].speed > cars[1].speed)
			cars[1]
		else 
			cars[0]
		end
	end
end