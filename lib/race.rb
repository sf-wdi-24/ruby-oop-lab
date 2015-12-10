require_relative "car"

class Race
  # write Race class code here
  def initialize
  	@cars = []
  	car1 = Car.new
  	car1.accelerate(rand(1..100))

  	car2 = Car.new
  	car2.accelerate(rand(1..100))
  	@cars.push(car1)
  	@cars.push(car2)
  end

  def cars
  	@cars
  end

  def winner
  	if @cars[0].speed > @cars[1].speed
  		winner = @cars[0]
  	else
  		winner = @cars[1]
  	end
  end

  def loser
  	if @cars[0].speed > @cars[1].speed
  		loser = @cars[1]
  	else
  		loser = @cars[0]
  	end
  end
end