require_relative "car"

class Race
	def initialize
		@cars = [Car.new, Car.new]
		random = Random.new
		@cars[0].accelerate(random.rand(100))
		@cars[0].accelerate(random.rand(100))
	end
end