class Car
	attr_reader :speed
	def initialize
		# puts "vroom vroom... new car"
		@speed = 0
	end
	def accelerate(speed_change)
		# puts "speeding up"
		@speed = speed + speed_change
	end
end