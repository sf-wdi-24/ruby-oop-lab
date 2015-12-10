require_relative "car"

class Race
  attr_reader :cars
  def initialize
    @cars = [Car.new, Car.new]
    @cars[0].accelerate(1+rand(100))
    @cars[1].accelerate(1+rand(100))
  end

  def winner
    if cars[0].speed > cars[1].speed
      p cars[0]
    else
      p cars[1]
    end
  end

  def loser
    if cars[0].speed < cars[1].speed
      p cars[0]
    else
      p cars[1]
    end
  end
end
