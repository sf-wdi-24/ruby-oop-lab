class Car
  attr_reader :speed

  def initialize
    @speed = 0
  end

  def accelerate(mph)
    return @speed += mph
  end

end

car = Car.new
