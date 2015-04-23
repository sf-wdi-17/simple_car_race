class Race
	attr_reader :cars

	def initialize
		@cars = []

		@cars << Car.new
		@cars << Car.new

		@cars.first.accelerate(rand * 100)
		@cars.last.accelerate(rand * 100)
	end

	def winner
		@cars.sort_by { |c| c.speed }.last
	end

	def loser
		@cars.sort_by { |c| c.speed }.first
	end
end
