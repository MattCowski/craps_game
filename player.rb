require_relative 'dice'

class Player
	def initialize(name)
		@name = name
	end
	attr_accessor :name

end



if __FILE__ == $0
	player1 = Player.new('Bob')
	puts player1.name
end
