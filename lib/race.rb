require_relative "car"

class Race
	attr_reader :cars, :winner, :loser
	def initialize
		@cars = Array.new()
		2.times do |i|
			@cars.push(Car.new)
			@cars[i].accelerate(1+rand(100))
		end
	end

	def winner
		if @cars[0].speed > @cars[1].speed
			@winner = @cars[0]
		else
			@winner = @cars[1]
		end
	end

	def loser
		if @cars[0].speed > @cars[1].speed
			@loser = @cars[1]
		else
			@loser = @cars[0]
		end
	end
end