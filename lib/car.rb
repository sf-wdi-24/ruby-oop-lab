class Car

	attr_reader :speed
	
	def initialize
		@speed = 0
	end

	def accelerate(accel)
		@speed=speed+accel
	end

end