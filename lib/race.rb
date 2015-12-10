require_relative "car"

class Race
def initialize 
	@cars = [Car.new,Car.new]
	@cars[0].accelerate(rand(101))
	@cars[1].accelerate(rand(101))
end
def cars 
	@cars
end
def winner
if @cars[0].speed < @cars[1].speed
	p @cars[1]
else
	p @cars[0]
end
end
def loser 
	if @cars[0].speed < @cars[1].speed
	p @cars[0]
else
	p @cars[1]
end
end
end