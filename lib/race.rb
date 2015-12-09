require_relative "car"

class Race < Car
  attr_reader :cars

  def initialize
    @cars = [Car.new, Car.new]
    random_mph = Random.new
    @cars[0].accelerate(random_mph.rand(100))
    @cars[1].accelerate(random_mph.rand(100))
  end

  def winner
    if @cars[0].speed > @cars[1].speed
      return @cars[0]
    else
      return @cars[1]
    end
  end

  def loser 
    if @cars[0].speed < @cars[1].speed
      return @cars[0]
    else
      return @cars[1]
    end
  end

end

race = Race.new
p race.cars.length
p race.winner
p race.loser
p race
