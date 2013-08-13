require_relative 'player'

class Die
	def initialize(sides, throws)
		@throws = throws
		@sides = sides
	end

	attr_accessor :sides

	def total
		total = 0
		@throws.times  {total += rand(1..@sides)  }
		total
	end
end


if __FILE__ == $0
	die = Die.new(6, 5)
	puts die.total
end

	

