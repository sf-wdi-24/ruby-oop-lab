require_relative "car"

class Race

  def initialize
  	@cars = [Car.new,Car.new]
  	@cars[0].accelerate(Random.rand(100))
  	@cars[1].accelerate(Random.rand(100))
  	@cars.sort_by {|car| car.speed}
  end

  def cars
  	@cars
  end

  def winner
  	@cars[0]
  end

  def loser
  	@cars[1]
  end

end