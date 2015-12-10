class Car
	attr_accessor :speed
  # write Car class code here
	def initialize
  	@speed = 0
  end

  def accelerate(speed)
  	@speed += speed
  end

end

